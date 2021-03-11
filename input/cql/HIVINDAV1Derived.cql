/*
Example of a possible approach to deriving an implementer-specific implementation of
an indicator that overrides age grouping.

Includes the original indicator, HIVINDAV1, exposes the measure criteria
directly, and then overrides the Age Group stratifier criteria with an
implementation specific age ranges library
*/
library HIVINDAV1Derived  version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

include HIVINDAV1 version '0.1.0'

include AgeRangesImplementerSpecific version '0.1.0' called AR

context Patient

define "Initial Population":  HIVINDAV1."Initial Population"

define "Denominator":  HIVINDAV1."Denominator"

define "Numerator": HIVINDAV1."Numerator"

/* Stratifier criteria */
define "Age Group": AR."Age Group"

define "Gender": Patient.gender
