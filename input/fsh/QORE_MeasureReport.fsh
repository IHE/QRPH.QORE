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

* evaluatedResource 1..*
// Note: The evaluated resources May include the QORE EMS Quality Data Bundle

* extension contains Measures named measures 1..* MS 

* reporter MS 

* subject MS

* group MS 

* evaluatedResource MS 
* evaluatedResource only Reference(IHE_QRPH_QORE_EMS_Quality_Data_Resource_Bundle)


Extension: Measures
Id: Measures
Title: "Measures"
Description: "What measures were calculated and are being sent"
* ^context[+].type = #element
* ^context[=].expression = "Measures"
* value[x] only Reference(Measure)
