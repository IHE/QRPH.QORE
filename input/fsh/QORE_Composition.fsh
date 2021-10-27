Profile: IHE_QORE_Composition
Parent: CompositionUvIps
Id: IHE.QRPH.QORE.Composition
Title: "Quality Outcomes Reporting for EMS"
Description:  """
composition of the FHIR elements that are used to build the FHIR Composition for the Qulaity Outcomes Report.
"""
// NOTE That this is derived off of the IPS, so the IPS citeria are not replicated here, only the additional constraints

* subject 1..1
// subject is already a Patient

* encounter 1..1 MS
// TODO: Eventually want this to reference the IHE_PCS_Encounter
//* encounter only Reference(Encounter or IHE_PCS_Encounter)

* author ^short = "Who and/or what authored the QORE"

* title ^short = "Quality Outcomes Report for EMS"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Quality Outcomes Report for EMS\" or any equivalent translation"

