Profile:   IHE_QRPH_QORE_MeasureReport
Parent: MeasureReport
Id:             IHE.QRPH.QORE.MeasureReport
Title: "Quality Outcomes Reorting for EMS Measure Report"
Description:      """
Measure Report for the FHIR elements that are used to report the Qulaity Outcomes.  
- RE	[0..*]	MeasureReport.identifier
- R		[1..1]	MeasureReport.type
- R		[1..1]	MeasureReport.measure
- RE	[0..1]	MeasureReport.patient
- RE	[0..1]	MeasureReport.date
- RE	[0..1]	MeasureReport.reportingOrganization
- R		[1..1]	MeasureReport.period
- RE	[0..*]	Measure.Report.group
- R		[1..*]	Measure.Report.evaluatedResources
"""

* type 1..1
// Note this does not allow for the type we were thingking about 

* date 1..1 MS

* period 1..1 MS 

* evaluatedResource 1..* MS 
// Note: The evaluated resources May include the QORE EMS Quality Data Bundle

* measure MS 

* reporter MS 

* subject MS

* group MS 

* evaluatedResource MS
* evaluatedResource only Reference(Observation or Patient or MedicationStatement or Condition or Encounter or Location or DocumentReference or Device or DiagnosticReport or MedicationAdministration or AllergyIntolerance or Procedure or Patient or ClinicalImpression or observation-vitalsigns)
