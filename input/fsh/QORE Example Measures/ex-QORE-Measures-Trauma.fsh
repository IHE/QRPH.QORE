Instance:   example-IHE-QORE-Trauma-01
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Trauma-01"
* status = #unknown
* title = "Pain assessment of injured patients"
* definition = "Recognizing that pain is undertreated in injured patients, it is important to assess whether a patient is experiencing pain"
* rationale = "Recognizing that pain is undertreated in injured patients"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients with pain scale value present"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with injury originating from a 911 request"
//Note: Vital Sign


Instance:   example-IHE-QORE-Trauma-02
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Trauma-02"
* status = #unknown
* title = "Pain re-assessment of injured patients"
* definition = "Recognizing that pain is undertreated in injured patients, it is important to assess whether a patient is experiencing pain"
* rationale = "Pain control is an important component of prehospital care"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients with two or more pain scale values present"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with injury and pain scale value >0 originating from a 911 request"
//Note: vital sign


Instance:   example-IHE-QORE-Trauma-03
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Trauma-03"
* status = #unknown
* title = "Effectiveness of pain management for injured patients"
* definition = "Of injured patients reassessed, how many had less pain"
* rationale = "Improving pain management is an important aspect of quality prehospital care"
* type = #outcome
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients with a final pain value less than the maximum"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with injury and pain scale value >0 originating from a 911 request"
//Note: vital sign


Instance:   example-IHE-QORE-Trauma-04
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Trauma-04"
* status = #unknown
* title = "Trauma patients transported to trauma center"
* definition = "Trauma patients transported to trauma center"
* rationale = "Evidence is strong that Step 1 and Step 2 and Step 3 trauma patients should go to a trauma center"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients transported to a trauma center"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients meeting CDC Step 1 or 2 or 3 criteria originating from a 911 request"
//Note:PCS encounter location (destnation)