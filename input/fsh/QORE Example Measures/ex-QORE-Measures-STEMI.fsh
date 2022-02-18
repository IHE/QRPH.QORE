Instance:   example-IHE_QORE_STEMI-1
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-1"
* title = "Time to first EKG"
* definition = "Measurement of the time that it takes the first arriving 12-lead capable unit to acquire a 12-lead EKG on a patient"
* rationale = "12-Lead is assessment required to identify STEMI candidates   "
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Cumulative time from Arrival on scene of the 1st 12-lead equipped unit to 12-lead assessment"
* population.code[+] = #denominator
* population.description[=] = "Suspected STEMI patients in a month"
//Note: Time of device use (Device use statement) 


Instance:   example-IHE_QORE_STEMI-2
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-2"
* title = "Time to receiving facility pre-notification"
* definition = "Measure of the STEMI patient encounters resulting in pre-notification of the receiving facility"
* rationale = "Early notification of a PCI center reduces First medical contact to reperfusion time"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Number of cases with pre-notification of the PCI receiving facility"
* population.code[+] = #denominator
* population.description[=] = "Suspected STEMI Patients in the Month"
//Note: PCS transport section observation


Instance:   example-IHE_QORE_STEMI-3
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-3"
* title = "Transport to PCI/Thrombolytic capable facilities"
* definition = "Measure of percentage of suspected STEMI patient transports to facilities capable of PCI/thrombolytic administration"
* rationale = "PCI administration is proven to greatly increase odds of survival if administered within 2 hours. If unable to administer PCI within 2 hours, strong evidence supports the use of thrombolytic"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Number of cases transported to a designated receiving facility"
* population.code[+] = #denominator
* population.description[=] = "Suspected STEMI Patients in the Month"
//Note: Destination Location


Instance:   example-IHE_QORE_STEMI-4
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-4"
* title = "Time from First medical contact to receiving facility"
* definition = "Average time from first medical contact to arrival at the receiving facility for patients with a positive 12-lead assessment"
* rationale = "Reducing time from FMC to designated receiving facility may reduce time to reperfusion"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Cumulative time from Arrival on scene of the 1st 12-lead equipped unit to patient arrival at a designated receiving facility."
* population.code[+] = #denominator
* population.description[=] = "Suspected STEMI Patients in the Month"
//Note: PSC encounter status history subtype periods 


Instance:   example-IHE_QORE_STEMI-5
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-5"
* title = "Patients with complete bundle of care"
* definition = "Measure of percentage of patients receiving complete bundle of care"
* rationale = "Reliable delivery of the bundle ensures reliability in evidence-based care delivery"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Total Number of patients receiving STEMI 1 -4 in the month"
* population.code[+] = #denominator
* population.description[=] = "Suspected STEMI Patients in the Month"
//Note:


Instance:   example-IHE_QORE_STEMI-6
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-6"
* title = "EMS correctly identified STEMI"
* definition = "Percentage of patients diagnosed with STEMI on initial presentation to the hospital and who were transported by EMS	"
* rationale = "Early recognition of a STEMI in the field contributes to shortening the time to reperfusion"
* type = #process
* population.code[+] = #numerator
* population.description[=] = "Number of patients identified by EMS as a STEMI"
* population.code[+] = #denominator
* population.description[=] = "All ED diagnosed STEMI patients transported by EMS in the month"
//Note: PCS encounter diagnosis is the same as ed or hospital Encounter diagnosis 


Instance:   example-IHE_QORE_STEMI-7
InstanceOf: Measure
Title: "Example of a STEMI measure"
Description:      "holding typical values for a STEMI measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier = "STEMI-7"
* title = "Time to Reperfusion"
* definition = "Average time from 911 call to reperfusion"
* rationale = "Reducing time to reperfusion improves outcomes "
* type = #outcome
* population.code[+] = #numerator
* population.description[=] = "Cumulative time from 911 call receipt to reperfusion per patient"
* population.code[+] = #denominator
* population.description[=] = "All ED diagnosed STEMI patients transported by EMS in the month"
//Note: