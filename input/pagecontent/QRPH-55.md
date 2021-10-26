The Data Consumer sends a query for an EMS Quality Data to the Data Responder. 

### Scope

The Data Consumer [QRPH-55] transaction is used to query an entity for information needed to compute EMS quality measures.

### Actors Roles

**Table: Actor Roles**

|Actor 										   					    | Role 																												 |
|-------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
| [Data Responder](2_actors_and_transactions.html#Data Responder)   | The Data Responder responds to a query for EMS quality data.														 |
| [Data Consumer](2_actors_and_transactions.html#Data Consumer)  	| The Data Consumer sends a query for the EMS quality data and receives the response returned by the Data Responder. |

### Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)
[HL7 Version 3 Domain Analysis Model: Emergency Medical Services, Release 1] <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=39>
[HL7 Version 3 Domain Information Model; Emergency Medical Services, Release 1] <http://www.hl7.org/implement/standards/product_brief.cfm?product_id=302>
[HL7 Version 3 Domain Analysis Model: Trauma Registry Data Submission, Release 1] http://www.hl7.org/implement/standards/product_brief.cfm?product_id=36
[eMeasures References] https://www.heart.org/HEARTORG/Professional/MissionLifelineHomePage/Recognition/Mission-Lifeline-EMS-Recognition_UCM_308047_Article.jsp


### Expected Actions

The Data Consumer initiates a Query for EMS Quality Data [QRPH-55] to retrieve the measure report resource bundle that returns the resources specified in QRPH TF-3: 6.6.X FHIR Resource Bundle Content using the message semantics specified in Section 3.55.4.1.2. The Data Responder receives the query and responds with the resources specified in QRPH TF-3: 6.6.X FHIR Resource Bundle Content according to FHIR Search specification with the query response information or an error message. See: http://hl7.org/fhir/STU3/index.html. 

##### Trigger Events

When the organization is ready to measure EMS quality data, they would initiate a Query for EMS Quality Data [QRPH-55]. 

##### Message Semantics

The message is a FHIR transaction using a query action by sending an HTTP GET request  composed of a FHIR Bundle Resource containing a measure report. This query uses the following semantics:
GET [base]/patient?condition.code:in=[Value set resource URL]&[other search criteria defined below]
GET [base]/patient?procedure.code:in=[Value set resource URL]&[other search criteria defined below]
GET [base]/patient?medicationAdministration.medicationCodableConcept:in=[Value set resource URL]&[other search criteria defined below]
The Value Set resource URL to be used in these queries is defined for each measure set or measure as determined by the quality measurement organization. The URL SHALL reference an active URL.
The following table defines additional search criteria that may be used to filter the query results: 


** Table 3.55.4.1.2-1: Additional Search Criteria **
| Attribute          												| Criteria 																												 |
|-------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| Age (as computed as encounter.period -patient.birthdate)  	    | Patient age within a specified range. This may be in years, months, or days as defined by the measure or measure set   |
| Encounter.period    											    | Specify reporting period range   																						 |
| Resource.meta.lastUpdated    							   		    | Date comparison to support updated information and polling mechanisms  												 |  
| Hospitalization.admitSource 										| Specify ambulance as the admit source (NOTE: pending value set expansion)										   		 |
| Encounter.hospitalization.origin.managingOrganization.identifier  | Specify the specific EMS organization(s) that delivered the patient to the hospital									 |
| Encounter.type													| Query may be constrained to inpatient or emergency patients															 |

### CapabilityStatement Resource

N/A

### Security Considerations

See [QORE Security Considerations](3_security_considerations.html)

There must be a trusted connection between the Data Responder and Data Consumer. This will be carried out in implementation and can either be a business relationship or a secured connection done through ATNA. The Data Consumer has control of what information will be requested. The Data Responder has control of what information will be returned. This transaction may include identifiable health information, or it may leverage deidentification, see the ITI De-Identification White Paper for guidance. Depending upon the implementation and application, may constitute a disclosure of health information that requires audit, encryption, and authentication of the Data Consumer and Data Responder. For further guidance, see ITI TF-2.x: Appendix Z.8 “Mobile Security Considerations”
Note: This assumes the approval of the current ITI-CP-1036 regarding Appendix Z.8 “Mobile Security Considerations”.

#### Security Audit Considerations

''TODO: The security audit criteria ''

##### Client Audit 

''TODO: the specifics''

##### Server Audit 

''TODO: the specifics''
