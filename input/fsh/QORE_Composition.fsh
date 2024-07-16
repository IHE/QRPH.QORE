Profile:   IHE_QRPH_QORE_Composition_Registry_Report
Parent: Composition
Id:             IHE.QRPH.QORE.Composition.Registry.Report
Title: "EMS Outcome Reporting for EMS Registry Report"
Description:      """
the FHIR Resources supporting the content for sending a QORE Registry Report. This allows for a report to a registry to contain multiple measure reports for multiple patients or multiple measure report types e.g. Trauma and Stroke measures for 1 patient.  
the following cardinalities follow the documentation in the QORE profile: 
- R	[1..*]	QORE Measure Report(s)
"""
* subject 1..1 MS 
* title = "EMS Quality Measure Report" 
* section 1..*
* section.title = "QORE Measure Report(s)"
* section.entry 1..*
* section.entry only Reference(IHE_QRPH_QORE_MeasureReport)