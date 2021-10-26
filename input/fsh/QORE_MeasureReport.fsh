Profile:   IHE_QORE_MeasureReport
Parent: MeasureReport
Id:             IHE.QRPH.QORE.MeasureReport
Title: "Quality Outcomes Reorting for EMS Measure Report"
Description:      "Measure Report for the FHIR elements that are used to report the Qulaity Outcomes."



* Identifier 1..*

* Type 1..1

* Measure 1..*

* subject 0..1 
//* subject.reference = refernce(patient|Group)

* date 1..1

* Period 1..1

* reporter 1..1 
//* reporter.reference = Reference(Organization)

* Evaluated Resources = reference (IHE_QORE_Composition)



#Mappings 

| Elements         				   | Cardinality  | Optionality | Constraint  																			 | FHIR Path 	 																		  |
|----------------------------------|--------------|-------------|----------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------|
| External Report ID/Number Type   | RE		      | [0..1]      | Where the External report is the report given to the hospital by the EMS organization  | Composition.MeasureReport.identifier													  |
| External Report ID/Number        | RE		      | [0..1]      | Where the External report is the report given to the hospital by the EMS organization	 | Composition.MeasureReport.identifier													  | 
| Other Report Registry Type       | RE		      | [0..*]      | N/A																					 | Composition.MeasureReport.type                                                         | 
| EMS Organization Identifier 	   | RE		      | [0..1]      | The EMS organization identifier 														 | Composition.MeasureReport.reporter.reference(Organization):Organization.identifier     |