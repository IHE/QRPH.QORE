Profile:   IHE_QRPH_QORE_Bundle_Registry_Report
Parent: Bundle
Id:             IHE.QRPH.QORE.Bundle.Registry.Report
Title: "EMS Outcome Reporting for EMS Registry Report Bundle"
Description:      """
the FHIR Resources supporting the content for sending a QORE Registry Report. This allows for a report to a registry to contain multiple measure reports for multiple patients or multiple measure report types e.g. Trauma and Stroke measures for 1 patient.  
the following cardinalities follow the documentation in the QORE profile: 
- R	[1..*]	QORE Measure Report(s)
"""
* type = #batch
* timestamp MS 
* entry 1..* MS 
//* entry.resource only Reference(IHE_QRPH_QORE_MeasureReport)
// The Entry SHALL contain one or more of the Measures that are reported. 