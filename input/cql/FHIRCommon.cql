library FHIRCommon version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "ConditionClinicalStatusCodes": 'http://terminology.hl7.org/CodeSystem/condition-clinical'
codesystem "AllergyIntoleranceClinicalStatusCodes": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical'
codesystem "AllergyIntoleranceVerificationStatusCodes": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification'
codesystem "Diagnosis Role": 'http://terminology.hl7.org/CodeSystem/diagnosis-role'
codesystem "LOINC": 'http://loinc.org'
codesystem "MedicationRequestCategory": 'http://terminology.hl7.org/CodeSystem/medicationrequest-category'
codesystem "ConditionVerificationStatusCodes": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'
codesystem "SNOMED-CT": 'http://snomed.info/sct' version 'http://snomed.info/sct/900000000000207008'
codesystem "RoleCode": 'http://terminology.hl7.org/fhir/v3-RoleCode'

code "active": 'active' from "ConditionClinicalStatusCodes" display 'active'
code "allergy-active": 'active' from "AllergyIntoleranceClinicalStatusCodes" display 'allergy-active'
code "allergy-confirmed": 'confirmed' from "AllergyIntoleranceVerificationStatusCodes" display 'allergy-confirmed'
code "allergy-inactive": 'inactive' from "AllergyIntoleranceClinicalStatusCodes" display 'allergy-inactive'
code "allergy-refuted": 'refuted' from "AllergyIntoleranceVerificationStatusCodes" display 'allergy-refuted'
code "allergy-resolved": 'resolved' from "AllergyIntoleranceClinicalStatusCodes" display 'allergy-resolved'
code "allergy-unconfirmed": 'unconfirmed' from "AllergyIntoleranceVerificationStatusCodes" display 'allergy-unconfirmed'
code "Billing": 'billing' from "Diagnosis Role" display 'Billing'
code "Birthdate": '21112-8' from "LOINC" display 'Birth date'
code "Community": 'community' from "MedicationRequestCategory" display 'Community'
code "confirmed": 'confirmed' from "ConditionVerificationStatusCodes" display 'confirmed'
code "Dead": '419099009' from "SNOMED-CT" display 'Dead'
code "differential": 'differential' from "ConditionVerificationStatusCodes" display 'differential'
code "Discharge": 'discharge' from "MedicationRequestCategory" display 'Discharge'
code "entered-in-error": 'entered-in-error' from "ConditionVerificationStatusCodes" display 'entered-in-error'
code "ER": 'ER' from "RoleCode" display 'Emergency room'
code "ICU": 'ICU' from "RoleCode" display 'Intensive care unit'
code "inactive": 'inactive' from "ConditionClinicalStatusCodes" display 'inactive'
code "provisional": 'provisional' from "ConditionVerificationStatusCodes" display 'provisional'
code "recurrence": 'recurrence' from "ConditionClinicalStatusCodes" display 'recurrence'
code "refuted": 'refuted' from "ConditionVerificationStatusCodes" display 'refuted'
code "relapse": 'relapse' from "ConditionClinicalStatusCodes" display 'relapse'
code "remission": 'remission' from "ConditionClinicalStatusCodes" display 'remission'
code "resolved": 'resolved' from "ConditionClinicalStatusCodes" display 'resolved'
code "unconfirmed": 'unconfirmed' from "ConditionVerificationStatusCodes" display 'unconfirmed'

context Patient
