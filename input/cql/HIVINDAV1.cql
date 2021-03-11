library HIVINDAV1

/*
ART & Toxicity

WHO Consolidated HIV strategic information guidelines: driving impact through programme monitoring and management. 2020. https://www.who.int/publications/i/item/9789240000735

People living with HIV on ART

MER TX_CURR

Number and percentage of people on ART among all people living with HIV at the end of the reporting period

Numerator: Number of people on ART at the end of the reporting period (programme data). For key populations survey data may be required.

*/

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include AgeRangesFine called AR

codesystem "HIV Codes": 'TBD' // { treatment-outcome, plus TreatmentOutcome codes }

valueset "HIV Treatment Outcome": 'TBD' // loss-to-followup, transferred-out, death-documented, refused-stopped-treatment, on-art

// HIV Treatment Outcome
code "Treatment Outcome": 'treatment-outcome' from "HIV Codes"
code "On ART": 'on-art' from "HIV Codes"

parameter "Measurement Period" Interval<DateTime>

context Patient

// Profile of Observation
  // issued is required
  // effective is captured as a DateTime
  // value is a CodeableConcept from the Treatment Outcome ValueSet

define "Treatment Outcome Observation":
  Last(
    ["Observation": "Treatment Outcome"] O
      where O.status = 'final'
        and O.issued during "Measurement Period"
      sort by issued
  )

define "Treatment Outcome Value":
  "Treatment Outcome Observation".value as CodeableConcept

define "Treatment Outcome Date":
  "Treatment Outcome Observation".effective as dateTime

define "On ART at end of Measurement Period":
  "Treatment Outcome Value" ~ "On ART"

define "Initial Population":
  true

define "Denominator":
  true

define "Numerator":
  "On ART at end of Measurement Period"

/* Stratifier criteria */
define "Age Group": AR."Age Group"

define "Gender": Patient.gender
