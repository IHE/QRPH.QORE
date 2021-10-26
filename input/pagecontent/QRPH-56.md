The Data Sender sends quality measure report data to the Data Consumer.

### Scope

This transaction is used to send data needed to compute EMS quality measures to an entity that needs this information for quality outcome measures analysis. 

### Actors Roles

**Table: Actor Roles**

|Actor 										   					    | Role 																												 |
|-------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
| [Data Sender](2_actors_and_transactions.html#Data Responder)      | The Data sender sends quality measure outcome data to the Data Consumer. 											 |														 |
| [Data Consumer](2_actors_and_transactions.html#Data Consumer)  	| TThe Data Consumer consumes the quality measure outcome data sent by the Data Sender. 							 |

### Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)
[eMeasures References] https://www.heart.org/HEARTORG/Professional/MissionLifelineHomePage/Recognition/Mission-Lifeline-EMS-Recognition_UCM_308047_Article.jsp


### Expected Actions

The Data Sender initiates a Send EMS Measure Report Data [QRPH-56] transaction to send the measure report resource bundle specified in QRPH TF-3: 6.6.Y Quality Measure Report Content using HTTP or HTTPS POST. The Data Consumer receives the Measure Report specified in QRPH TF-3: 6.6.Y Quality Measure Report Content and uses this data to compute the measures. This is received according to FHIR POST specification. See: http://hl7.org/fhir/STU3/index.html. 

##### Trigger Events

When the organization is ready to provide their quality measure data to the quality measurement organization, they would initiate a Send EMS Measure Report Data [QRPH-56] transaction. 

##### Message Semantics

The message is a FHIR transaction using a create action by sending an HTTP POST request method composed of a FHIR Bundle Resource containing a Measure Report. The Measure Report is defined by the MeasureReport resource with content as constrained in QRPH TF-3: 6.6.Y Quality Measure Report Content. 

### CapabilityStatement Resource

N/A

### Security Considerations

See [QORE Security Considerations](3_security_considerations.html)

There must be a trusted connection between the Data Sender and Data Consumer. This will be carried out in implementation and can either be a business relationship or a secured connection done through ATNA. The Data Sender has control of what information will be sent. This transaction may include identifiable health information, or it may leverage deidentification, see the ITI De-Identification White Paper for guidance. Depending upon the implementation and application, may constitute a disclosure of health information that requires audit, encryption, and authentication of the Data Consumer and Data Creator. For further guidance, see ITI TF-2.x: Appendix Z.8 “Mobile Security Considerations”
Note: This assumes the approval of the current ITI-CP-1036 regarding Appendix Z.8 “Mobile Security Considerations”.


#### Security Audit Considerations

''TODO: The security audit criteria ''

##### Client Audit 

''TODO: the specifics''

##### Server Audit 

''TODO: the specifics''
