Instance:   EMS-ex-MedicationAdministration-Cardiac-Ambulance-Transport
InstanceOf: MedicationAdministration
Title: "Example of an Cardiac-Ambulance-Transport Medication Administration"
Description:      "holding values for the cardiac patient Medications Administed during Ambulance Transport"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #completed
* id = "fa52fca8-3b70-11ec-8d3d-0242ac130003"
* category = 
* medication[x].medicationCodeableConcept = $7806 "oxygen"
[// Note: RxNorm Refernce]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:53:40-07:00"
* performer.function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer
* performer.actor = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* reasonCode = http://terminology.hl7.org/CodeSystem/reason-medication-given#b
* dosage.route = 
* dose.dose = 
* dose.doseUNits = 

