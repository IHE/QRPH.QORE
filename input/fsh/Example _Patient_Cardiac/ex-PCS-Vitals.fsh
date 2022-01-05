Instance:   ex-PCS-Vitals-Heart-Rate-Rhythm
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of an PCS VitalSigns Heart Rate Rhythm Vital Sign"
Description:      "holding typical values for the Heart Rate Rhythm Vital Sign"
//Derived from NEMSIS Cardiac Rhythm / Electrocardiography (ECG) (eVitals.03) vital sign. 
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8884-9
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T23:50:50-05:00"
//NEMSIS element Date/Time Vital Signs Taken (eVitals.01)
* performer = Reference(Practitioner/ex-practitioner)
* value[x].CodeableConcept = NEMSIS.eVitals03.CardiacRhythm.VS#9901003
//Cardiac Rhythm / Electrocardiography (ECG) (eVitals.03)
* method [+] = NEMSIS.eVitals05.MethodOfECGInterpretation.VS#3305001
* method [+] = NEMSIS.eVitals05.MethodOfECGInterpretation.VS#3305007 
//Method of ECG Interpretation (eVitals.05)
* device = Reference(Device/ex-device)
//ECG Type (eVitals.04)
* derivedFrom = Reference(Media/ex-media)

Instance:   ex-PCS-Vitals-Heart-Rate-Rhythm-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of an PCS VitalSigns Heart Rate Rhythm Vital Sign where data is absent"
Description:      "holding typical values for the Heart Rate Rhythm Vital Sign data is absent"
//Derived from NEMSIS Cardiac Rhythm / Electrocardiography (ECG) (eVitals.03),  ECG Type (eVitals.04), Method of ECG Interpretation (eVitals.05) vital signs. 
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8884-9
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T23:50:50-05:00"
//NEMSIS element Date/Time Vital Signs Taken (eVitals.01)
* performer = Reference(Practitioner/ex-practitioner)
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//Cardiac Rhythm / Electrocardiography (ECG) (eVitals.03)
* method = NEMSIS.NotValues.VS#7701001
//Method of ECG Interpretation (eVitals.05)

Instance:   ex-PCS-Vitals-Heart-Rate-Rhythm-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Example of an PCS VitalSigns Heart Rate Rhythm Vital Sign where vital sign is not performed"
Description:      "holding typical values for the Heart Rate Rhythm Vital Sign"
//Derived from NEMSIS Cardiac Rhythm / Electrocardiography (ECG) (eVitals.03) vital sign. 
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8884-9
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effective[x].DateTime = "2004-12-25T23:50:50-05:00"
//NEMSIS element Date/Time Vital Signs Taken (eVitals.01)
* performer = Reference(Practitioner/ex-practitioner)
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//Cardiac Rhythm / Electrocardiography (ECG) (eVitals.03)
* method = NEMSIS.NotValues.VS#7701001
//Method of ECG Interpretation (eVitals.05)

Instance: ex-PCS-Vitals-BloodPresssure
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* component:SystolicBP.value[x] = "121"
//NEMSIS  SBP (Systolic Blood Pressure)(eVitals.06)
* component:DiastolicBP.value[x] = "83"
//NEMSIS DBP (Diastolic Blood Pressure) (eVitals.07)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.eVitals08.MethodOfBloodPressureMeasurement.VS#3308005
//NEMSIS  Method of Blood Pressure Measurement (eVitals.08)

Instance: ex-PCS-Vitals-BloodPresssure-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* component:SystolicBP.dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS  SBP (Systolic Blood Pressure)(eVitals.06)
* component:DiastolicBP.dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS DBP (Diastolic Blood Pressure) (eVitals.07)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.NotValues.VS#7701001
//NEMSIS  Method of Blood Pressure Measurement (eVitals.08)

Instance: ex-PCS-Vitals-BloodPresssure-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/bp
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* component:SystolicBP.dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS  SBP (Systolic Blood Pressure)(eVitals.06)
* component:DiastolicBP.dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS DBP (Diastolic Blood Pressure) (eVitals.07)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.NotValues.VS#7701001
//NEMSIS  Method of Blood Pressure Measurement (eVitals.08)

Instance: ex-PCS-Vitals-Mean-Arterial-Pressure
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8478-0
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* value[x] = http://unitsofmeasure.org#mm[Hg]
* value[x].valueInteger = "80"
//NEMSIS Mean Arterial Pressure (eVitals.09)

Instance: ex-PCS-Vitals-Heart-Rate
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* value[x].value = "76"
//NEMSIS Heart Rate (eVitals.10)
* method = NEMSIS.eVitals11.MethodOfHeartRateMeasurement.VS#3311005
//NEMSIS Method of Heart Rate Measurement (eVitals.11)

Instance: ex-PCS-Vitals-Heart-Rate-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Heart Rate (eVitals.10)

Instance: ex-PCS-Vitals-Heart-Rate-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/heartrate
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Heart Rate (eVitals.10)

Instance: ex-PCS-Vitals-Pulse-Oximetry
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* value[x].value = "98"
//NEMSIS Pulse Oximetry (eVitals.12)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Pulse-Oximetry-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Pulse Oximetry (eVitals.12)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Pulse-Oximetry-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/oxygensat
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Pulse Oximetry (eVitals.12)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Pulse-Rhythm
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* value[x].valueCodeableConcept	 = EMSIS.eVitals13.PulseRhythm.VS#3313003
//NEMSIS Pulse Rhythm (eVitals.13)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Respiratory-Rate
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* value[x].value = "22"
//NEMSIS Respiratory Rate (eVitals.14)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Respiratory-Rate-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Respiratory Rate (eVitals.14)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Respiratory-Rate-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/resprate
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Respiratory Rate (eVitals.14)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Respiratory-Effort
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LL3854-8 
* value[x].valueCodeableConcept	 = NEMSIS.eVitals15.RespiratoryEffort.VS#3315007
//NEMSIS Respiratory Effort (eVitals.15)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-End-Tidal-Carbon-Dioxide-(ETCO2)
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LP15150-3
* component.value[x] = http://unitsofmeasure.org#mm[Hg]
//equal to the NEMSIS ETCO2Type
* component.value[x].value = "35"
//NEMSIS  End Tidal Carbon Dioxide (ETCO2) (eVitals.16)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-End-Tidal-Carbon-Dioxide-(ETCO2)-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LP15150-3
* component.dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS  End Tidal Carbon Dioxide (ETCO2) (eVitals.16)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-End-Tidal-Carbon-Dioxide-(ETCO2)-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LP15150-3
* component.dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS  End Tidal Carbon Dioxide (ETCO2) (eVitals.16)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-End-Tidal-Carbon-Monoxide-(CO)
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#2030-5
* component.value[x] = http://unitsofmeasure.org#%
* component.value[x].value = "2"
//NEMSIS Carbon Monoxide (CO) (eVitals.17)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-End-Tidal-Carbon-Monoxide-(CO)-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#2030-5
* component.dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Carbon Monoxide (CO) (eVitals.17)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-End-Tidal-Carbon-Monoxide-(CO)-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#2030-5
* component.dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Carbon Monoxide (CO) (eVitals.17)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Blood-Glucose-Level
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#14743-9
* value[x].valueQuantity.value = "146"
//NEMSIS Blood Glucose Level (eVitals.18)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Blood-Glucose-Level-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#14743-9
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Blood Glucose Level (eVitals.18)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Blood-Glucose-Level-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#14743-9
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Blood Glucose Level (eVitals.18)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Eye
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9267-6
* value[x].valueCodeableConcept	= NEMSIS.eVitals19.GlasgowComaScoreEye.VS#4
//NEMSIS Glasgow Coma Score-Eye (eVitals.19)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Eye-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9267-6
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Glasgow Coma Score-Eye (eVitals.19)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Eye-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9267-6
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Glasgow Coma Score-Eye (eVitals.19)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Verbal
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9270-0
* value[x].valueCodeableConcept	= NEMSIS.eVitals20.GlasgowComaScoreVerbal.VS#5
//NEMSIS Glasgow Coma Score-Verbal (eVitals.20)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Verbal-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9270-0
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Glasgow Coma Score-Verbal (eVitals.20)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Verbal-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9270-0
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Glasgow Coma Score-Verbal (eVitals.20)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Motor
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9268-4
* value[x].valueCodeableConcept	= NEMSIS.eVitals21.GlasgowComaScoreMotor.VS#6
//NEMSIS Glasgow Coma Score-Motor (eVitals.21)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Motor-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9268-4
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Glasgow Coma Score-Motor (eVitals.21)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Motor-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9268-4
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Glasgow Coma Score-Motor (eVitals.21)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Qualifier
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LL1852-4
* value[x].valueCodeableConcept	= NEMSIS.eVitals22.GlasgowComaScoreQualifier.VS#3322003
//NEMSIS Glasgow Coma Score-Qualifier (eVitals.22)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Qualifier-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LL1852-4
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Glasgow Coma Score-Qualifier (eVitals.22)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Glasgow-Coma-Score-Qualifier-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#LL1852-4
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Glasgow Coma Score-Qualifier (eVitals.22)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Total-Glasgow-Coma-Score
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9269-2
* value[x].valueInteger	= "15"
//NEMSIS Total Glasgow Coma Score (eVitals.23)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Total-Glasgow-Coma-Score-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9269-2
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Total Glasgow Coma Score (eVitals.23)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Total-Glasgow-Coma-Score-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9269-2
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Total Glasgow Coma Score (eVitals.23)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Temperature
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* value[x].value = "98.6"
//NEMSIS Temperature (eVitals.24)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.eVitals25.TemperatureMethod.VS#3325007

Instance: ex-PCS-Vitals-Temperature-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Temperature (eVitals.24)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Temperature-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodytemp
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Temperature (eVitals.24)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Level-of-Responsiveness-(AVPU)
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#11454-6
* value[x].valueCodeableConcept = NEMSIS.eVitals26.LevelOfResponsivenessAVPU.VS#3326001
//NEMSIS  Level of Responsiveness (AVPU) (eVitals.26)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Level-of-Responsiveness-(AVPU)-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#11454-6
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS  Level of Responsiveness (AVPU) (eVitals.26)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Pain-Scale-Score
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#56840-2
* value[x].valueInteger = "3"
//NEMSIS Pain Scale Score (eVitals.27)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.eVitals28.PainScaleType.VS#3328003
//NEMSIS Pain Scale Score Type (eVitals.28)

Instance: ex-PCS-Vitals-Pain-Scale-Score-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#56840-2
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Pain Scale Score (eVitals.27)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.NotValues.VS#7701003
//NEMSIS Pain Scale Score Type (eVitals.28)

Instance: ex-PCS-Vitals-Pain-Scale-Score-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#56840-2
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Pain Scale Score (eVitals.27)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Stroke-Scale-Score
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67520-7
* value[x].valueCodeableConcept = NEMSIS.eVitals29.StrokeScaleScore.VS#3329003
//NEMSIS Stroke Scale Score (eVitals.29)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = NEMSIS.eVitals30.StrokeScaleScoreType.VS#3330005
//NEMSIS Stroke Scale Score Type (eVitals.30)

Instance: ex-PCS-Vitals-Stroke-Scale-Score-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67520-7
* dataAbsentReason = NEMSIS.NotValues.VS#7701003
//NEMSIS Stroke Scale Score (eVitals.29)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* method = * dataAbsentReason = NEMSIS.NotValues.VS#7701001
//NEMSIS Stroke Scale Score Type (eVitals.30)

Instance: ex-PCS-Vitals-Stroke-Scale-Score-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67520-7
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Stroke Scale Score (eVitals.29)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Reperfusion-Checklist
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67523-1
* value[x].valueCodeableConcept = NEMSIS.eVitals31.ReperfusionChecklist.VS#3331003
//NEMSIS Reperfusion Checklist (eVitals.31)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Reperfusion-Checklist-DataAbsent
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67523-1
* dataAbsentReason = NEMSIS.NotValues.VS#7701001
//NEMSIS Reperfusion Checklist (eVitals.31)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Reperfusion-Checklist-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#67523-1
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS Reperfusion Checklist (eVitals.31)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-APGAR-1Minute
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9272-6
* value[x].valueInteger = "10"
//NEMSIS APGAR (eVitals.32)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-APGAR-5Minute
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9274-2
* value[x].valueInteger = "10"
//NEMSIS APGAR (eVitals.32)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-APGAR-1Minute-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9272-6
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS APGAR (eVitals.32)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-APGAR-5Minute-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9274-2
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS APGAR (eVitals.32)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Revised-Trauma-Score
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* value[x].valueInteger = "7"
//NEMSIS  Revised Trauma Score (eVitals.33)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)

Instance: ex-PCS-Vitals-Revised-Trauma-Score-NotPerformed
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* dataAbsentReason = NEMSIS.PertinentNegatives.VS#8801023
//NEMSIS  Revised Trauma Score (eVitals.33)
* effective[x].effectiveDateTime = "2004-12-25T23:50:50-05:00"
* performer = Reference(Practitioner/ex-practitioner)
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
