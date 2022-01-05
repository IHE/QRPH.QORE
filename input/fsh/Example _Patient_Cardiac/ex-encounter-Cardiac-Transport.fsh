Instance:   EMS-ex-patient-Cardiac-Ambulance-Transport
InstanceOf: Encounter
Title: "Example for an EMS cardiact patient Encounter"
Description:      "holding values used for the caridac patient encounter"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* id = "8da1a2e0-38c2-11ec-8d3d-0242ac130003"
* identifier.value = "1234567"
* identifier.type = "Patient Care Report Number" [// Note: complete]
[// Note: Assign an identifier type]
* status = #finished
* statusHistory.status[+] = #planned
* statusHistory.period.start[=] = 2021-10-06T10:49:45-07:00
* statusHistory.status[+] = #arrived
* statusHistory.period[=] = 2021-10-06T10:50:53-07:00
* statusHistory.status[+] = #triaged
* statusHistory.period[=] = 2021-10-06T10:51:38-07:00
* statusHistory.status[+] = #in-progress
* statusHistory.period[=] = 2021-10-06T11:03:52-07:00
* statusHistory.status[+] = #finished
* statusHistory.period[=] = 2021-10-06T11:52:02-07:00
[// Note planned = Unit En Route Date/Time, Arrived = Unit Arrived on Scene Date/Time, Tiraged = Arrived at Patient Date/Time, in-progress = Unit Left Scene Date/Time, finished = EMS Call Completed Date/Time]
[// Note: MIssing EMS times - PSAP Call Date/Time, Dispatch Notified Date/Time, Unit Notified by Dispatch Date/Time, Dispatch Acknowledged Date/Time, Transfer of EMS Patient Care Date/Time, Destination Patient Transfer of Care Date/Time, Unit Back in Service Date/Time, Unit Back at Home Location Date/Time ]
[// Note: status history may change when PCS-Encounter is completed]
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER
* serviceType = http://terminology.hl7.org/CodeSystem/service-type#117
* prioroty = http://terminology.hl7.org/CodeSystem/v3-ActPriority#UR
[// Note: prioroty may change when PCS-Encounter is completed]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* basedOn = Reference(ServiceRequest/e375b384-38d9-11ec-8d3d-0242ac130003)
* participant.type [+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant.period.start [=] = 2021-10-06T10:48:40-07:00
* participant.period.end [=] = 2021-10-06T11:12:20-07:00
* participant.individual [=] = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* participant.type [+] = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#SPRF
* participant.period.start [=] = 2021-10-06T10:48:40-07:00
* participant.period.end [=] = 2021-10-06T11:12:20-07:00
* participant.individual [=] = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* participant.type [+]= $ "Driver/Pilot" [//TODO] 
* participant.type [=] = $ "Other Patient Caregiver" [//TODO] 
* participant.period.start [=] = 2021-10-06T10:48:40-07:00
* participant.period.end [=] = 2021-10-06T11:12:20-07:00
* participant.individual [=] = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* period.start = 2021-10-06T10:47:53-07:00
* period.end = 2021-10-06T11:52:02-07:00
* reasonCode = $I46 "Cardiac Arrest"
* diagnosis.condition [+] = Reference(Condition/6392f114-3b62-11ec-8d3d-0242ac130003)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC
* diagnosis.condition [+] = Reference(Condition/225ccd48-3b6a-11ec-8d3d-0242ac130003)
* diagnosis.use [=] = http://terminology.hl7.org/CodeSystem/diagnosis-role#CM
* location.location[+] = Reference(Location/a99c6b0e-3b6c-11ec-8d3d-0242ac130003)
* location.status = http://hl7.org/fhir/encounter-location-status#completed
* location.location[+] = Reference(Location/52e7c46c-3b6b-11ec-8d3d-0242ac130003)
* location.status = http://hl7.org/fhir/encounter-location-status#completed
* serviceProvider = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Practitioner-1
InstanceOf: Practitioner
Usage: #inline
* id = 21a78dce-38e6-11ec-8d3d-0242ac130003
* identifier.value = 3265325 
* identifier.type = $LN "License number"
* name.family = "Sparrow"
* name.given[+] = "Henry"
* name.given[+] = "I."

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Practitioner-2
InstanceOf: Practitioner
Usage: #inline
* id = 26aa91b8-38e6-11ec-8d3d-0242ac130003
* identifier.value = 3278054 
* identifier.type = $LN "License number"
* name.family = "Valencia"
* name.given = "Dani"

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Practitioner-3
InstanceOf: Practitioner
Usage: #inline
* id = 29eabcea-38e6-11ec-8d3d-0242ac130003
* identifier.value = 5583451 
* identifier.type = $LN "License number"
* name.family = "Guerra"
* name.given = "Mariyah"

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Practitioner-1-level
InstanceOf: Practitioner
Usage: #inline
* id = a3222aec-38e8-11ec-8d3d-0242ac130003
* practitioner = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* code = $397897005  "Paramedic"
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Practitioner-2-level
InstanceOf: Practitioner
Usage: #inline
* id = a76cdf98-38e8-11ec-8d3d-0242ac130003
* practitioner = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* code = $397897005  "Paramedic"
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Practitioner-3-level
InstanceOf: Practitioner
Usage: #inline
* id = ac48610e-38e8-11ec-8d3d-0242ac130003
* practitioner = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* code = $ ""
[//TODO ]
* organization = Reference(Organization/b861aba6-38e0-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Organization
InstanceOf: Organization
Usage: #inline
* id = b861aba6-38e0-11ec-8d3d-0242ac130003
* identifier.value[+] = 058
* identifier.type[=] = "Unique State ID"
* identifier.value[+] = "340-TGCON058"
* identifier.type[=] = "EMS Agency Number"
* type = $EMS "Emergency Medical Service"  
* name = "TackTrust"
* address.state = "Arizona" 

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-ServiceRequest
InstanceOf: ServiceRequest
Usage: #inline
* id = e375b384-38d9-11ec-8d3d-0242ac130003
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#UR
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* code = $2205001 "911 response (scene)"

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-ChiefComplaint
InstanceOf: ConditionUvIps
Usage: #inline
* id = 6392f114-3b62-11ec-8d3d-0242ac130003
* text = "Cardiac arrest"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional // Note: Verify
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* bodySite[+] = $LA18114-1 "General/global" [//Note: To be proprely translated into SNOMED]
* bodySite[+] = $LA18277-6 "Cardiovascular" [//Note: To be proprely translated into SNOMED]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* onset[x].onset[x]:onsetDateTime = "2021-10-06T10:45:58-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* evidence.code[+] = $I46.9 "Cardiac arrest, cause unspecified"
* evidence.code[+] = $R09.2 "Respiratory arrest"
* evidence.code[+] = $R11.10 "Vomiting, unspecified"
// Note: TODO figure out how duration can be incorperated 

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Primary-Impression
InstanceOf: ConditionUvIps
Usage: #inline
* id = 225ccd48-3b6a-11ec-8d3d-0242ac130003
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional // Note: Verify
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* code = $I46.9 "Cardiac arrest, cause unspecified"
[// NOte: ICD-10 [2.16.840.1.113883.6.3] refernce]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* onset[x].onset[x]:onsetDateTime = "2021-10-06T10:45:58-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* evidence.code[+] = $I46.9 "Cardiac arrest, cause unspecified"
* evidence.code[+] = $R09.2 "Respiratory arrest"
* evidence.code[+] = $R11.10 "Vomiting, unspecified"

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Location-Destination
InstanceOf: Location
Usage: #inline
* id = 52e7c46c-3b6b-11ec-8d3d-0242ac130003
* identifier.value = "MED0262"
* identifier.type = http://terminology.hl7.org/ValueSet/v2-0203#PLAC
* name = ""
* address.line[+] = "....."
* address.line[=] = "....."
* address.city = "........"
* address.district = "......"
* address.state = "Arizona"
* address.postalCode = "........"
[//Note: doesnot support US Cencus tract]
* address.country = "US"
* mode = http://hl7.org/fhir/location-mode#kind
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER

Instance: Inline-Instance-for-EMS-ex-patient-Cardiac-Ambulance-Trasnport-Location-Scene 
InstanceOf: Location
Usage: #inline
* id = a99c6b0e-3b6c-11ec-8d3d-0242ac130003
* name = "Saint Francis of Assisi Catholic Church"
* type = $Y92.22 "Religious institution as the place of occurrence of the external cause"
[// NOte: ICD-10 [2.16.840.1.113883.6.3] refernce]
* address.line[+] = "1815 S 8th Ave"
* address.line[=] = "Room 114"
* address.city = "City of Yuma"
* address.district = "Yuma County"
* address.state = "Arizona"
* address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* address.country = "US"
* mode = http://hl7.org/fhir/location-mode#kind
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#ER
* position.longitude = "-114.628"
* position.latitude = "32.694"