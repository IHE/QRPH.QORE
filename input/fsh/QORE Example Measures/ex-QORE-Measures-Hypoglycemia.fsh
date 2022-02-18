Instance:   example-IHE_QORE_Hypoglycemia-01
InstanceOf: Measure
Title: "Example of a Hypoglycemia measure"
Description:      "holding typical values for a Hypoglycemia measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Hypoglycemia-01"
* title = "Treatment Administered for Hypoglycemia"
* definition = "Measure of patients who received treatment to correct their hypoglycemia"
* rationale = "Displays the number of patients who received EMS intervention that is intended to correct hypoglycemia"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Patients receiving treatment intended to correct hypoglycemia (food, administration of oral glucose, dextrose, or glucagon)"
* population.code[+] = #denominator
* population.description[=] = "Patients identified as being hypoglycemic with a blood sugar of <60mg/dl originating from a 911 request"
//Note: medication administration or procedure from EMS 


Instance:   example-IHE_QORE_Hypoglycemia-02
InstanceOf: Measure
Title: "Example of a Hypoglycemia measure"
Description:      "holding typical values for a Hypoglycemia measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Hypoglycemia-02"
* title = "Improved Post-Treatment Condition"
* definition = "Improved blood glucose level after treatment"
* rationale = "After treatment is administered and prior to transport or refusal and release, reevaluation of blood sugar is appropriate"
* type = #outcome
* population.code[+] = #numerator
* population.description[=] = "Not defined at this time"
* population.code[+] = #denominator
* population.description[=] = "Not defined at this time"
//Note: observation/vital sign and time stamp

Instance:   example-IHE_QORE_Hypoglycemia-03
InstanceOf: Measure
Title: "Example of a Hypoglycemia measure"
Description:      "holding typical values for a Hypoglycemia measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Hypoglycemia-03"
* title = "Hypoglycemic Patients Treated and not Transported"
* definition = "Number of hypoglycemic patients who were treated by EMS and not transported"
* rationale = "Hypoglycemic patients have a proportionately high occurrence of being treated without being transported"
* type = #outcome
* population.code[+] = #numerator
* population.description[=] = "Not defined at this time"
* population.code[+] = #denominator
* population.description[=] = "Not defined at this time"
//Note: 

Instance:   example-IHE_QORE_Hypoglycemia-04
InstanceOf: Measure
Title: "Example of a Hypoglycemia measure"
Description:      "holding typical values for a Hypoglycemia measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Hypoglycemia-04"
* title = "Repeat Response for Patient Previously Not Transported"
* definition = "The number of patients who were treated but not transported and required an additional response within a 24-hour period"
* rationale = "Responses to patients who were treated and released or refused transport often need more attention for potential feedback to previous EMS responders"
* type = #outcome
* population.code[+] = #numerator
* population.description[=] = "Not defined at this time"
* population.code[+] = #denominator
* population.description[=] = "Not defined at this time"
//Note: 