Profile:   IHE_QORE_MeasureReport
Parent: MeasureReport
Id:             IHE.QRPH.QORE.MeasureReport
Title: "Quality Outcomes Reorting for EMS Measure Report"
Description:      "Measure Report for the FHIR elements that are used to report the Qulaity Outcomes."



* identifier 1..*

* type 1..1

* subject 0..1 
//* subject.reference = refernce(patient|Group)

* date 1..1

* period 1..1

* reporter 1..1 
//* reporter.reference = Reference(Organization)

* evaluatedResource only Reference (IHE_QORE_Composition)



