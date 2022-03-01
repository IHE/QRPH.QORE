Instance:   example-IHE-QORE-CPR-1
InstanceOf: Measure
Title: "Example of CPR-1 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-1"
* status = #unknown
* title = "Bystander Chest Compressions"
* definition = "Percentage of OHCA cases where a bystander performed chest compressions on a patient"
* rationale = "Early chest compressions increase the potential for resuscitation"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of patients where Bystander CPR was being performed on arrival of first rescuer"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: From PCS Composition.CardiacArrestEvent where observation code = 67507-4 with value = $loinc#LA9277-0, NEMSISeArrest.20

Instance:   example-IHE-QORE-CPR-2
InstanceOf: Measure
Title: "Example of CPR-2 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-2"
* status = #unknown
* title = "Dispatch coached chest compressions"
* definition = "Percentage of OHCA cases where a dispatcher or call taker coached a bystander in performing chest compressions"
* rationale = "Early chest compressions increase the potential for resuscitation. Emergency Medical Dispatchers may provide over the phone CPR coaching to bystanders with the patient"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of patients where Dispatch Coached CPR Performed"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: Mapping OPEN ISSUE - NEMSIS Does not have a way to hold or report this information, if additional observation were to be made for this element it should be an observation on the service request 

Instance:   example-IHE-QORE-CPR-3
InstanceOf: Measure
Title: "Example of CPR-3 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-3"
* status = #unknown
* title = "Time from PSAP to initial compressions"
* definition = "Elapsed time from PSAP notification of an OHCA and the first compression performed by a rescuer."
* rationale = "Early chest compressions increase the potential for resuscitation."
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Cumulative time from PSAP notification to first rescuer initiating compressions"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: Paramedicine care summary Encounter status history (subtype) period and the timestamp for compressions(procedures performed)


Instance:   example-IHE-QORE-CPR-4
InstanceOf: Measure
Title: "Example of CPR-4 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-4"
* status = #unknown
* title = "Time to initial shock"
* definition = "Elapsed time from arrival of a rescuer equipped with a defibrillator to the time when the first shock is delivered"
* rationale = "Patients with a shockable rhythm require early defibrillation to enable resuscitation"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Cumulative time from first rescuer with a defibrillator arrival at the call address to delivery of the first shock"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: Paramedicine care summary Encounter status history (subtype) period and the timestamp for first shock (Device use statement or Procedure)


Instance:   example-IHE-QORE-CPR-5
InstanceOf: Measure
Title: "Example of CPR-5 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-5"
* status = #unknown
* title = "Average chest compression rate"
* definition = "A measure of the average chest compression rate"
* rationale = "Chest compressions of reliable rate and depth delivered with limited interruption increase potential for resuscitation."
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Average compression rate"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: CPR Procedure observations  (Device use statement?) 


Instance:   example-IHE-QORE-CPR-6
InstanceOf: Measure
Title: "Example of CPR-6 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-6"
* status = #unknown
* title = "Average chest compression depth"
* definition = "A measure of the average chest compression depth"
* rationale = "Chest compressions of reliable rate and depth delivered with limited interruption increase potential for resuscitation."
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Average compression depth"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: CPR Procedure observations (Device use statement?)


Instance:   example-IHE-QORE-CPR-7
InstanceOf: Measure
Title: "Example of CPR-7 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-7"
* status = #unknown
* title = "Return of Spontaneous Circulation (ROSC)during EMS care"
* definition = "ROSC at handoff of care transition to the Emergency Department"
* rationale = "ROSC at handoff is surrogate for survival in EMS systems unable to obtain hospital discharge data"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of patients with ROSC >30 seconds at ED handoff"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: CPR2 = ROSC at ED, in ED discharge summary, Paramedicine care summary e arrest observation 


Instance:   example-IHE-QORE-CPR-8
InstanceOf: Measure
Title: "Example of CPR-8 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-8"
* status = #unknown
* title = "Survival of OHCA with all presenting rhythms"
* definition = "A measurement of survival to hospital discharge from OHCA with all presenting rhythms"
* rationale = "Survival to discharge is the broadest definition of a positive patient outcome"
* type = #outcome
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of patients discharged from the hospital alive."
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs in the month"
//Note: CPR8 = Discharge DIsposition from Hospital or ED = all values except 20	Deceased/Expired (or did not recover - Religious Non Medical Health Care Patient)


Instance:   example-IHE-QORE-CPR-9
InstanceOf: Measure
Title: "Example of CPR-9 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-9"
* status = #unknown
* title = "Survival of OHCA when witnessed by bystander"
* definition = "Survival among patients whose cardiac arrest was witnessed by a bystander, and were found in a shockable rhythm regardless of whether they received bystander intervention"
* rationale = "Utstein is a narrower but more focused definition based on the patient population with the highest potential for resuscitation: witnessed with a VF rhythm."
* type = #outcome
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of patients discharged from the hospital alive"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All witnessed Medical OCHAs with a presenting VF rhythm in the month"
//Note:


Instance:   example-IHE-QORE-CPR-10
InstanceOf: Measure
Title: "Example of CPR-10 measure"
Description:      "holding typical values for a Cardiac measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "CPR-10"
* status = #unknown
* title = "TBD"
* definition = "Patients discharged from hospital with moderate to good cerebral performance as displayed in a Cerebral Performance Criteria Score"
* rationale = "The ultimate positive outcome for a patient is to be resuscitated with limited or no neurological deficit"
* type = #outcome
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of patients assessed as a CPC 1 or 2"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "All Medical OCHAs survival to hospital discharge in the month"
//Note: is the CPC evlauation is an observation = from questionair, vital sign observation, SHould come from discharge studies 