library AgeRangesImplementerSpecific

using FHIR version '4.0.1'

codesystem "ISO-8601-Derived Periods": 'http://ohie.org/CodeSystem/iso-8601-derived-periods' // { 'P0Y--P1Y', 'P1Y--P5Y', ... }

// Age Groups
code "P0Y--P29Y": 'P0Y--P14Y' from "ISO-8601-Derived Periods" display '< 30 years'
code "P30Y--P9999Y": 'P15Y--P9999Y' from "ISO-8601-Derived Periods" display '30+ years'

parameter "Measurement Period" Interval<DateTime>

context Patient

// Age Group
define "Age Group":
  case
    when AgeInYearsAt(start of "Measurement Period") in Interval[0, 29) then "P0Y--P29Y"
    when AgeInYearsAt(start of "Measurement Period") in Interval[30, null] then "P30Y--P9999Y"
    else null
  end
