Instance:   example-IHE_QORE_Trauma-01
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Trauma-01"
* title = "Pain assessment of injured patients"
* definition = "Recognizing that pain is undertreated in injured patients, it is important to assess whether a patient is experiencing pain"
* rationale = "Recognizing that pain is undertreated in injured patients"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Patients with pain scale value present"
* population.code[+] = #denominator
* population.description[=] = "Patients with injury originating from a 911 request"
//Note: Vital Sign


Instance:   example-IHE_QORE_Trauma-02
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Trauma-02"
* title = "Pain re-assessment of injured patients"
* definition = "Recognizing that pain is undertreated in injured patients, it is important to assess whether a patient is experiencing pain"
* rationale = "Pain control is an important component of prehospital care"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Patients with two or more pain scale values present"
* population.code[+] = #denominator
* population.description[=] = "Patients with injury and pain scale value >0 originating from a 911 request"
//Note: vital sign


Instance:   example-IHE_QORE_Trauma-03
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Trauma-03"
* title = "Effectiveness of pain management for injured patients"
* definition = "Of injured patients reassessed, how many had less pain"
* rationale = "Improving pain management is an important aspect of quality prehospital care"
* type = #outcome
* population.code[+] = #numerator
* population.description[=] = "Patients with a final pain value less than the maximum"
* population.code[+] = #denominator
* population.description[=] = "Patients with injury and pain scale value >0 originating from a 911 request"
//Note: vital sign


Instance:   example-IHE_QORE_Trauma-04
InstanceOf: Measure
Title: "Example of a Trauma measure"
Description:      "holding typical values for a Trauma measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Trauma-04"
* title = "Trauma patients transported to trauma center"
* definition = "Trauma patients transported to trauma center"
* rationale = "Evidence is strong that Step 1 and Step 2 and Step 3 trauma patients should go to a trauma center"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Patients transported to a trauma center"
* population.code[+] = #denominator
* population.description[=] = "Patients meeting CDC Step 1 or 2 or 3 criteria originating from a 911 request"
//Note:PCS encounter location (destnation)