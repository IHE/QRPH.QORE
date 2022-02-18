Profile:   IHE_QRPH_QORE_Composition
Parent: Composition
Id:             IHE.QRPH.QORE.Composition
Title: "EMS Outcome Reporting for EMS Composition"
Description:      """
the FHIR Resources supporting the content for sending a QORE report. 
the following cardinalities follow the documentation in the QORE profile: 
- R	[1..*]	QORE Measure Report(s)
"""
* subject 1..1
* title = "EMS Quality Measure Report" 
* section 1..*
* section.title = "QORE Measure Report(s)"
* section.entry Reference(IHE_QRPH_QORE_MeasureReport)
