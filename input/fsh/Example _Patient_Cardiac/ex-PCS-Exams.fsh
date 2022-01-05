Instance:   ex-PCS-Exams-Estimated-Body-Weight-in-Kilograms
InstanceOf: Observation
Title: "Example of Estimated Body Weight in Kilograms"
Description:      "holding typical values for The patient's body weight in kilograms either measured or estimated."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8335-2
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
* component.value[x].valueQuantity.value = ""
* component.value[x].valueQuantity.code = http://unitsofmeasure.org#kg
//NEMSIS Estimated Body Weight in Kilograms (eExam.01)
* performer = Reference(Practitioner/ex-practitioner)


Instance:   ex-PCS-Exams-Length-Based-Tape-Measure
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of The length-based color as taken from the tape."
Description:      "holding typical values for The patient's length-based color as taken from the tape."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Length Based Tape Measure (eExam.02)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-Skin-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of ......."
Description:      "......"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Skin Assessment (eExam.04)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-Head-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Head Assessment (eExam.05)
* performer = Reference(Practitioner/ex-practitioner)


Instance:   ex-PCS-Exams-Face-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Face Assessment (eExam.06)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-Neck-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Neck Assessment (eExam.07)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-Heart-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Heart Assessment (eExam.09)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-Abdomen-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Abdomen Assessment (eExam.11)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Abdomen Assessment Finding Location (eExam.10)

Instance:   ex-PCS-Exams-Pelvis/Genitourinary-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Pelvis/Genitourinary Assessment (eExam.12)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-BackAndSpine-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Back and Spine  Assessment (eExam.14)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Back and Spine  Assessment Finding Location (eExam.13)

Instance:   ex-PCS-Exams-Extremity-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Extremity Assessment (eExam.16)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Extremity Assessment Finding Location (eExam.15)

Instance:   ex-PCS-Exams-Eye-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Eye Assessment (eExam.18)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Eye Assessment Finding Location (eExam.17)

Instance:   ex-PCS-Exams-Lung-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Lung Assessment (eExam.23)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Lung Assessment Finding Location (eExam.22)

Instance:   ex-PCS-Exams-Chest-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Chest Assessment (eExam.25)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Chest Assessment Finding Location (eExam.24)

Instance:   ex-PCS-Exams-Chest-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Chest Assessment (eExam.25)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Chest Assessment Finding Location (eExam.24)


Instance:   ex-PCS-Exams-Chest-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Chest Assessment (eExam.25)
* performer = Reference(Practitioner/ex-practitioner)
* bodysite = 
//NEMSIS Chest Assessment Finding Location (eExam.24)


Instance:   ex-PCS-Exams-MentalStatus-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Mental Status Assessment (eExam.19)
* performer = Reference(Practitioner/ex-practitioner)



Instance:   ex-PCS-Exams-Neurological-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Neurological Assessment (eExam.20)
* performer = Reference(Practitioner/ex-practitioner)

Instance:   ex-PCS-Exams-Stroke/CVASymptomsResolved-Assessment
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of T......."
Description:      "......."
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T20:50:50-05:00"
//NEMSIS Date/Time of Assessment (eExam.03)
//NEMSIS Stroke/CVA Symptoms Resolved Assessment (eExam.21)
* performer = Reference(Practitioner/ex-practitioner)
