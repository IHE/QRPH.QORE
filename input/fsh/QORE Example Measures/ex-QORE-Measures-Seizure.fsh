Instance:   example-IHE_QORE_Seizure-01
InstanceOf: Measure
Title: "Example of a Seizure measure"
Description:      "holding typical values for a Seizure measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Seizure-01"
* title = "Blood Glucose Evaluation"
* definition = "Measure of seizure patients who received an evaluation of their blood glucose"
* rationale = "Blood glucose is an important diagnostic vital sign for determination of the cause of a seizure"
* type = #process
* population.code [+] = #numerator
* population.description [=] = "Patients receiving a blood sugar evaluation"
* population.code [+] = #denominator
* population.description [=] = "Patients with ongoing status seizure activity (also known as status epilepticus, defined as seizing for 5 minutes or more or two or more status seizures in a 5-minute period without regaining consciousness) originating from a 911 request."
//Note: 


Instance:   example-IHE_QORE_Seizure-02
InstanceOf: Measure
Title: "Example of a Seizure measure"
Description:      "holding typical values for a Seizure measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Seizure-02"
* title = "Patient Received Intervention"
* definition = "Measure of patients with ongoing seizure activity for 5 minutes or more or two or more seizures in a 5-minute period without regaining consciousness between them who received intervention (e.g., benzodiazepine) intended to stop the seizure "
* rationale = "Patients experiencing status epilepticus are at risk for hypoxia but with benzodiazepines the seizure may be controlled"
* type = #process
* population.code [+] = #numerator
* population.description [=] = "Patients receiving EMS intervention (e.g., benzodiazepine) aimed at terminating their status seizure"
* population.code [+] = #denominator
* population.description [=] = "Patients with ongoing status seizure activity (also known as status epilepticus, defined as seizing for 5 minutes or more or two or more status seizures in a 5-minute period without regaining consciousness) originating from a 911 request."
//Note:


Instance:   example-IHE_QORE_Seizure-03
InstanceOf: Measure
Title: "Example of a Seizure measure"
Description:      "holding typical values for a Seizure measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "Seizure-03"
* title = "Patients with Terminated Seizures"
* definition = "Measure of patients with ongoing seizure activity for 5 minutes or more or two or more seizures in a 5-minute period without regaining consciousness between them who had seizures that terminated by any means"
* rationale = "N/A"
* type = #outcome
* population.code [+] = #numerator
* population.description [=] = "Patients with prehospital termination of status seizures"
* population.code [+] = #denominator
* population.description [=] = "Patients with ongoing status seizure activity (also known as status epilepticus, defined as seizing for 5 minutes or more or two or more status seizures in a 5-minute period without regaining consciousness) originating from a 911 request"
//Note:

