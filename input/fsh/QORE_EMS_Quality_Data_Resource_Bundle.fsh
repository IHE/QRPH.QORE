Profile:        IHE_QRPH_QORE_EMS_Quality_Data_Resource_Bundle 
Parent:         Composition
Id:             IHE.QRPH.QORE.EMS.Quality.Data.Resource.Bundle 
Title:          "QORE EMS Quality Data Resource Bundle"
Description:    "The FHIR Resources that SHOULD be present to calculate EMS Quality Measures."


* entry 1..* MS 

//* entry ^slicing.discriminator.type = #pattern
//* entry ^slicing.discriminator.path = "code"
//* entry ^slicing.rules = #open
//* entry ^slicing.description = "EMS Quality Data Resources"
//* entry ^slicing.ordered = false
//* entry contains 
//    patient 1..* MS and 
//    allergyIntolerances 0..* MS and 
//    procedures 0..* MS and 
//    MedicationHistory 0..* MS and 
//    medicationsAdministered 0..* MS and 
//    medicalHistory 0..* MS and 
//    diagnoses 1..* MS and 
//    diagnosticReport 1..1 MS and 
    // Note: overly contrained?
//    encounter 1..* MS and 
//    serviceRequest 0..* MS and 
//    vitalSigns 1..* MS and 
//    observations 1..* MS and 
//    condidiotns 1..* MS and 
//    locations 1..* MS and 
//    devices 0..* MS and 
//    ReferencedDocuments 0..* MS

//* entry[patient].resource 1..1 MS Reference(PatientUvIps)

//* entry[allergyIntolerances].resource 1..1 MS Reference(AllergyIntoleranceUvIps)

//* entry[procedures].resource 1..1 MS Reference(ProcedureUvIps)

//* entry[MedicationHistory].resource 1..1 MS Reference(MedicationStatementIPS)

//* entry[medicationsAdministered].resource 1..1 MS Reference(MedicationAdministration)

//* entry[medicalHistory].resource 1..1 MS Reference(ConditionUvIps)

//* entry[diagnoses].resource 1..1 MS Reference(ConditionUvIps)

//* entry[diagnosticReport].resource 1..* MS Reference(DiagnosticReportUvIps or ObservationResultsUvIps)

//* entry[encounter].resource 1..1 MS Reference(Encounter)

//* entry[serviceRequest].resource 1..1 MS Reference(ServiceRequest)

//* entry[vitalSigns].resource 1..1 MS Reference(vitalsigns)

//* entry[observations].resource 1..1 MS Reference(Observation)

//* entry[condidiotns].resource 1..1 MS Reference(ConditionUvIps)

//* entry[locations].resource 1..1 MS Reference(Location)

//* entry[devices].resource 1..1 MS Reference(DeviceUseStatementUvIps)

//* entry[ReferencedDocuments].resource 1..1 MS Reference(DocumentReference)


//    firstSystolicBloodPressureED 0..1 MS and 
//    causeOfInjuryED 0..1 MS and 
///    proceduresED 0..* MS and 
//    dateTimeFirstPatientContactEMS 0..1 MS and 
//    encounterED 0..* MS and 
//    paramedicineEncounter 0..1 MS and 
//    cerebralPerformanceCategoryED 0..1 MS and 
//    cerebralPerformanceCategoryHospital 0..1 MS and 
//    paramedicineVehicle 0..1 MS
//    paramedicineProceduresPerformed 0..* MS and 
//    eDproceduresPerformed 0..* MS and 
//    hospitalProceduresPerformed 0..* MS and 
//    paramedicineChiefComplaint 0..1 MS and 
//    paramedicineReasonForVisit 0..1 MS and 
//    paramedicineDiagnoses 0..* MS and 
//    Resuscitation 0..1 MS and 
//    ResuscitationDeviceUse 0..* MS and 
//    patientEstimatedAge 0..1 MS and 
