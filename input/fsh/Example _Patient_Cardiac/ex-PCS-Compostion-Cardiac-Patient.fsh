Instance:   EMS-ex-patient-Cardiac-Ambulance-Transport-Composition
InstanceOf: IHE_PCS_Composition
Title: "Example of Cariact Patient for IHE_PCS_Composition"
Description:      "holding example values for the PCS compositon for the Cardiac Patient Example"

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* status = #finished

* event[+].period.start =  "2021-10-26T14:30:00+01:00""
* event[=].period.end =  "2021-10-26T14:45:00+01:00""
* event[=].code = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMBT

* section[sectionMedications].code = $loinc#10160-0
* section[sectionMedications].entry[+] = Reference(Medication/4e6bd662-38c3-11ec-8d3d-0242ac130003)
* section[sectionMedications].entry[+] = Reference(Medication/01ff9434-38c4-11ec-8d3d-0242ac130003)

* section[sectionMedicationsAdministered].code = $loinc#
* section[sectionMedications].entry[+] = Reference()
// TODO 

* section[sectionAllergies].code = $loinc#48765-2
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/3f26fd70-38c4-11ec-8d3d-0242ac130003)
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/93b3e560-38c4-11ec-8d3d-0242ac130003)
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/990d2f3a-38c4-11ec-8d3d-0242ac130003)
* section[sectionAllergies].entry[+] = Reference(AllergyIntolerance/fc40d0de-38c4-11ec-8d3d-0242ac130003)

* section[sectionProblems].code = $loinc#11450-4
* section[sectionProblems].entry[+] = Reference(Problem/a0f3b5e2-38c5-11ec-8d3d-0242ac130003)
* section[sectionProblems].entry[+] = Reference(Problem/d5e50e10-3b3e-11ec-8d3d-0242ac130003)
* section[sectionProblems].entry[+] = Reference(Problem/e774ac08-3b3e-11ec-8d3d-0242ac130003)

* section[sectionProceduresHx].code = $loinc#47519-4
* section[sectionProceduresHx].entry[+] = Reference(Procedure/3bfbac88-38c7-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/dceab572-3b41-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/1ea7bca6-3b44-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/67af6a0c-3b44-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/b2ff4ba8-3b44-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/e69dcf82-3b46-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/267c84d6-3b47-11ec-8d3d-0242ac130003)
* section[sectionProceduresHx].entry[+] = Reference(Procedure/875cee62-3b47-11ec-8d3d-0242ac130003)


* section[sectionImmunizations].code = $loinc#11369-6
* section[sectionImmunizations].entry[+] = Reference(Immunization/95129cdc-38c7-11ec-8d3d-0242ac130003)

* section[sectionMedicalDevices].code = $loinc#46264-8
* section[sectionMedicalDevices].entry[+] = Reference(DeviceUseStatement/d6c13250-38c7-11ec-8d3d-0242ac130003)

* section[sectionVitalSigns].code = $loinc#8716-3
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/b6400438-3be4-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/c48bd52a-3be5-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/f37d99c2-3be5-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/96c73962-3be6-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e13e79e2-3be6-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/381975fa-3be7-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/64b3acd4-3be7-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/7d4f0fb4-125e-440a-ae81-7e0c82fdb9b1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/964b6a8e-cf0a-4441-9e11-4a864c3cfa29)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/58b0e7ac-3be8-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6f2c57a0-3be8-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6d85a7f6-3bef-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/c5020bf0-3bef-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ad6589c4-a929-4dc4-bcf4-0ce63f733a95)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/8ad91b35-9e62-4eef-9d29-de06f463511b)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e439221c-7899-4bcc-a6b4-1054f4305b48)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ec61ff08-e60c-49e6-8091-12109d278dde)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/86d600a0-0764-4bc9-b1a0-5dfffb617a24)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/0973da60-38cc-11ec-8d3d-0242ac130003)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/5055df00-24a6-4531-bc54-22a4bfe0159e)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/e4f5a1b9-d44d-4cb5-8491-16f9c37f3790)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/093b485e-4511-418f-b607-cfaec2996e4d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/4757a8f6-5765-4333-b5de-ca31a25553c2)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ba7139e1-9064-4293-94e6-4f5e9ccc972a)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/ef4fdaf1-095b-4db0-915d-338c19fe9a7d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/44c24aba-2298-49a8-9d67-e44a7b46c09f)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/da9470e7-f6ed-4643-9b10-8a59310bb286)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/85cf8976-f1b2-4337-8658-26210f5df666)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/03d0db0e-3852-4add-b33a-db8e6aea5f2b)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/7cbaa1c3-e793-4516-95ed-af6783532feb)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/6ec67b5f-fa07-46f9-aa09-857b475ce30f)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/66721b82-aaeb-4568-928e-d49145e2bad9)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/bb282e3a-ca42-4984-9859-e32dd013fed0)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/a23d6cb2-c238-4b7a-abcd-7bdd6966fa65)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/387b36eb-9220-4068-ae2f-21707522aab6)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/9fdcb6f1-c3a3-490f-ba00-0c260d619411)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/3ec08244-00f1-41ac-a251-b70c0d069cf1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/74b8ed2b-08ec-4ec8-bac8-c61154558c33)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/fee522f6-9a32-4ad7-b906-4e61de240a2e)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/1a21143f-8676-4c23-a312-9ed25cef0254)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/caf96813-eada-4b1e-a4e6-99e446834bbc)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/0e4e5415-8a8b-470e-9ce2-05a79f7f48ae)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/a0ca7a99-8132-4efa-8068-03282c3c4eff)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/59276b4d-51e0-4799-b79a-e4737efb4ef8)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/32511f84-f0fe-48f7-9616-ccb10fb57375)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/2d5475c0-827f-4697-9d83-54e666b3562c)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/4bcea68a-378c-41b7-85e8-f1f8134e55a1)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/369d0828-c27a-4047-97bd-5d0da9d2436d)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/72e8c109-c43b-4fe0-b4d8-36d74612f9ea)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/40b02e04-4212-4346-8661-164e4151a207)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/946a66f9-d0de-409a-bf93-e20726810482)
* section[sectionVitalSigns].entry[+] = Reference(VitalSigns/bb9752e5-a2a7-4723-b27d-1ba07dc936b6)

* section[sectionPastIllnessHx].code = $loinc#11348-0
* section[sectionVitalSigns].entry[+] = Reference(Condition/0510d482-38c7-11ec-8d3d-0242ac130003)

* section[sectionFunctionalStatus].code = $loinc#47420-5

* section[sectionPregnancyHx].code = $loinc#10162-6
* section[sectionPregnancyHx].entry[pregnancyStatus] = Reference(Observation/1edd40ee-3b74-11ec-8d3d-0242ac130003)

* section[sectionAdvanceDirectives].code = $loinc#42348-3
* section[sectionAdvanceDirectives].entry[+] = Reference(Consent/a1fd343e-3b74-11ec-8d3d-0242ac130003)

* section[sectionCoverage].code = $loinc#48768-6
* section[sectionVitalSigns].entry[+] = Reference(Coverage/bfc62057-8d31-4ac7-992f-753bd10a0a26)

* section[sectionCoverage] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionCoverage] ^extension.valueString = "Section"
* section[sectionCoverage] ^short = "Insurance Section"
* section[sectionCoverage] ^definition = "The insurance information for the patient to cover the encounter event."
* section[sectionCoverage].code = $loinc#48768-6
* section[sectionCoverage].code MS
* section[sectionCoverage].entry ..1 MS
* section[sectionCoverage].entry only Reference(Coverage)
* section[sectionCoverage].entry ^slicing.discriminator.type = #profile
* section[sectionCoverage].entry ^slicing.discriminator.path = "resolve()"
* section[sectionCoverage].entry ^slicing.rules = #open
* section[sectionCoverage].entry ^short = "the Patient's insurance information"
* section[sectionCoverage].entry ^definition = "Contains data on the patient's payers, whether a 'third party' insurance, self-pay, other payer or guarantor, or some combination of payers, and is used to define which entity is the responsible fiduciary for the financial aspects of a patient's care"
* section[sectionCoverage].entry contains Coverage 0..1 MS
* section[sectionCoverage].entry[Coverage] only Reference(Coverage)
//Add to composition at some point 





Instance: Inline-Instance-of-Cardiac-Patient-Ambulance-Transport-Composition-Coverage
InstanceOf: Coverage
Usage: #inline
* id = bfc62057-8d31-4ac7-992f-753bd10a0a26
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* policyHolder = Reference(RelatedPerson/c70c8063-85b0-4346-8fc7-1ca1966ca4ed)
* payor = Reference(Organization/61b5268d-735f-477c-b1e4-5f9dc20d681d)
* subscriberId = "S9387HF"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SPS
* class.type = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class.value = 1080
* class.name = "name"
* order = 1

Instance: Inline-Instance-of-Cardiac-Patient-Ambulance-Transport-Composition-Coverage-Organization
InstanceOf: Organization
Usage: #inline
* id = 61b5268d-735f-477c-b1e4-5f9dc20d681d
* identifier.value = "UHC"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#NIIP
* name = "United Healthcare"
* address.line[+] = "1 E Washington St"
* address.line[=] = "Ste 1700"
* address.city = "Phoenix"
* address.state = "Arizona"
* address.postalCode = "85004"
[//Note: doesnot support US Cencus tract]
* address.country = "US"
* telecom.system[+] = #phone
* telecom.value[=] = "866-414-1959"
* telecom.use[=] = #Work
* telecom.system[+] = #phone
* telecom.value[=] = "877-844-4999"
* telecom.use[=] = #Work




Instance: Inline-Instance-of-Cardiac-Patient-Ambulance-Transport-Composition-PregnancyStatus
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips
Usage: #inline
* id = "1edd40ee-3b74-11ec-8d3d-0242ac130003"
* code = $3118001 "No"
// [NOTE: Code if from NEMSIS Values]
* value[x].value[x]:valueCodeableConcept = $LA26683-5 "Not pregnant"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-of-Cardiac-Patient-Ambulance-Transport-Composition-AdvancedDirectives
InstanceOf: Consent
Usage: #inline
* id = "a1fd343e-3b74-11ec-8d3d-0242ac130003"
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* source[x].sourceReference = Reference(DocumentReference/8e46582c-38d5-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-1
InstanceOf: Procedure
Usage: #inline
* id = dceab572-3b41-11ec-8d3d-0242ac130003
* status = #completed 
* code = $89666000 "Cardiopulmonary resuscitation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:52:30-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/21a78dce-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-2
InstanceOf: Procedure
Usage: #inline
* id = 1ea7bca6-3b44-11ec-8d3d-0242ac130003
* status = #completed 
* code = $268400002 "12 lead ECG"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:53:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000
* usedReference = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-3
InstanceOf: Procedure
Usage: #inline
* id = 67af6a0c-3b44-11ec-8d3d-0242ac130003
* status = #completed 
* code = $425447009 "Bag valve mask ventilation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:53:30-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-4
InstanceOf: Procedure
Usage: #inline
* id = b2ff4ba8-3b44-11ec-8d3d-0242ac130003
* status = #completed 
* code = $392230005 "Catheterisation of vein"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:55:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* bodySite = $368224007 "Entire right forearm"
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-5
InstanceOf: Procedure
Usage: #inline
* id = e69dcf82-3b46-11ec-8d3d-0242ac130003
* status = #completed 
* code = $426220008 "External ventricular defibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T10:57:23-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385671000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-6
InstanceOf: Procedure
Usage: #inline
* id = 267c84d6-3b47-11ec-8d3d-0242ac130003
* status = #completed 
* code = $58715004 "Moving a patient to a stretcher"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T11:00:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-Procedure-7
InstanceOf: Procedure
Usage: #inline
* id = 875cee62-3b47-11ec-8d3d-0242ac130003
* status = #completed 
* code = $426220008 "External ventricular defibrillation"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* performed[x].performedDateTime = "2021-10-06T11:06:00-07:00"
* recorder = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* outcome = http://snomed.info/sct#385669000

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationStatement-1
InstanceOf: MedicationAdministration
Usage: #inline
* id = 
* status = #completed
* category = [//TODO]
* partOf = Reference(MedicationsAdministration/ ) TODO
* medication[x] = $7806  "oxygen"
* dosage.dose[x].doseQuantity.value = 12
* dosage.dose[x].doseQuantity.unit = "Liters Per Minute (LPM [gas]))"
* dosage.route = $ "" [// TODO -- bag value mask]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:53:40-07:00"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationsAdministered-1
InstanceOf: MedicationStatement
Usage: #inline
* id = 
* medication[x].medicationCodeableConcept = $7806  "oxygen"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:53:40-07:00"
* performer.function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer
* performer.actor = Reference(Practitioner/29eabcea-38e6-11ec-8d3d-0242ac130003)
* dosage.dose = 
* dosage.route = 
* dosage.method =
* dosage.rate[x] = 
* partOf = Reference(Procedure/ )

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationStatement-2
InstanceOf: MedicationAdministration
Usage: #inline
* id = 
* status = #completed
* category = [//TODO]
* partOf = Reference(MedicationsAdministration/ ) TODO
* medication[x] = $317361   "epinephrine"
* dosage.dose[x].doseQuantity.value = 1
* dosage.dose[x].doseQuantity.unit = "MG/ML"
* dosage.route = $ "" [// TODO -- bag value mask]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:56:00-07:00"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationsAdministered-2
InstanceOf: MedicationStatement
Usage: #inline
* id = 
* medication[x].medicationCodeableConcept = $317361   "epinephrine"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:56:00-07:00"
* performer.function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* dosage.dose = 1
* dosage.route = http://snomed.info/sct#47625008 
* dosage.rate[x] = 
* partOf = Reference(Procedure/ )  

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationStatement-3
InstanceOf: MedicationAdministration
Usage: #inline
* id = 
* status = #completed
* category = [//TODO]
* partOf = Reference(MedicationsAdministration/ ) TODO
* medication[x] = $703   "amiodarone"
* dosage.dose[x].doseQuantity.value = 5
* dosage.dose[x].doseQuantity.unit = "Milligrams per Kilogram (mg/kg)"
* dosage.route = $ "" [// TODO -- bag value mask]
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:57:40-07:00"

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-encounter-Ambulance-Transport-MedicationsAdministered-3
InstanceOf: MedicationStatement
Usage: #inline
* id = 
* medication[x].medicationCodeableConcept = $703   "amiodarone"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* context = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* effective[x].effectiveDateTime = "2021-10-06T10:57:40-07:00"
* performer.function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer
* performer.actor = Reference(Practitioner/26aa91b8-38e6-11ec-8d3d-0242ac130003)
* dosage.dose = 5
* dosage.route = http://snomed.info/sct#47625008 
* dosage.rate[x] = 
* partOf = Reference(Procedure/ ) 


Instance: Medication-1
InstanceOf: MedicationStatement
Usage: #inline
* id = 4e6bd662-38c3-11ec-8d3d-0242ac130003
* status = #active 
* medication[x] = $11289 "warfarin"
* dosage.dose[x].doseQuantity.value = 2
* dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
* dosage.route = $20053000 "Oral use"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: Medication-2
InstanceOf: MedicationStatement
Usage: #inline
* id = 01ff9434-38c4-11ec-8d3d-0242ac130003
* status = #active 
* medication[x] = $6984 "minoxidil"
* dosage.dose[x].doseQuantity.value = 10
* dosage.dose[x].doseQuantity.unit = "Milligrams (mg)"
* dosage.route = $20053000 "Oral use"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: AllergyIntolerance-1
InstanceOf: AllergyIntolerance
Usage: #inline
* id = 3f26fd70-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #medication
* code = $Z88.0 "Allergy status to penicillin"  
[// Note: need to figure out how to represent code type since this is ICD10] 

Instance: AllergyIntolerance-2
InstanceOf: AllergyIntolerance
Usage: #inline
* id = 93b3e560-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #medication
* code = $1191 "aspirin" 
[// Note: need to figure out how to represent code type since this is RxNorm] 

Instance: AllergyIntolerance-3
InstanceOf: AllergyIntolerance
Usage: #inline
* id = 990d2f3a-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #food
* code = $425525006 "Allergy to dairy food"
[// Note: need to figure out how to represent code type since this is unspecified and may not be SNOMED]

Instance: AllergyIntolerance-4
InstanceOf: AllergyIntolerance
Usage: #inline
* id = fc40d0de-38c4-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* category = #food
* code = $441831003 "Gluten sensitivity"
[// Note: need to figure out how to represent code type since this is unspecified and may not be SNOMED] 

Instance: Inline-Instance-for-QORE-example-cardiac-Patient-familymember
InstanceOf: RelatedPerson
Usage: #inline
* id = 2f5e2574-38c6-11ec-8d3d-0242ac130003
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* relationship = $FAMMEMB "family member"

Instance: Problem-1
InstanceOf: Condition
Usage: #inline
* id = a0f3b5e2-38c5-11ec-8d3d-0242ac130003
* code = $I46.9 "Cardiac arrest, cause unspecified"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)

Instance: PastIllneses-1
InstanceOf: Condition
Usage: #inline
* id = 0510d482-38c7-11ec-8d3d-0242ac130003
* code = $I21.9 "Acute myocardial infarction, unspecified"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* asserter = Reference(RelatedPerson/2f5e2574-38c6-11ec-8d3d-0242ac130003)

Instance: PastProcedures-1
InstanceOf: Procedure
Usage: #inline
* id = 3bfbac88-38c7-11ec-8d3d-0242ac130003
* code = $02HL02Z "Insertion of Monitoring Device into Left Ventricle, Open Approach"
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* asserter = Reference(RelatedPerson/2f5e2574-38c6-11ec-8d3d-0242ac130003)

Instance: Immunization
InstanceOf: Immunization
Usage: #inline
* id = 95129cdc-38c7-11ec-8d3d-0242ac130003
* text = "Influenza-Seasonal (In past 12 months)"
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* occurrence[x]occurrenceString = "2021"

Instance: MedicalDevice
InstanceOf: Device
Usage: #inline
* id = 752ca98e-38c8-11ec-8d3d-0242ac130003
* serialNumber = "569-75-1210"
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)



Instance: Waveform Graphic-image/jpeg
InstanceOf: Media
Usage: #inline
* id = 832a7212-38cf-11ec-8d3d-0242ac130003
* status = #completed
* type = #image
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* encounter = Reference(Encounter/8da1a2e0-38c2-11ec-8d3d-0242ac130003)
* created[x].createdDateTime = 2021-10-06T10:53:18-07:00
* operator = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)

Instance: MedicalDeviceUsed
InstanceOf: DeviceUseStatement
Usage: #inline
* id = e6c13250-38c7-11ec-8d3d-0242ac130003
* status = #completed
* device = Reference(Device/752ca98e-38c8-11ec-8d3d-0242ac130003)
* subject = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* derivedFrom = Reference(Observation/0973da60-38cc-11ec-8d3d-0242ac130003)
* timing[x].timingDateTime = "2021-10-06T10:53:18-07:00"
* reasonCode = $4103001 "12-Lead ECG"
[// Note: verify this is correct] 




