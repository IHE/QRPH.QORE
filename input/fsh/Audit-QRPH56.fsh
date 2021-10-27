Profile:        AuditSendEMSQualityDataConsumer
Parent:         AuditEvent
Id:             IHE.QORE.SendEMSQualityData.Audit.DataConsumer
Title:          "Audit Event for Send EMS Quality Data Transaction at Data Consumer"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Send EMS Quality Data Transaction happens at the Data Consumer.
- Import event
- shall have source of DataSender
- shall have a document source agent
- shall have a document recipient agent
- may have user, app, organization agent(s)
- shall have a patient entity
- shall have a submission set identity entity
"""
* modifierExtension 0..0
* type = DCM#110107 "Import"
* action = #C
* subtype = urn:ihe:event-type-code#QRPH-56 "Send EMS Quality Data"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, recipient, and possibly the user who participated"
* agent contains 
	DataConsumer 1..1 and
	DataSender 1..1 
	// may be many including app identity, user identity, etc
* agent[DataConsumer].type = DCM#110153 "Source Role ID"
* agent[DataConsumer].who 1..1
* agent[DataConsumer].network 1..1
* agent[DataSender].type = DCM#110152 "Destination Role ID"
* agent[DataSender].who 1..1
* agent[DataSender] obeys val-audit-source
* agent[DataSender].network 1..1
* entity 2..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient and submission set involved"
* entity contains
	patient 1..1 and
	submissionSet 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[submissionSet].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[submissionSet].role = http://terminology.hl7.org/CodeSystem/object-role#20 "Job"
* entity[submissionSet].what 1..1
* entity[submissionSet].what only Reference(List) 

Invariant: val-audit-source
Description: "The Audit Source is this agent too."
Expression: "$this.who = %resource.source.observer"
Severity: #error

Profile:        AuditSendEMSQualityDataSender
Parent:         AuditEvent
Id:             IHE.QORE.SendEMSQualityData.Audit.DataSender
Title:          "Audit Event for Send EMS Quality Data Transaction at the DataSender"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Send EMS Quality Data Query Transaction happens at the Data Consumer.

chnage the import to export and the save to export. source and destinations witht eh actors... 

wiht the group resiicre replace patients make separate report for group and for patient specific 

- Export event
- shall have source of itself
- shall have a document source agent
- shall have a document recipient agent
- may have user, app, organization agent(s)
- shall have a patient entity
- shall have a submission set identity entity
"""
* modifierExtension 0..0
* type = DCM#110106 "Export"
* action = #R
* subtype = urn:ihe:event-type-code#QRPH-56 "Send EMS Quality Data"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, recipient, and possibly the user who participated"
* agent contains 
	DataConsumer 1..1 and
	DataSender 1..1 
	// may be many including app identity, user identity, etc
* agent[DataSender].type = DCM#110153 "Source Role ID"
* agent[DataSender].who 1..1
* agent[DataSender].network 1..1
* agent[DataSender] obeys val-audit-source
* agent[DataConsumer].who 1..1
* agent[DataConsumer].network 1..1
* agent[DataConsumer].type = DCM#110152 "Destination Role ID"
* entity 2..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient and submission set involved"
* entity contains
	patient 1..1 and
	submissionSet 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[submissionSet].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[submissionSet].role = http://terminology.hl7.org/CodeSystem/object-role#20 "Job"
* entity[submissionSet].what 1..1
* entity[submissionSet].what only Reference(List) 