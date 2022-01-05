Instance: allergyintolerance-with-abatement
InstanceOf: AllergyIntolerance
Title: "AllergyIntolerance: resolved allergy"
Description: "AllergyIntolerance: resolved allergy"
Usage: #example
* extension.url = "http://hl7.org/fhir/uv/ips/StructureDefinition/abatement-dateTime-uv-ips"
* extension.valueDateTime = "2010"
* clinicalStatus = $allergyintolerance-clinical#resolved
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $sct#256303006 "Ragweed pollen"
* patient = Reference(66033)
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown

Instance: eumfh-39-07-1-of-AllergyIntolerance
InstanceOf: AllergyIntolerance
Title: "AllergyIntolerance: No known allergies"
Description: "AllergyIntolerance: No known allergies"
Usage: #example
* id = "eumfh-39-07-1"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $absent-unknown-uv-ips#no-known-allergies "No known allergies"
//* code.extension.url = "http://hl7.org/fhir/uv/ips/StructureDefinition/absent-or-unknown-uv-ips"
//* code.extension.valueCodeableConcept = $absent-unknown-uv-ips#no-known-allergies "No known allergies"
* patient = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown

Instance: CheifComplaint-Narrative
InstanceOf: cheif_complaint
Title: "cheif_complaint: Narrative only"
Description: "cheif_complaint: Narrative only"
Usage: #example
* section[chief_complaint].author = Reference(Practitioner or Organization)
* section[chief_complaint].text = "My head hurts and I am having a hard time standing"

Instance: CheifComplaint-CodedValue
InstanceOf: cheif_complaint
Title: "cheif_complaint: coded value"
Description: "cheif_complaint: coded value"
Usage: #example
* section[chief_complaint].author = Reference(Practitioner)
* section[chief_complaint].entry[chief_complaint_coded_value] = Reference(Encounter)
* Encounter.Diagnosis.Reference(Condition).Condition.code = $R07.9 "Chest pain, unspecified"
* Encounter.Diagnosis.Reference(Condition).Condition.code = $R06.02 "Shortness of breath"
* Encounter.Diagnosis.use = $CC "Chief complaint"

Instance: ReasonForVisit-Narrative
InstanceOf: reason_for_visit
Title: "reason_for_visit: Narrative only"
Description: "reason_for_visit: Narrative only"
Usage: #example
* section[reason_for_visit].author = Reference(Practitioner or Organization)
* section[reason_for_visit].text = "My head hurts and I am having a hard time standing"

Instance: ReasonForVisit-CodedValue
InstanceOf: cheif_complaint
Title: "reason_for_visit: coded value"
Description: "reason_for_visit: coded value"
Usage: #example
* section[reason_for_visit].author = Reference(Practitioner)
* section[reason_for_visit].entry[reason_for_visit_coded_value] = Reference(Encounter)
* Encounter.reasonReference.Reference(Condition).Condition.code = $R07.9 "Chest pain, unspecified"

Instance: DischargeDisposition
InstanceOf: discharge_disposition
Title: "discharge_disposition"
Description: "discharge_disposition"
Usage: #example
* section[discharge_disposition].entry[DischargeDisposition].CodeableConcept = $LA10325-1
//Note: $LA10325-1 = "Expired"

Instance: AdmissionDiagnosis
InstanceOf: admission_diagnosis
Title: "admission_diagnosis"
Description: "admission_diagnosis"
Usage: #example
* section[admission_diagnosis].entry[Diagnosis].Reference(Condition).Condition.code = $I21.3
//Note: $I21.3 = "Myocardial Infarction, Acute, Unspecified"
// Note: Alternative notation 
"""* section[admission_diagnosis].entry[Diagnosis].Reference(Encounter).Encounter.Diagnosis.Reference(Condition).Condition.code = $I21.3 "Myocardial Infarction, Acute, Unspecified""""
* Encounter.Diagnosis.use = $AD "Admission diagnosis"

Instance: DischargeDiagnosis
InstanceOf: discharge_diagnosis
Title: "discharge_diagnosis"
Description: "discharge_diagnosis"
Usage: #example
* section[discharge_diagnosis].entry[Diagnosis].Reference(Condition).Condition.code = $I25.84
//Note: $I25.84 = "Coronary Athlerosclerosis Due to Calcified Coronary Leision"
// Note: Alternative notation 
"""* section[discharge_diagnosis].entry[Diagnosis].Reference(Encounter).Encounter.Diagnosis.Reference(Condition).Condition.code = $I25.84 "Coronary Athlerosclerosis Due to Calcified Coronary Leision""""
* Encounter.Diagnosis.use = $DD "Discharge diagnosis"

Instance: AdmissionMedications
InstanceOf: admission_medications
Title: "admission_medications"
Description: "admission_medications"
Usage: #example
* section[admission_medications].entry[MedicationStatement] = Reference(MedicationStatementIPS)
* MedicationStatementIPS.Medication[x].medication[x]:medicationReference.Reference(Medication (IPS)).Medication.code = $776556004 "Lithium citrate only product" 
* MedicationStatementIPS.Medication[x].medication[x]:medicationReference.Reference(Medication (IPS)).Medication.code = $777067000 "Acetaminophen only product" 

Instance: DischargeMedications
InstanceOf: discharge_medications
Title: "discharge_medications"
Description: "discharge_medications"
Usage: #example
* section[admission_medications].entry[MedicationStatement] only Reference(MedicationStatementIPS)
* MedicationStatementIPS.Medication[x].medication[x]:medicationReference.Reference(Medication (IPS)).Medication.code = $776556004 "Lithium citrate only product" 
* MedicationStatementIPS.Medication[x].medication[x]:medicationReference.Reference(Medication (IPS)).Medication.code = $777067000 "Acetaminophen only product" 
* MedicationStatementIPS.Medication[x].medication[x]:medicationReference.Reference(Medication (IPS)).Medication.code = $243670 "aspirin 81 MG Oral Tablet" 


Instance: eumfh-39-07-1-of-AllergyIntolerance
InstanceOf: AllergyIntolerance
Title: "AllergyIntolerance: No known allergies"
Description: "AllergyIntolerance: No known allergies"
Usage: #example
* id = "eumfh-39-07-1"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* code = $absent-unknown-uv-ips#no-known-allergies "No known allergies"
//* code.extension.url = "http://hl7.org/fhir/uv/ips/StructureDefinition/absent-or-unknown-uv-ips"
//* code.extension.valueCodeableConcept = $absent-unknown-uv-ips#no-known-allergies "No known allergies"
* patient = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown

Instance: IPS-examples-Bundle-01
InstanceOf: Bundle
Title: "IPS Bundle example"
Description: "IPS Bundle example"
Usage: #example
* language = #en-GB
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "175bd032-8b00-4728-b2dc-748bb1501aed"
* type = #document
* timestamp = "2017-12-11T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-1
* entry[+].fullUrl = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-2
* entry[+].fullUrl = "urn:uuid:1c616b24-3895-48c4-9a02-9a64110351ef"
* entry[=].resource = 1c616b24-3895-48c4-9a02-9a64110351ef
* entry[+].fullUrl = "urn:uuid:890751f4-2924-4636-bab7-efffc7f3cf15"
* entry[=].resource = 890751f4-2924-4636-bab7-efffc7f3cf15
* entry[+].fullUrl = "urn:uuid:c64139e7-f02d-409c-bf34-75e8bf23bc80"
* entry[=].resource = c64139e7-f02d-409c-bf34-75e8bf23bc80
* entry[+].fullUrl = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* entry[=].resource = c220e36c-eb67-4fc4-9ba1-2fabc52acec6
* entry[+].fullUrl = "urn:uuid:47524493-846a-4a26-bae2-4ab03e60f02e"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-5
* entry[+].fullUrl = "urn:uuid:976d0804-cae0-45ae-afe3-a19f3ceba6bc"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-6
* entry[+].fullUrl = "urn:uuid:8adc0999-9468-4ac9-9557-680fa133d626"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-7
* entry[+].fullUrl = "urn:uuid:72884cad-ebe6-4f43-a51a-2f978275f132"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-8
* entry[+].fullUrl = "urn:uuid:c4597aa2-688a-401b-a658-70acc6de28c6"
* entry[=].resource = c4597aa2-688a-401b-a658-70acc6de28c6
* entry[+].fullUrl = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-9
* entry[+].fullUrl = "urn:uuid:aa11a2be-3e36-4be7-b58a-6fc3dace2741"
* entry[=].resource = aa11a2be-3e36-4be7-b58a-6fc3dace2741
* entry[+].fullUrl = "urn:uuid:6e39ccf3-f997-4a2b-8f28-b4b71c778c70"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-10
* entry[+].fullUrl = "urn:uuid:b4916505-a06b-460c-9be8-011609282457"
* entry[=].resource = b4916505-a06b-460c-9be8-011609282457
* entry[+].fullUrl = "urn:uuid:a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4"
* entry[=].resource = a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4
* entry[+].fullUrl = "urn:uuid:2639657a-c19a-48e2-82cc-471e13b8ad94"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-11
* entry[+].fullUrl = "urn:uuid:cc354e00-a419-47ea-8b6c-1768b2a01646"
* entry[=].resource = cc354e00-a419-47ea-8b6c-1768b2a01646
* entry[+].fullUrl = "urn:uuid:26bee0a9-5997-4557-ab9d-c6adbb05b572"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-01-12
* entry[+].fullUrl = "urn:uuid:c7781f44-6df8-4a8b-9e06-0b34263a47c5"
* entry[=].resource = c7781f44-6df8-4a8b-9e06-0b34263a47c5

Instance: IPS-examples-Bundle-minimal
InstanceOf: Bundle
Title: "IPS Bundle example - minimal"
Description: "IPS Bundle example - minimal"
Usage: #example
* language = #en-US
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "28b95815-76ce-457b-b7ae-a972e527db40"
* type = #document
* timestamp = "2020-12-11T14:30:00+01:00"
* entry[0].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-minimal-1
* entry[+].fullUrl = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-minimal-2
* entry[+].fullUrl = "urn:uuid:1c616b24-3895-48c4-9a02-9a64110351ef"
* entry[=].resource = 1c616b24-3895-48c4-9a02-9a64110351ef
* entry[+].fullUrl = "urn:uuid:890751f4-2924-4636-bab7-efffc7f3cf15"
* entry[=].resource = 890751f4-2924-4636-bab7-efffc7f3cf15
* entry[+].fullUrl = "urn:uuid:c64139e7-f02d-409c-bf34-75e8bf23bc80"
* entry[=].resource = c64139e7-f02d-409c-bf34-75e8bf23bc80
* entry[+].fullUrl = "urn:uuid:c220e36c-eb67-4fc4-9ba1-2fabc52acec6"
* entry[=].resource = c220e36c-eb67-4fc4-9ba1-2fabc52acec6
* entry[+].fullUrl = "urn:uuid:976d0804-cae0-45ae-afe3-a19f3ceba6bc"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-minimal-7
* entry[+].fullUrl = "urn:uuid:72884cad-ebe6-4f43-a51a-2f978275f132"
* entry[=].resource = Inline-Instance-for-IPS-examples-Bundle-minimal-8

Instance: absent-unknown-uv-ips
InstanceOf: CodeSystem
Title: "Absent and Unknown Data - IPS"
Description: "International Patient Summary (IPS) codes for \"known absent\" and \"not known\" data."
Usage: #definition
* url = "http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips"
* version = "1.0.0"
* name = "IPSCodeSystemAbsentUnknown"
* title = "Absent and Unknown Data - IPS"
* status = #active
* experimental = false
* date = "2021-05-14T21:56:28-05:00"
* publisher = "Health Level Seven International - Patient Care Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* description = "International Patient Summary (IPS) codes for \"known absent\" and \"not known\" data."
* jurisdiction = $m49.htm#001
* copyright = "Produced by HL7 under the terms of HL7® Governance and Operations Manual relating to Intellectual Property (Section 16), specifically its copyright, trademark and patent provisions. This document is licensed under Creative Commons \"No Rights Reserved\" (CC0)."
* caseSensitive = true
* content = #complete
* concept[0].code = #no-allergy-info
* concept[=].display = "No information about allergies"
* concept[=].definition = "There is no information available regarding the subject's allergy conditions."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna informazione sulle allergie"
* concept[+].code = #no-known-allergies
* concept[=].display = "No known allergies"
* concept[=].definition = "The subject has no known allergy conditions."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna allergia nota"
* concept[=].concept[0].code = #no-known-medication-allergies
* concept[=].concept[=].display = "No known medication allergies"
* concept[=].concept[=].definition = "The subject has no known medication allergy conditions."
* concept[=].concept[=].designation.language = #it-IT
* concept[=].concept[=].designation.value = "Nessuna allergia ai farmaci nota"
* concept[=].concept[+].code = #no-known-environmental-allergies
* concept[=].concept[=].display = "No known environmental allergies"
* concept[=].concept[=].definition = "The subject has no known environmental allergy conditions."
* concept[=].concept[=].designation.language = #it-IT
* concept[=].concept[=].designation.value = "Nessuna allergia nota ad allergeni ambientali"
* concept[=].concept[+].code = #no-known-food-allergies
* concept[=].concept[=].display = "No known food allergies"
* concept[=].concept[=].definition = "The subject has no known food allergy conditions."
* concept[=].concept[=].designation.language = #it-IT
* concept[=].concept[=].designation.value = "Nessuna allergia alimentare nota"
* concept[+].code = #no-device-info
* concept[=].display = "No information about devices"
* concept[=].definition = "There is no information available regarding implanted or external devices for the subject."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna informazione sui dispositivi medici"
* concept[+].code = #no-known-devices
* concept[=].display = "No known devices in use"
* concept[=].definition = "There are no devices known to be implanted in or used by the subject that have to be reported in this record. This can mean either that there are none known, or that those known are not relevant for the purpose of this record."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Non sono noti dispositivi medici in uso"
* concept[+].code = #no-immunization-info
* concept[=].display = "No information about immunizations"
* concept[=].definition = "The subject's history of previous immunizations is not known."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna informazione sulle vaccinazioni"
* concept[+].code = #no-known-immunizations
* concept[=].display = "No known immunizations"
* concept[=].definition = "There is no history of previous immunizations for the subject that have to be reported in this record. This can mean either that there are none known, or that those known are not relevant for the purpose of this record."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna vaccinazione nota"
* concept[+].code = #no-medication-info
* concept[=].display = "No information about medications"
* concept[=].definition = "There is no information available about the subject's medication use or administration."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna informazione disponibile su terapie farmacologiche"
* concept[+].code = #no-known-medications
* concept[=].display = "No known medications"
* concept[=].definition = "There are no medications for the subject that have to be reported in this record. This can mean either that there are none known, or that those known are not relevant for the purpose of this record."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna terapia farmacologica nota"
* concept[+].code = #no-problem-info
* concept[=].display = "No information about problems"
* concept[=].definition = "There is no information available about the subject's health problems or disabilities."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna informazione disponibile su problemi o disabilità"
* concept[+].code = #no-known-problems
* concept[=].display = "No known problems"
* concept[=].definition = "The subject is not known to have any health problems or disabilities that have to be reported in this record. This can mean either that there are none known, or that those known are not relevant for the purpose of this record."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessun problema o disabilità rilevante nota"
* concept[+].code = #no-procedure-info
* concept[=].display = "No information about past history of procedures"
* concept[=].definition = "There is no information available about the subject's past history of procedures."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna informazione disponibile su procedure pregresse"
* concept[+].code = #no-known-procedures
* concept[=].display = "No known procedures"
* concept[=].definition = "The subject has no history of procedures that have to be reported in this record. This can mean either that there are none known, or that those known are not relevant for the purpose of this record."
* concept[=].designation.language = #it-IT
* concept[=].designation.value = "Nessuna procedure pregressa rilevante nota"

/*
Instance: no-standard-code-uv-ips
InstanceOf: CodeSystem
Title: "Code for text-only data entry in CodeableConcept data type, when no standard code is available."
Description: "Code to enable text data entry in CodeableConcept data type, for use when no standard code is available (used with slices with required bindings and closed slicing rule)."
Usage: #definition
* url = "http://hl7.org/fhir/uv/ips/CodeSystem/no-standard-code-uv-ips"
* version = "1.0.0"
* name = "IPSCodeSystemNoStandardCode"
* title = "No Standard Code - IPS"
* status = #active
* experimental = false
* date = "2021-07-08"
* publisher = "Health Level Seven International - Patient Care Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* description = "International Patient Summary (IPS) codes for \"known absent\" and \"not known\" data."
* jurisdiction = $m49.htm#001
* copyright = "Produced by HL7 under the terms of HL7® Governance and Operations Manual relating to Intellectual Property (Section 16), specifically its copyright, trademark and patent provisions. This document is licensed under Creative Commons \"No Rights Reserved\" (CC0)."
* caseSensitive = true
* content = #complete
* concept[0].code = #no-standard-code
* concept[=].display = "No standard code is available"
* concept[=].definition = "Placeholder code for text-only data entry in CodeableConcept data type when no standard code is available."
*/

Instance: absence-to-snomed-uv-ips
InstanceOf: ConceptMap
Title: "Absence of Information Mappings - IPS to SNOMED CT"
Description: "Absence of Information Mappings - IPS to SNOMED CT"
Usage: #definition
* url = "http://hl7.org/fhir/uv/ips/ConceptMap/absence-to-snomed-uv-ips"
* version = "1.0.0"
* name = "ConceptMapAbsenceIpsToSct"
* title = "Absence of Information Mappings - IPS to SNOMED CT"
* status = #active
* experimental = false
* date = "2021-05-14T21:56:28-05:00"
* publisher = "Health Level Seven International - Patient Care Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* description = "Absence of Information Mappings - IPS to SNOMED CT"
* jurisdiction = $m49.htm#001
* sourceUri = "http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips"
* targetUri = "http://snomed.info/sct"
* group.source = "http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips"
* group.target = "http://snomed.info/sct"
* group.element[0].code = #no-allergy-info
* group.element[=].display = "No information about allergies"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #no-known-allergies
* group.element[=].display = "No known allergies"
* group.element[=].target.code = #716186003
* group.element[=].target.display = "No known allergy (situation)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #no-known-medication-allergies
* group.element[=].display = "No known medication allergies"
* group.element[=].target.code = #409137002
* group.element[=].target.display = "No known drug allergy (situation)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #no-known-environmental-allergies
* group.element[=].display = "No known environmental allergies"
* group.element[=].target.code = #428607008
* group.element[=].target.display = "No known environmental allergy (situation)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #no-known-food-allergies
* group.element[=].display = "No known food allergies"
* group.element[=].target.code = #429625007
* group.element[=].target.display = "No known food allergy (situation)"
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #no-device-info
* group.element[=].display = "No information about devices"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #no-known-devices
* group.element[=].display = "No known devices in use"
* group.element[=].target.code = #787483001
* group.element[=].target.display = "No known device use (situation)"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "The source includes also those known but not relevant for the purpose of this record. The SNOMED CT Finding context of the target concept is Unknown"
* group.element[+].code = #no-immunization-info
* group.element[=].display = "No information about immunizations"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #no-known-immunizations
* group.element[=].display = "No known immunizations"
* group.element[=].target.code = #787482006
* group.element[=].target.display = "No known immunizations (situation)"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "The source includes also those known but not relevant for the purpose of this record. The SNOMED CT Procedure context of the target concept is Action status unknown"
* group.element[+].code = #no-medication-info
* group.element[=].display = "No information about medications"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #no-known-medications
* group.element[=].display = "No known medications"
* group.element[=].target.code = #787481004
* group.element[=].target.display = "No known medications (situation)"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "The source includes also those known but not relevant for the purpose of this record. The SNOMED CT Finding context of the target concept is Unknown"
* group.element[+].code = #no-problem-info
* group.element[=].display = "No information about problems"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #no-known-problems
* group.element[=].display = "No known problems"
* group.element[=].target.code = #160245001
* group.element[=].target.display = "No current problems or disability (situation)"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "The source includes also those known but not relevant for the purpose of this record. The SNOMED CT Finding context of the target concept is Unknown"
* group.element[+].code = #no-procedure-info
* group.element[=].display = "No information about past history of procedures"
* group.element[=].target.equivalence = #unmatched
* group.element[+].code = #no-known-procedures
* group.element[=].display = "No known procedures"
* group.element[=].target.code = #787480003
* group.element[=].target.display = "No known procedures (situation)"
* group.element[=].target.equivalence = #narrower
* group.element[=].target.comment = "The source includes also those known but not relevant for the purpose of this record. The SNOMED CT Procedure context of the target concept is Action status unknown"

Instance: severity-loinc-uv-ips
InstanceOf: ConceptMap
Title: "Severity Value Set Mappings - LOINC to FHIR"
Description: "Severity Value Set Mappings - LOINC to FHIR"
Usage: #definition
* url = "http://hl7.org/fhir/uv/ips/ConceptMap/severity-loinc-uv-ips"
* version = "1.0.0"
* name = "ConceptMapSeverityLoincToFhir"
* title = "Severity Value Set Mappings - LOINC to FHIR"
* status = #active
* experimental = false
* date = "2021-05-14T21:56:28-05:00"
* publisher = "Health Level Seven International - Patient Care Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* description = "Severity Value Set Mappings - LOINC to FHIR"
* jurisdiction = $m49.htm#001
* sourceUri = "http://hl7.org/fhir/uv/ips/ValueSet/condition-severity-uv-ips"
* targetUri = "http://hl7.org/fhir/ValueSet/reaction-event-severity"
* group.source = "http://loinc.org"
* group.target = "http://hl7.org/fhir/reaction-event-severity"
* group.element[0].code = #LA6752-5
* group.element[=].display = "Mild"
* group.element[=].target.code = #mild
* group.element[=].target.display = "Mild"
* group.element[=].target.equivalence = #specializes
* group.element[+].code = #LA6751-7
* group.element[=].display = "Moderate"
* group.element[=].target.code = #moderate
* group.element[=].target.display = "Moderate"
* group.element[=].target.equivalence = #specializes
* group.element[+].code = #LA6750-9
* group.element[=].display = "Severe"
* group.element[=].target.code = #severe
* group.element[=].target.display = "Severe"
* group.element[=].target.equivalence = #specializes

Instance: severity-snomedct-uv-ips
InstanceOf: ConceptMap
Title: "Severity Value Set Mappings - SNOMED CT to FHIR"
Description: "Severity Value Set Mappings - SNOMED CT to FHIR"
Usage: #definition
* url = "http://hl7.org/fhir/uv/ips/ConceptMap/severity-snomedct-uv-ips"
* version = "1.0.0"
* name = "ConceptMapSeveritySnomedCtToFhir"
* title = "Severity Value Set Mappings - SNOMED CT to FHIR"
* status = #active
* experimental = false
* date = "2021-05-14T21:56:28-05:00"
* publisher = "Health Level Seven International - Patient Care Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* description = "Severity Value Set Mappings - SNOMED CT to FHIR"
* jurisdiction = $m49.htm#001
* sourceUri = "http://hl7.org/fhir/ValueSet/condition-severity"
* targetUri = "http://hl7.org/fhir/ValueSet/reaction-event-severity"
* group.source = "http://snomed.info/sct"
* group.target = "http://hl7.org/fhir/reaction-event-severity"
* group.element[0].code = #255604002
* group.element[=].display = "Mild"
* group.element[=].target.code = #mild
* group.element[=].target.display = "Mild"
* group.element[=].target.equivalence = #specializes
* group.element[+].code = #6736007
* group.element[=].display = "Moderate"
* group.element[=].target.code = #moderate
* group.element[=].target.display = "Moderate"
* group.element[=].target.equivalence = #specializes
* group.element[+].code = #24484000
* group.element[=].display = "Severe"
* group.element[=].target.code = #severe
* group.element[=].target.display = "Severe"
* group.element[=].target.equivalence = #specializes

Instance: eumfh-39-07-1-of-Condition
InstanceOf: Condition
Title: "Condition: Acute myocardial infarction of anterior wall"
Description: "Condition: Acute myocardial infarction of anterior wall"
Usage: #example
* id = "eumfh-39-07-1"
* clinicalStatus = $condition-clinical#active
* category = $loinc#75326-9 "Problem"
* code.coding[0] = $sct#54329005 "Acute myocardial infarction of anterior wall"
* code.coding[+] = $mms#BA41&XA7RE3 "Acute myocardial infarction & Anterior wall of heart"
* subject = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* onsetDateTime = "2014"
* asserter = Reference(Practitioner/eumfh-39-07) "Dr. Mark Antonio"

Instance: eumfh-70-275-1-of-Device
InstanceOf: Device
Title: "Device: No known devices in use"
Description: "Device: No known devices in use"
Usage: #example
* id = "eumfh-70-275-1"
* type = $absent-unknown-uv-ips#no-known-devices "No known devices in use"
* patient = Reference(Patient/eumfh-39-07) "Annelise Black (inject 70-275)"

Instance: trilliumII-example-imaging-1-of-Device
InstanceOf: Device
Title: "Device: device observer example"
Description: "Device: device observer example"
Usage: #example
* id = "trilliumII-example-imaging-1"
* identifier.system = "http://my.organization.example/devicesID"
* identifier.value = "12345"
* manufacturer = "Imaging Devices Manufacturer"
* deviceName.name = "H.I.A. BEGIN"
* deviceName.type = #model-name
* modelNumber = "2.0.1"

Instance: eumfh-70-275-1-of-DeviceUseStatement
InstanceOf: DeviceUseStatement
Title: "DeviceUseStatement: No known devices in use"
Description: "DeviceUseStatement: No known devices in use"
Usage: #example
* id = "eumfh-70-275-1"
* status = #active
* subject = Reference(Patient/eumfh-39-07) "Annelise Black (inject 70-275)"
* timingDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* timingDateTime.extension.valueCode = #unknown
* device = Reference(Device/eumfh-70-275-1)

Instance: hemoglobin-of-DiagnosticReport
InstanceOf: DiagnosticReport
Title: "DiagnosticReport: hemoglobin example"
Description: "DiagnosticReport: hemoglobin example"
Usage: #example
* id = "hemoglobin"
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Patient/eumfh-39-07)
* effectiveDateTime = "2017-11-10"
* issued = "2017-11-10T08:20:00+01:00"
* performer = Reference(TII-Organization1) "Someplace General Hospital"
* result = Reference(Observation/hemoglobin) "Above stated goal of 7.0 %"

Instance: TII-ImagingStudy-5-1
InstanceOf: ImagingStudy
Title: "ImagingStudy: referred DICOM study"
Description: "ImagingStudy: referred DICOM study"
Usage: #example
* identifier.system = "urn:dicom:uid"
* identifier.value = "urn:oid:2.16.840.1.113883.2.9.999.1.12345"
* status = #available
* subject = Reference(Patient/eumfh-39-07)
* procedureCode = $loinc#49569-7 "SPECT Heart perfusion and wall motion at rest and W stress and W Tl-201 IV and W Tc-99m Sestamibi IV"
* reasonCode.text = "Chest pain, hypertension, type II diabetes mellitus."
* series.uid = "2.16.840.1.113883.2.9.999.2.12345"
* series.modality = $DCM#NM "Nuclear Medicine"
* series.bodySite = $sct#80891009 "Heart"

Instance: 75680
InstanceOf: Immunization
Title: "Immunization: Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite (Luxembourg)"
Description: "Immunization: Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite (Luxembourg)"
Usage: #example
* language = #fr-LU
* status = #completed
* vaccineCode.coding[0].version = "http://snomed.info/sct/900000000000207008"
* vaccineCode.coding[=] = $sct#414005006 "Diphtheria + Pertussis + Poliomyelitis + Tetanus vaccine"
* vaccineCode.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* vaccineCode.coding[=].display.extension.extension[0].url = "lang"
* vaccineCode.coding[=].display.extension.extension[=].valueCode = #fr-LU
* vaccineCode.coding[=].display.extension.extension[+].url = "content"
* vaccineCode.coding[=].display.extension.extension[=].valueString = "Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite"
* vaccineCode.coding[+] = $atc#J07CA02 "diphtheria-pertussis-poliomyelitis-tetanus"
* vaccineCode.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* vaccineCode.coding[=].display.extension.extension[0].url = "lang"
* vaccineCode.coding[=].display.extension.extension[=].valueCode = #fr-LU
* vaccineCode.coding[=].display.extension.extension[+].url = "content"
* vaccineCode.coding[=].display.extension.extension[=].valueString = "DIPHTERIE - COQUELUCHE - POLIOMYELITE - TETANOS"
* vaccineCode.coding[+] = urn:oid:1.3.182.4.11.22#2374429 "BOOSTRIX-POLIO"
* vaccineCode.text = "Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite"
* patient = Reference(66033)
* occurrenceDateTime = "1998-06-04T00:00:00+02:00"
* primarySource = true
* lotNumber = "AXK23RWERS"
* expirationDate = "2000-06-01"
* site.coding.version = "http://snomed.info/sct/900000000000207008"
* site.coding = $sct#11207009 "Right thigh"
* site.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* site.coding.display.extension.extension[0].url = "lang"
* site.coding.display.extension.extension[=].valueCode = #fr-LU
* site.coding.display.extension.extension[+].url = "content"
* site.coding.display.extension.extension[=].valueString = "Cuisse droite"
* site.text = "Cuisse droite"
* route.coding = $standardterms#20035000 "Intramuscular use"
* route.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* route.coding.display.extension.extension[0].url = "lang"
* route.coding.display.extension.extension[=].valueCode = #fr-LU
* route.coding.display.extension.extension[+].url = "content"
* route.coding.display.extension.extension[=].valueString = "Voie intramusculaire"
* route.text = "Voie intramusculaire"

Instance: media-example-smile
InstanceOf: Media
Title: "Media: example"
Description: "Media: example"
Usage: #example
* status = #completed
* type = $media-type#image "Image"
* subject = Reference(Patient/eumfh-39-07)
* createdDateTime = "2017-12-17"
* issued = "2017-12-17T14:56:18Z"
* operator = Reference(Practitioner/eumfh-39-07)
* height = 128
* width = 128
* content.id = "a1"
* content.contentType = #image/png
* content.data = "iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAAqFBMVEX8whv///8vLy/KysqWlpZiVCpiYmKVeCTvuBx7ZSfjsB78xCP8z0z+5JqviiL94IzInR/+6rBVSis7Ny5IQCz91WH8yDT+5qL+/PbUpR3+8MVWVlb92W/912iigSNuXCj92nfl5eV9fX27kyCIbiX/8s3/+emjo6PX19f93oP+7Ln+4pT/9NT++Ob8yz1vb2+9vb2JiYk8PDzy8vL8z0tJSUk1My7+6KrnRMnfAAAGG0lEQVR4nO2bbXuiOhCGUwVRAUURpajV2korYre72z3+/392SCAIZBKCgH7x+dBrZSNzO3mbTBL0dGehB8AD4AHwALjqW+5pP1mMD9uVE2m1PYwXk/3JvQ2AH4ydOQI1d46B3yqAG2y/YNsXfW2DSq6QB9iPjTLjVMZ43zhAuNVlzWPp21OjAIFTxXosJ2gKwDVLKx7WlynRGsoBAk6bl9G83AtlAKcrnJ+VU9YWSgAWlZoeJH1RA8Cv+fMTJwgHJxGAV6P2s5qLRgUBQFDb/VS6oC3yAY5Nmcc6VgZwV03aR2hVFWDdrH0+AQzgNtL883LgYREGaMF+RCAP0HD9U4G1AAEc2rGP0FgOYNKWfYSA8YAFCBsbf1jpYTmAe+XkL6cvpiswAC01QCqmIRYBvHbts82gAOA3NAHyNfeFAI2PwKzWIoB9+/YR2gsAfm4BYPABzrewj9CEB+C23gJjzV0OgCn4kqVpG1XT3krfPhxp7+pAe3kWlDFhAL4DhgO7Q7WxROZH07TgTOvzSmVdkAEYc4r3B52c1CHvxW+zXEH7hVfQBAE4DnjOvxW/mFMR78WCHZXjhDkEwJmF32zmtZ3OCCo5AApOOQQTAABOPzxT+9N3TdNUAQG1b2+igoOZmMBgAeBBsJ/Y15J672vxA5tp5C9J06NoVgK7gV0QMgBbsJwW/4yMuWHczgfFkjbzOEGC++O2CODDcZDKurFPCNRiSWIs3+xH5BncbXW3AMAZhPA77EK3I9WiFUvOAHcT/3E67aIAwMuAvc+mzE94ntrvTMHhZjZgGpw2m/LGTiMPcOIUa1F+DqDRpbCczByAdA6yORlZgDvUAEKnDMDiHgDnDEArq+EyrS8AbourMb7isYgAtL4ageWlAK2tx8UapwA3icZZGRTAvY/9uBEgbhPQoth2ZHHjP2kNrTdtoLLzBIrXSIg3DmuXwE6N4vGIxbJEoXbephVZxYG8mgZ0TACB4tEY8UaBNPpiZKt8QQFkEioBNtYJABgOQyFmHTERTKSvGMAH3ThqGICNICK5BCAAAYb4W78+lF2vV8Nsr/dLUX7jf4GBiUcAOLEADv3+keEaE3x0v5VIv3tL8t4lYGzZi//ucMHv7gcul37fBm2YBICTliLd4Ju+oEuj2C5+TD88KdEHJf3UKRYkAK/4MdQJSGyMuMFIXAcNAOzwYzg2NggAbyokHfG1NgBxANQJI+kYgBsNWdQF9QCIA8DFJMKRKRLMxdPkhbUAPvFDm5cq8CIAfjhGXLCsCUD6CzdRcI4AeHkJlLQCpRaAImgBCIcESJQcJh2h060BQEpzugDWKgIQLQnIWPBneTXA8g9+BI7CsZwIQJieJ5Xw52oAYn/GTVbh6QhxhwGiIZ1frwMgPUAURehPqCQeoyma6wF4Q0AsF8GT8UXJtPxRGUCJv8jtgbF8FJYAUAKlIkBin0lkFBQiOBoACJafFQC6Sxn/R/KQxCYdTRXuXiUBXncdKf9HCpDMwnhIM8C7TwmAT2p+JhFFT5AoRX5RmoVdKiUAShosbQT9P9UCSSZnrEsaXAxANSvP7GMdkWAuymuUTVovd1HU9zcF+NvtRuFi5v/tstZPNUbyK+P+C5M350iwVVDUoQJAJGsjYV6Vcz4F2FYBiNwwGvCXX53Of+qo2nL2gK7YK36OVruA8elGE27nNAdANLReNLyDQJbOmnbtOv4g2w3bkikxF7SqoHQ6blk+uk+SkgrHhHetgwCvDe/oAocsTk93SdRi6ac4R3SvSiDHDEmmtMWjSyKR8yxxun5yh1rQ4+3bZMsmvNHZhYvmyd4p3bY73XjXyKDnjS+b1/WPEMtLP6dmM+cH/JZPcV20yhxmyp2iCW8yJjm5I3WFk1Re603B8PIWmdN0FW8yVJO+ZQ4UAicq/WvvE5TpZwEcrIVP1bbgBuDHCwDIhZoGx6Y5/+qN6HT9fmw04AhdfOem7IbF/si71iT1y51j2YUfmVs2vmeujIoYc2NlejLXruQvOrlhYB6cn5JK0X/WBzMI5S9bVb/s5oZeMDmbR3zXbe0YhrPGt92O5nkSeHBDbxigYT0AHgAPgAfA//t0Zd4BDU/jAAAAAElFTkSuQmCC"
* content.creation = "2017-12-17"

Instance: eumfh-39-07-1-of-Medication
InstanceOf: Medication
Title: "Medication : Simvastatin 40 MG Disintegrating Oral Tablet"
Description: "Medication : Simvastatin 40 MG Disintegrating Oral Tablet"
Usage: #example
* id = "eumfh-39-07-1"
* code.coding[0] = $rxnorm#757704 "Simvastatin 40 MG Disintegrating Oral Tablet"
* code.coding[+] = $atc#C10AA01 "simvastatin"
* code.text = "Fluspiral 50 mcg"
* form.coding[0] = $rxnorm#1294713 "Disintegrating Oral Product"
* form.coding[+] = $standardterms#10219000 "Tablet"
* ingredient.itemCodeableConcept = $rxnorm#36567 "Simvastatin"
* ingredient.strength.numerator = 40 'mg' "mcg"
* ingredient.strength.denominator = 1 '{tablet}' "tablet"

Instance: eumfh-39-07-1-of-MedicationStatement
InstanceOf: MedicationStatement
Title: "MedicationStatement: on-going Simvastatin treatment"
Description: "MedicationStatement: on-going Simvastatin treatment"
Usage: #example
* id = "eumfh-39-07-1"
* status = #active
* medicationReference = Reference(Medication/eumfh-39-07-1) "simvastatin"
* subject = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* effectivePeriod.start = "2014"
* dosage.text = "40 mg/day"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.doseAndRate.doseQuantity = 40 'mg' "mg"

Instance: eumfh-39-07-1-of-MedicationRequest
InstanceOf: MedicationRequest
Title: "MedicationRequest: Simvastatin request"
Description: "MedicationRequest: Simvastatin request"
Usage: #example
* id = "eumfh-39-07-1-request"
* status = #active
* intent = #order
* medicationReference = Reference(Medication/eumfh-39-07-1) "simvastatin"
* subject = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* dosageInstruction.text = "40 mg/day"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 40 'mg' "mg"
* dispenseRequest.validityPeriod.start = "2021-01-01"

Instance: alcoholuse-example
InstanceOf: Observation
Title: "Observation: SH alcoholuse example"
Description: "Observation: SH alcoholuse example"
Usage: #example
* status = #final
* code = $loinc#74013-4 "Alcoholic drinks per day"
* subject = Reference(patient-example-female)
* effectiveDateTime = "2019-07-15"
* valueQuantity = 2 '{wine glasses}/d'

Instance: hemoglobin-of-Observation
InstanceOf: Observation
Title: "Observation: hemoglobin example"
Description: "Observation: hemoglobin example"
Usage: #example
* id = "hemoglobin"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#17856-6 "Hemoglobin A1c/Hemoglobin.total in Blood by HPLC"
* subject = Reference(Patient/eumfh-39-07)
* effectiveDateTime = "2017-11-10T08:20:00+01:00"
* performer = Reference(TII-Organization1)
* valueQuantity = 7.5 '%' "%"
* note.text = "Above stated goal of 7.0 %"

Instance: pathology-cancer
InstanceOf: Observation
Title: "Observation: estrogen receptor in tissue example"
Description: "Observation: estrogen receptor in tissue example"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#16112-5 "Estrogen receptor [Interpretation] in Tissue"
* subject = Reference(Patient/eumfh-39-07)
* effectiveDateTime = "2020-04-22T19:20:00+02:00"
* performer = Reference(TII-Organization1)
* valueCodeableConcept = $sct#416053008 "Estrogen receptor positive tumor"
* method = $sct#117259009 "Microscopy"

Instance: pregnancy-edd-example
InstanceOf: Observation
Title: "Observation: pregnancy edd example"
Description: "Observation: pregnancy edd example"
Usage: #example
* status = #final
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(patient-example-female)
* effectiveDateTime = "2020-01-10"
* valueDateTime = "2020-05-02"

Instance: pregnancy-outcome-example
InstanceOf: Observation
Title: "Observation: pregnancy outcome example"
Description: "Observation: pregnancy outcome example"
Usage: #example
* status = #final
* code = $loinc#11640-0 "[#] Births total"
* subject = Reference(patient-example-female)
* effectiveDateTime = "2020-01-10"
* valueQuantity = 1 '1'

Instance: pregnancy-status-example
InstanceOf: Observation
Title: "Observation: pregnancy status example"
Description: "Observation: pregnancy status example"
Usage: #example
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(patient-example-female)
* effectiveDateTime = "2020-01-10"
* valueCodeableConcept = $loinc#LA15173-0 "Pregnant"
* hasMember = Reference(pregnancy-edd-example)

Instance: serum-creatinine-adult
InstanceOf: Observation
Title: "Observation: serum creatinine example"
Description: "Observation: serum creatinine example"
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/eumfh-39-07)
* effectiveDateTime = "2018-02-16T09:17:00+01:00"
* performer = Reference(TII-Organization1)
* valueQuantity = 2.46 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H
* referenceRange[0].low = 0.76 'mg/dL' "mg/dL"
* referenceRange[=].high = 1.27 'mg/dL' "mg/dL"
* referenceRange[=].type = $referencerange-meaning#normal "Normal Range"
* referenceRange[=].appliesTo = $sct#248153007 "Male"
* referenceRange[=].age.low = 15 'a' "yrs"
* referenceRange[+].low = 0.57 'mg/dL' "mg/dL"
* referenceRange[=].high = 1 'mg/dL' "mg/dL"
* referenceRange[=].type = $referencerange-meaning#normal "Normal Range"
* referenceRange[=].appliesTo = $sct#248152002 "Female"
* referenceRange[=].age.low = 15 'a' "yrs"

Instance: tobaccouse-example
InstanceOf: Observation
Title: "Observation: SH tobaccouse example"
Description: "Observation: SH tobaccouse example"
Usage: #example
* status = #final
* code = $loinc#72166-2 "Tobacco smoking status"
* subject = Reference(patient-example-female)
* effectiveDateTime = "2019-07-15"
* valueCodeableConcept = $loinc#LA15920-4 "Former smoker"

Instance: trilliumII-example-imaging-1-of-Observation
InstanceOf: Observation
Title: "Observation: imaging CT Abdomen W contrast IV"
Description: "Observation: imaging CT Abdomen W contrast IV"
Usage: #example
* id = "trilliumII-example-imaging-1"
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $loinc#79103-8 "CT Abdomen W contrast IV"
* code.text = "Upper abdomen with the administration of oral and intravenous contrast (example-4)"
* subject = Reference(Patient/eumfh-39-07)
* effectiveDateTime = "1995-06-08"
* performer[0] = Reference(Practitioner/eumfh-39-07)
* performer[+] = Reference(TII-Organization1)
* valueString = "3 cm nodule present in the inferior medial aspect of right liver lobe. Contrast enhancement pattern consistent with the diagnosis of hemangioma."

Instance: trilliumII-example-imaging-4
InstanceOf: Observation
Title: "Observation: imaging CT Abdomen W contrast IV, sub-observations"
Description: "Observation: imaging CT Abdomen W contrast IV,sub-observations"
Usage: #example
* partOf = Reference(TII-ImagingStudy-5-1)
* status = #final
* category = $observation-category#imaging "Imaging"
* code = $loinc#79103-8 "CT Abdomen W contrast IV"
* code.text = "Upper abdomen with the administration of oral and intravenous contrast (example-4)"
* subject = Reference(Patient/eumfh-39-07)
* effectiveDateTime = "1995-06-08"
* performer[0] = Reference(Practitioner/eumfh-39-07)
* performer[+] = Reference(TII-Organization1)
* valueString = "3 cm nodule present in the inferior medial aspect of right liver lobe. Contrast enhancement pattern consistent with the diagnosis of hemangioma."
* component[0].code = $DCM#121065 "Procedure Description"
* component[=].valueString = "Serial imaging was obtained in the upper abdomen with the administration of oral and intravenous contrast."
* component[+].code = $DCM#121071 "Finding"
* component[=].valueString = "The examination demonstrates a well circumscribed 3 cm lesion present within the medial aspect of the inferior right liver lobe. Initial evaluation demonstrates lack of contrast enhancement. Subsequent imaging (not shown) demonstrated typical contrast enhancement pattern of a benign hemangioma of the liver. The remaining contrast enhancement pattern in the liver is normal. There is normal appearance of the adrenal glands, spleen, kidneys, and pancreas. There is no evidence of liver metastasis."

Instance: 890751f4-2924-4636-bab7-efffc7f3cf15
InstanceOf: Organization
Title: "Organization example 890751f4-2924-4636-bab7-efffc7f3cf15"
Description: "Organization example 890751f4-2924-4636-bab7-efffc7f3cf15 (from bundle)"
Usage: #example
* identifier.system = "urn:oid:2.16.528.1.1007.3.3"
* identifier.value = "564738757"
* active = true
* name = "Anorg Aniza Tion BV / The best custodian ever"
* telecom.system = #phone
* telecom.value = "+31-51-34343400"
* telecom.use = #work
* address.use = #work
* address.line = "Houttuinen 27"
* address.city = "Dordrecht"
* address.postalCode = "3311 CE"
* address.country = "Netherlands"

Instance: TII-Organization1
InstanceOf: Organization
Title: "Organization: example"
Description: "Organization: example"
Usage: #example
* name = "Someplace General Hospital"
* address.line = "123 Street Address"
* address.city = "Sometown"
* address.country = "Somecountry"

Instance: lab-org-example
InstanceOf: Organization
Title: "Organization: lab example"
Description: "Best Hospital Lab Organization example"
Usage: #example
* active = true
* type = $sct#73588009 "Hospital-based laboratory facility"
* name = "Best Hospital Laboratory"

Instance: simple-org
InstanceOf: Organization
Title: "Organization: simple example"
Description: "Very Simple Organization example"
Usage: #example
* name = "Best Diagnostic Department"

Instance: 66033
InstanceOf: Patient
Title: "Patient: minimal example"
Description: "Patient: minimal example"
Usage: #example
* identifier[0].system = "urn:oid:1.3.182.4.4"
* identifier[=].value = "1998041799999"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:647515ed-0d5e-4c99-b23d-073fbc593f76"
* name.family = "Lux-Brennard"
* name.given = "Marie"
* gender = #female
* birthDate = "1998-04-17"

Instance: eumfh-39-07-of-Patient
InstanceOf: Patient
Title: "Patient: male patient"
Description: "Patient: male patient"
Usage: #example
* id = "eumfh-39-07"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#US "United States of America"
* identifier[0].system = "http://trilliumbridge.eu/fhir/demos/eumfh/inject"
* identifier[=].value = "39-07"
* identifier[+].system = "http://trilliumbridge.eu/fhir/demos/eumfh/patient_id"
* identifier[=].value = "EUR01P0001"
* active = true
* name.family = "Heig"
* name.given = "Alexander"
* gender = #male
* birthDate = "1957"

Instance: patient-example-female
InstanceOf: Patient
Title: "Patient: female patient"
Description: "Patient: female patient"
Usage: #example
* identifier.system = "urn:oid:2.16.840.1.113883.2.4.6.3"
* identifier.value = "574687583"
* active = true
* name.family = "DeLarosa"
* name.given = "Martha"
* telecom.system = #phone
* telecom.value = "+31788700800"
* telecom.use = #home
* gender = #female
* birthDate = "1992-05-01"
* address.line = "Laan Van Europa 1600"
* address.city = "Dordrecht"
* address.postalCode = "3317 DB"
* address.country = "NL"
* contact.relationship = $v3-RoleCode#MTH
* contact.name.family = "Mum"
* contact.name.given = "Martha"
* contact.telecom.system = #phone
* contact.telecom.value = "+33-555-20036"
* contact.telecom.use = #home
* contact.address.line = "Promenade des Anglais 111"
* contact.address.city = "Lyon"
* contact.address.postalCode = "69001"
* contact.address.country = "FR"

Instance: 1c616b24-3895-48c4-9a02-9a64110351ef
InstanceOf: Practitioner
Title: "Practitioner example 1c616b24-3895-48c4-9a02-9a64110351ef"
Description: "Practitioner example 1c616b24-3895-48c4-9a02-9a64110351ef (from bundle)"
Usage: #example
* identifier.system = "urn:oid:2.16.528.1.1007.3.1"
* identifier.value = "129854633"
* identifier.assigner.display = "CIBG"
* active = true
* name.family = "van Hulp"
* name.given = "Beetje"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"

Instance: eumfh-39-07-of-Practitioner
InstanceOf: Practitioner
Title: "Practitioner example"
Description: "Practitioner example"
Usage: #example
* id = "eumfh-39-07"
* name.family = "Antonio"
* name.given = "Mark"
* name.prefix = "Dr."

Instance: simple-pr
InstanceOf: PractitionerRole
Title: "PractitionerRole: simple example"
Description: "Very Simple PractitionerRole example"
Usage: #example
* practitioner = Reference(Practitioner/eumfh-39-07)
* organization = Reference(simple-org)

Instance: eumfh-39-07-1-of-Procedure
InstanceOf: Procedure
Title: "Procedure: Surgical procedure"
Description: "Procedure: Surgical procedure"
Usage: #example
* id = "eumfh-39-07-1"
* status = #completed
* category = $sct#387713003 "Surgical procedure"
* code.coding[0] = $sct#233404000 "Insertion of arterial stent"
* code.coding[+] = $sct#233258006 "Balloon angioplasty of artery"
* code.text = "Previous balloon angioplasty on mid-LAD stenosis with STENT Implantation"
* subject = Reference(Patient/eumfh-39-07) "Alexander Heig (inject 39-07)"
* performedPeriod.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* performedPeriod.extension.valueCode = #unknown

Instance: specimen-example-1
InstanceOf: Specimen
Title: "Specimen: example"
Description: "Specimen: example"
Usage: #example
* type = $sct#122575003 "Urine specimen"
* subject = Reference(66033)
* collection.method = $sct#73416001 "Urine specimen collection, clean catch"

Instance: current-smoking-status-uv-ips
InstanceOf: $shareablevalueset
Title: "Current Smoking Status - IPS"
Description: "Value Set based on HL7 Vocab TC and Structured Doc consensus (per CDC submission 7/12/2012 for smoking status term)"
Usage: #definition
* url = "http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips"
* identifier.use = #official
* identifier.system = "http://art-decor.org/ns/oids/vs"
* identifier.value = "2.16.840.1.113883.11.22.59"
* version = "1.0.0"
* name = "CurrentSmokingStatusUvIps"
* title = "Current Smoking Status - IPS"
* status = #active
* experimental = false
* date = "2021-05-14T21:56:28-05:00"
* publisher = "Health Level Seven International - Patient Care Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* description = "Value Set based on HL7 Vocab TC and Structured Doc consensus (per CDC submission 7/12/2012 for smoking status term)"
* jurisdiction = $m49.htm#001
* immutable = false
* copyright = "This artifact includes content from LOINC®. LOINC codes are copyright Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee. Terms & Conditions in https://loinc.org/license/"
* compose.include.system = "http://loinc.org"
* compose.include.concept[0].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 1
* compose.include.concept[=].code = #LA18976-3
* compose.include.concept[=].display = "Current every day smoker"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 2
* compose.include.concept[=].code = #LA18977-1
* compose.include.concept[=].display = "Current some day smoker"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 3
* compose.include.concept[=].code = #LA15920-4
* compose.include.concept[=].display = "Former smoker"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 4
* compose.include.concept[=].code = #LA18978-9
* compose.include.concept[=].display = "Never smoker"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 5
* compose.include.concept[=].code = #LA18979-7
* compose.include.concept[=].display = "Smoker, current status unknown"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 6
* compose.include.concept[=].code = #LA18980-5
* compose.include.concept[=].display = "Unknown if ever smoked"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 7
* compose.include.concept[=].code = #LA18981-3
* compose.include.concept[=].display = "Heavy tobacco smoker"
* compose.include.concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 8
* compose.include.concept[=].code = #LA18982-1
* compose.include.concept[=].display = "Light tobacco smoker"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-1
InstanceOf: Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4d"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* date = "2017-12-11T14:30:00+01:00"
* author = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* title = "Patient Summary as of December 11, 2017 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[=].time = "2017-12-11T14:30:00+01:00"
* attester[=].party = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* attester[+].mode = #legal
* attester[=].time = "2017-12-11T14:30:00+01:00"
* attester[=].party = Reference(890751f4-2924-4636-bab7-efffc7f3cf15)
* custodian = Reference(890751f4-2924-4636-bab7-efffc7f3cf15)
* relatesTo.code = #appends
* relatesTo.targetIdentifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* relatesTo.targetIdentifier.value = "c2277753-9f90-4a95-8ddb-a0b3f6e7d292"
* event.code = $v3-ActClass#PCPR
* event.period.end = "2017-12-11T14:30:00+01:00"
* section[0].title = "Active Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hot flushes</div>"
* section[=].entry = Reference(c64139e7-f02d-409c-bf34-75e8bf23bc80)
* section[+].title = "Medication"
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t\t<table>\n\t\t\t\t\t\t\t\t<thead>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Medication</th>\n\t\t\t\t\t\t\t\t\t\t<th>Strength</th>\n\t\t\t\t\t\t\t\t\t\t<th>Form</th>\n\t\t\t\t\t\t\t\t\t\t<th>Dosage</th>\n\t\t\t\t\t\t\t\t\t\t<th>Comment</th>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</thead>\n\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Anastrozole</td>\n\t\t\t\t\t\t\t\t\t\t<td>1 mg</td>\n\t\t\t\t\t\t\t\t\t\t<td>tablet</td>\n\t\t\t\t\t\t\t\t\t\t<td>once daily</td>\n\t\t\t\t\t\t\t\t\t\t<td>treatment for breast cancer</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Black Cohosh Extract</td>\n\t\t\t\t\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t\t\t\t\t\t<td>pil</td>\n\t\t\t\t\t\t\t\t\t\t<td> </td>\n\t\t\t\t\t\t\t\t\t\t<td>herbal supplement</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</tbody>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</div>"
* section[=].entry[0] = Reference(c220e36c-eb67-4fc4-9ba1-2fabc52acec6)
* section[=].entry[+] = Reference(MedicationStatement/47524493-846a-4a26-bae2-4ab03e60f02e)
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active\n\t\t\t\t\t\t\tNo known food allergies\n\t\t\t\t\t\t</div>"
* section[=].entry[0] = Reference(AllergyIntolerance/72884cad-ebe6-4f43-a51a-2f978275f132)
* section[=].entry[+] = Reference(c7781f44-6df8-4a8b-9e06-0b34263a47c5)
* section[+].title = "History of Past Illness"
* section[=].code = $loinc#11348-0 "Hx of Past illness"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Breast cancer Stage II with no evidence of recurrence following treatment</div>"
* section[=].entry = Reference(c4597aa2-688a-401b-a658-70acc6de28c6)
* section[+].title = "Plan of Treatment"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Continue hormone medication with Anastrozole for total of 5 years and monitor for potential breast cancer recurrence</div>"
* section[+].title = "Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t\t<table>\n\t\t\t\t\t\t\t\t<thead>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th colspan=\"3\">Blood typing</th>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</thead>\n\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Blood group</td>\n\t\t\t\t\t\t\t\t\t\t<td>A+</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>C Ab [Presence] in Serum or Plasma</td>\n\t\t\t\t\t\t\t\t\t\t<td>Positive</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>E Ab [Presence] in Serum or Plasma</td>\n\t\t\t\t\t\t\t\t\t\t<td>Positive</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Little c Ab [Presence] in Serum or Plasma</td>\n\t\t\t\t\t\t\t\t\t\t<td>Negative</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</tbody>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t<table>\n\t\t\t\t\t\t\t\t<thead>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th colspan=\"3\">Hemoglobin A1c monitoring</th>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</thead>\n\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Hemoglobin A1c/Hemoglobin.total in Blood by HPLC</td>\n\t\t\t\t\t\t\t\t\t\t<td>7.5 %</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</tbody>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t<table>\n\t\t\t\t\t\t\t\t<thead>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th colspan=\"3\">Bacteriology</th>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</thead>\n\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td colspan=\"3\">Methicillin resistant Staphylococcus aureus</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td colspan=\"3\">Healthy carrier of MRSA</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</tbody>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</div>"
* section[=].entry[0] = Reference(Observation/2639657a-c19a-48e2-82cc-471e13b8ad94)
* section[=].entry[+] = Reference(cc354e00-a419-47ea-8b6c-1768b2a01646)
* section[=].entry[+] = Reference(Observation/26bee0a9-5997-4557-ab9d-c6adbb05b572)

Instance: Inline-Instance-for-IPS-examples-Bundle-01-2
InstanceOf: Patient
Usage: #inline
* id = "2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* identifier.system = "urn:oid:2.16.840.1.113883.2.4.6.3"
* identifier.value = "574687583"
* active = true
* name.family = "DeLarosa"
* name.given = "Martha"
* telecom.system = #phone
* telecom.value = "+31788700800"
* telecom.use = #home
* gender = #female
* birthDate = "1972-05-01"
* address.line = "Laan Van Europa 1600"
* address.city = "Dordrecht"
* address.postalCode = "3317 DB"
* address.country = "Netherlands"
* contact.relationship = $v3-RoleCode#MTH
* contact.name.family = "Mum"
* contact.name.given = "Martha"
* contact.telecom.system = #phone
* contact.telecom.value = "+33-555-20036"
* contact.telecom.use = #home
* contact.address.line = "Promenade des Anglais 111"
* contact.address.city = "Lyon"
* contact.address.postalCode = "69001"
* contact.address.country = "France"

Instance: c64139e7-f02d-409c-bf34-75e8bf23bc80
InstanceOf: Condition
Usage: #inline
* identifier.system = "urn:oid:1.2.3.999"
* identifier.value = "c87bf51c-e53c-4bfe-b8b7-aa62bdd93002"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $loinc#75326-9 "Problem"
* severity = $loinc#LA6751-7 "Moderate"
* code.coding[0] = $sct#198436008 "Menopausal flushing (finding)"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #nl-NL
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "opvliegers"
* code.coding[+] = $icd-10#N95.1 "Menopausal and female climacteric states"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* onsetDateTime = "2015"
* recordedDate = "2016-10"

Instance: c220e36c-eb67-4fc4-9ba1-2fabc52acec6
InstanceOf: MedicationStatement
Usage: #inline
* identifier.system = "urn:oid:1.2.3.999"
* identifier.value = "b75f92cb-61d4-469a-9387-df5ef70d25f0"
* status = #active
* medicationReference = Reference(Medication/976d0804-cae0-45ae-afe3-a19f3ceba6bc)
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectivePeriod.start = "2015-03"
* dosage.timing.repeat.count = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $standardterms#20053000 "Oral use"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 1 '1' "tablet"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-5
InstanceOf: MedicationStatement
Usage: #inline
* id = "47524493-846a-4a26-bae2-4ab03e60f02e"
* identifier.system = "urn:oid:1.2.3.999"
* identifier.value = "9e312d6b-c6b6-439a-a730-6efaa5dcf8bc"
* status = #active
* medicationReference = Reference(Medication/8adc0999-9468-4ac9-9557-680fa133d626)
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectivePeriod.start = "2016-01"
* dosage.route = $standardterms#20053000 "Oral use"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-6
InstanceOf: Medication
Usage: #inline
* id = "976d0804-cae0-45ae-afe3-a19f3ceba6bc"
* code.coding[0] = $sct#108774000 "Product containing anastrozole (medicinal product)"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.4.4.1#99872 "ANASTROZOL 1MG TABLET"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.4.4.7#2076667 "ANASTROZOL CF TABLET FILMOMHULD 1MG"
* code.coding[+] = $atc#L02BG03 "anastrozole"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-7
InstanceOf: Medication
Usage: #inline
* id = "8adc0999-9468-4ac9-9557-680fa133d626"
* code.coding[0] = $sct#412588001 "Cimicifuga racemosa extract (substance)"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #nl-NL
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Zwarte Cohosh Extract"
* code.coding[+] = $atc#G02CX04 "Cimicifugae rhizoma"
* code.text = "Black Cohosh Extract herbal supplement"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-8
InstanceOf: AllergyIntolerance
Usage: #inline
* id = "72884cad-ebe6-4f43-a51a-2f978275f132"
* identifier.system = "urn:oid:1.2.3.999"
* identifier.value = "3a462598-009c-484a-965c-d6b24a821424"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#373270004 "Substance with penicillin structure and antibacterial mechanism of action (substance)"
* patient = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* onsetDateTime = "2010"

Instance: c4597aa2-688a-401b-a658-70acc6de28c6
InstanceOf: Condition
Usage: #inline
* identifier.system = "urn:oid:1.2.3.999"
* identifier.value = "66d4a8c7-9081-43e0-a63f-489c2ae6edd6"
* clinicalStatus = $condition-clinical#remission
* verificationStatus = $condition-ver-status#confirmed
* category = $loinc#75326-9 "Problem"
* severity = $loinc#LA6750-9 "Severe"
* code.coding[0] = $sct#254837009 "Malignant tumor of breast"
* code.coding[=].display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding[=].display.extension.extension[0].url = "lang"
* code.coding[=].display.extension.extension[=].valueCode = #nl-NL
* code.coding[=].display.extension.extension[+].url = "content"
* code.coding[=].display.extension.extension[=].valueString = "Borstkanker stadium II zonder aanwijzingen van recidieven na behandeling"
* code.coding[+] = urn:oid:2.16.840.1.113883.6.43.1#8500/3 "Infiltrating duct carcinoma, NOS"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* onsetDateTime = "2015-01"
* abatementDateTime = "2015-03"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-9
InstanceOf: Organization
Usage: #inline
* id = "45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7"
* active = true
* type = $organization-type#other
* name = "Laboratoire de charme"

Instance: aa11a2be-3e36-4be7-b58a-6fc3dace2741
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#882-1 "ABO and Rh group [Type] in Blood"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2015-10-10T09:15:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueCodeableConcept = $sct#278149003 "Blood group A Rh(D) positive"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-10
InstanceOf: Observation
Usage: #inline
* id = "6e39ccf3-f997-4a2b-8f28-b4b71c778c70"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#945-6 "C Ab [Presence] in Serum or Plasma"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2015-10-10T09:35:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueCodeableConcept = $sct#10828004 "Positive"

Instance: b4916505-a06b-460c-9be8-011609282457
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#1018-1 "E Ab [Presence] in Serum or Plasma"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2015-10-10T09:35:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueCodeableConcept = $sct#10828004 "Positive"

Instance: a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#1156-9 "little c Ab [Presence] in Serum or Plasma"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2015-10-10T09:35:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-11
InstanceOf: Observation
Usage: #inline
* id = "2639657a-c19a-48e2-82cc-471e13b8ad94"
* status = #final
* category = $observation-category#laboratory
* code.text = "Blood typing"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2015-10-10"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* hasMember[0] = Reference(aa11a2be-3e36-4be7-b58a-6fc3dace2741)
* hasMember[+] = Reference(Observation/6e39ccf3-f997-4a2b-8f28-b4b71c778c70)
* hasMember[+] = Reference(b4916505-a06b-460c-9be8-011609282457)
* hasMember[+] = Reference(a6a5a1d5-c896-4c7e-b922-888fcc7e6ae4)

Instance: cc354e00-a419-47ea-8b6c-1768b2a01646
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#laboratory
* code = $loinc#17856-6 "Hemoglobin A1c/Hemoglobin.total in Blood by HPLC"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2017-11-10T08:20:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueQuantity = 7.5 '%' "%"
* note.text = "Above stated goal of 7.0 %"

Instance: Inline-Instance-for-IPS-examples-Bundle-01-12
InstanceOf: Observation
Usage: #inline
* id = "26bee0a9-5997-4557-ab9d-c6adbb05b572"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#42803-7 "Bacteria identified in Isolate"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* effectiveDateTime = "2017-12-10T08:20:00+01:00"
* performer = Reference(Organization/45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fd7)
* valueCodeableConcept = $sct#115329001 "Methicillin resistant Staphylococcus aureus"
* note.text = "Healthy carrier of MRSA"

Instance: c7781f44-6df8-4a8b-9e06-0b34263a47c5
InstanceOf: AllergyIntolerance
Usage: #inline
* clinicalStatus = $allergyintolerance-clinical#active
* code = $absent-unknown-uv-ips#no-known-food-allergies
* patient = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)

Instance: Inline-Instance-for-IPS-examples-Bundle-minimal-1
InstanceOf: Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4d"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* date = "2020-12-11T14:30:00+01:00"
* author = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* title = "Patient Summary as of December 11, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[=].time = "2020-12-11T14:30:00+01:00"
* attester[=].party = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* attester[+].mode = #legal
* attester[=].time = "2020-12-11T14:30:00+01:00"
* attester[=].party = Reference(890751f4-2924-4636-bab7-efffc7f3cf15)
* custodian = Reference(890751f4-2924-4636-bab7-efffc7f3cf15)
* relatesTo.code = #appends
* relatesTo.targetIdentifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* relatesTo.targetIdentifier.value = "c2277753-9f90-4a95-8ddb-a0b3f6e7d292"
* event.code = $v3-ActClass#PCPR
* event.period.end = "2020-12-11T14:30:00+01:00"
* section[0].title = "Active Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hot flushes</div>"
* section[=].entry = Reference(c64139e7-f02d-409c-bf34-75e8bf23bc80)
* section[+].title = "Medication"
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t\t<table>\n\t\t\t\t\t\t\t\t<thead>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Medication</th>\n\t\t\t\t\t\t\t\t\t\t<th>Strength</th>\n\t\t\t\t\t\t\t\t\t\t<th>Form</th>\n\t\t\t\t\t\t\t\t\t\t<th>Dosage</th>\n\t\t\t\t\t\t\t\t\t\t<th>Comment</th>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</thead>\n\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Anastrozole</td>\n\t\t\t\t\t\t\t\t\t\t<td>1 mg</td>\n\t\t\t\t\t\t\t\t\t\t<td>tablet</td>\n\t\t\t\t\t\t\t\t\t\t<td>once daily</td>\n\t\t\t\t\t\t\t\t\t\t<td>treatment for breast cancer</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</tbody>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</div>"
* section[=].entry = Reference(c220e36c-eb67-4fc4-9ba1-2fabc52acec6)
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active\n\t\t\t\t\t\t\tNo known food allergies\n\t\t\t\t\t\t</div>"
* section[=].entry = Reference(AllergyIntolerance/72884cad-ebe6-4f43-a51a-2f978275f132)

Instance: Inline-Instance-for-IPS-examples-Bundle-minimal-2
InstanceOf: Patient
Usage: #inline
* id = "2b90dd2b-2dab-4c75-9bb9-a355e07401e8"
* identifier.system = "urn:oid:2.16.840.1.113883.2.4.6.3"
* identifier.value = "574687583"
* active = true
* name.family = "DeLarosa"
* name.given = "Martha"
* telecom.system = #phone
* telecom.value = "+31788700800"
* telecom.use = #home
* gender = #female
* birthDate = "1972-05-01"
* address.line = "Laan Van Europa 1600"
* address.city = "Dordrecht"
* address.postalCode = "3317 DB"
* address.country = "Netherlands"
* contact.relationship = $v3-RoleCode#MTH
* contact.name.family = "Mum"
* contact.name.given = "Martha"
* contact.telecom.system = #phone
* contact.telecom.value = "+33-555-20036"
* contact.telecom.use = #home
* contact.address.line = "Promenade des Anglais 111"
* contact.address.city = "Lyon"
* contact.address.postalCode = "69001"
* contact.address.country = "France"

Instance: Inline-Instance-for-IPS-examples-Bundle-minimal-7
InstanceOf: Medication
Usage: #inline
* id = "976d0804-cae0-45ae-afe3-a19f3ceba6bc"
* code.coding[0] = $sct#108774000 "Product containing anastrozole (medicinal product)"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.4.4.1#99872 "ANASTROZOL 1MG TABLET"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.4.4.7#2076667 "ANASTROZOL CF TABLET FILMOMHULD 1MG"
* code.coding[+] = $atc#L02BG03 "anastrozole"

Instance: Inline-Instance-for-IPS-examples-Bundle-minimal-8
InstanceOf: AllergyIntolerance
Usage: #inline
* id = "72884cad-ebe6-4f43-a51a-2f978275f132"
* identifier.system = "urn:oid:1.2.3.999"
* identifier.value = "3a462598-009c-484a-965c-d6b24a821424"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* category = #medication
* criticality = #high
* code = $sct#373270004 "Substance with penicillin structure and antibacterial mechanism of action (substance)"
* patient = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* onsetDateTime = "2010"






Instance: Inline-Instance-for-QORE-example-encounter-minimal-1
InstanceOf: Encounter
Usage: #inline
* id = "b24f21bc-1201-4ca5-a62d-d986bf37869f"
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER

Instance: Inline-Instance-for-QORE-examples-Bundle-minimal-1
InstanceOf: IHE_QORE_Composition
Usage: #inline
* id = "30551ce1-5a28-4356-b684-1e639094ad4c"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.11"
* identifier.value = "3f69e0a5-2177-4540-baab-7a5d0877428c"
* status = #final
* type = $loinc#18842-5 "Discharge summary"
* subject = Reference(Patient/2b90dd2b-2dab-4c75-9bb9-a355e07401e8)
* date = "2020-12-11T14:30:00+01:00"
* author = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* title = "Patient Summary as of October 27, 2021 14:30"
* confidentiality = #N
* encounter = Reference(b24f21bc-1201-4ca5-a62d-d986bf37869f)
* attester[0].mode = #legal
* attester[=].time = "2020-12-11T14:30:00+01:00"
* attester[=].party = Reference(1c616b24-3895-48c4-9a02-9a64110351ef)
* attester[+].mode = #legal
* attester[=].time = "2020-12-11T14:30:00+01:00"
* attester[=].party = Reference(890751f4-2924-4636-bab7-efffc7f3cf15)
* custodian = Reference(890751f4-2924-4636-bab7-efffc7f3cf15)
* relatesTo.code = #appends
* relatesTo.targetIdentifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* relatesTo.targetIdentifier.value = "c2277753-9f90-4a95-8ddb-a0b3f6e7d292"
* event.code = $v3-ActClass#PCPR
* event.period.end = "2020-12-11T14:30:00+01:00"
* section[0].title = "Active Problems"
* section[=].code = $loinc#11450-4 "Problem list Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hot flushes</div>"
* section[=].entry = Reference(c64139e7-f02d-409c-bf34-75e8bf23bc80)
* section[+].title = "Medication"
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t\t\t\t\t<table>\n\t\t\t\t\t\t\t\t<thead>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<th>Medication</th>\n\t\t\t\t\t\t\t\t\t\t<th>Strength</th>\n\t\t\t\t\t\t\t\t\t\t<th>Form</th>\n\t\t\t\t\t\t\t\t\t\t<th>Dosage</th>\n\t\t\t\t\t\t\t\t\t\t<th>Comment</th>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</thead>\n\t\t\t\t\t\t\t\t<tbody>\n\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t<td>Anastrozole</td>\n\t\t\t\t\t\t\t\t\t\t<td>1 mg</td>\n\t\t\t\t\t\t\t\t\t\t<td>tablet</td>\n\t\t\t\t\t\t\t\t\t\t<td>once daily</td>\n\t\t\t\t\t\t\t\t\t\t<td>treatment for breast cancer</td>\n\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t</tbody>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</div>"
* section[=].entry = Reference(c220e36c-eb67-4fc4-9ba1-2fabc52acec6)
* section[+].title = "Allergies and Intolerances"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergy to penicillin, high criticality, active\n\t\t\t\t\t\t\tNo known food allergies\n\t\t\t\t\t\t</div>"
* section[=].entry = Reference(AllergyIntolerance/72884cad-ebe6-4f43-a51a-2f978275f132)

