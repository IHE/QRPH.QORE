Profile:        AuditQueryforEMSQualityDataConsumer
Parent:         AuditEvent
Id:             IHE.QORE.QueryforEMSQualityData.Audit.DataConsumer
Title:          "Audit Event for Query for EMS Quality Data Transaction at Data Consumer"
Description:    "Defines constraints on the AuditEvent Resource to record when a Query for EMS Quality Data Transaction happens, as recorded by the Data Consumer."

- Query event
- shall have the source as itself
- shall have a document consumer agent
- shall have a document responder agent
- may have user, app, organization agent(s)
- shall have a patient entity
- shall have a the query parameters"
* modifierExtension 0..0
* type = DCM#110112 "Query"
* action = #E
* subtype = urn:ihe:event-type-code#QRPH-55 "Query for EMS Quality Data"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "consumer, responder, and possibly the user who participated"
* agent contains 
	DataConsumer 1..1 and
	DataResponder 1..1 
	// may be many including app identity, user identity, etc
* agent[DataConsumer].type = DCM#110153 "Source Role ID"
* agent[DataConsumer].who 1..1
* agent[DataConsumer] obeys val-audit-source
* agent[DataConsumer].network 1..1
* agent[DataResponder].type = DCM#110152 "Destination Role ID"
* agent[DataResponder].who 1..1
* agent[DataResponder].network 1..1
* entity 2..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient and submission set involved"
* entity contains
	patient 1..1 and
	queryParameters 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[queryParameters].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[queryParameters].role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity[queryParameters].query 1..1 



Profile:        AuditQueryforEMSQualityDataResponder
Parent:         AuditQueryforEMSQualityDataConsumer
Id:             IHE.QORE.QueryforEMSQualityData.Audit.DataResponder
Title:          "Audit Event for Query for EMS Quality Data Transaction at Data Responder"
Description:    "Defines constraints on the AuditEvent Resource to record when a Query for EMS Quality Data Transaction happens, as recorded by the Data Rsponder."

- Query event
- shall have the source as itself
- shall have a document consumer agent
- shall have a document responder agent
- may have user, app, organization agent(s)
- shall have a patient entity
- shall have a the query parameters"
* modifierExtension 0..0
* type = DCM#110112 "Query"
* action = #E
* subtype = urn:ihe:event-type-code#QRPH-55 "Query for EMS Quality Data"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "consumer, responder, and possibly the user who participated"
* agent contains 
	DataConsumer 1..1 and [chnage nemase]]]] 
	DataResponder 1..1 
	// may be many including app identity, user identity, etc
* agent[DataConsumer].type = DCM#110153 "Source Role ID"
* agent[DataConsumer].who 1..1
* agent[DataConsumer].network 1..1
* agent[DataResponder].type = DCM#110152 "Destination Role ID"
* agent[DataResponder].who 1..1
* agent[DataResponder] obeys val-audit-source
* agent[DataResponder].network 1..1
* entity 2..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient and submission set involved"
* entity contains
	patient 1..1 and
	queryParameters 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[queryParameters].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[queryParameters].role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity[queryParameters].query 1..1 