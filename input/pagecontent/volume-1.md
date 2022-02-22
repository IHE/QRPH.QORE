# 1:XX Quality Outcome Reporting for EMS

**This transaction profile will facilitate electronic data capture of quality measure data to enable automated data capture and streamline quality measure analysis. This will improve the timeliness and accuracy of the information used to compute EMS quality measures. **

## 1:X.1 Quality Outcome Reporting for EMS Actors, Transactions, and Content Modules
This section defines the actors, transactions, and/or content modules in this profile. General definitions of actors are given in the Technical Frameworks General Introduction Appendix A. IHE Transactions can be found in the Technical Frameworks General Introduction Appendix B. Both appendices are located at http://ihe.net/Technical_Frameworks/#GenIntro

Figure X.1-1 shows the actors directly involved in the QORE Profile and the relevant transactions between them. If needed for context, other actors that may be indirectly involved due to their participation in other related profiles are shown in dotted lines. Actors which have a required grouping are shown in conjoined boxes (see Section X.3).


**Figure X.1-1: QORE Actor Diagram**

* Actors

  - [Data Responder](volume-1.html#DataResponder)

  - [Data Sender](volume-1.html#DataSender)
  
  - [Data Consumer](volume-1.html#DataConsumer)

* Transactions

  - [Query for EMS Quality Data](QRPH-55.html)
  - [Send EMS Measure Report Data](QRPH-56.html)

**Table X.1-1: QORE Profile - Actors and Transactions**

Table XX.1-1: Profile Acronym Profile - Actors and Transactions
Table Xx.1-1 lists the transactions for each actor directly involved in the QORE Profile. To claim compliance with this profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled “O”). 
| Actors         | Transactions                           | Initiator or Responder | Optionality     | Reference       |
|----------------|----------------------------------------|------------------------|-----------------|-----------------|
| Data Responder | Query for EMS Quality Data [QRPH-55]   | Responder              | R               | QRPH TF-2: 3.55 |
| Data Consumer  | Query for EMS Quality Data [QRPH-55]   | Initiator              | R               | QRPH TF-2: 3.55 |
|                | Send EMS Measure Report Data [QRPH-56] | Responder              | R               | QRPH TF-2: 3.56 |
| Data Sender    | Send EMS Measure Report Data [QRPH-56] | Initiator              | R               | QRPH TF-2: 3.56 |
{: .grid}


### XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.
Transactional requirements are documented in [Query for EMS Quality Data QRPH-55](QRPH-55.html) and [Query for EMS Quality Data QRPH-56](QRPH-56.html). This section documents any additional requirements on profile’s actors.

#### XX.1.1.1 Data Responder

The Data Responder shall be responsible for the creation of content and the transmission of a QORE document to a Data Consumer. 

#### XX.1.1.2 Data Consumer 

The Data Consumer is responsible for initiating a query to the Data Responder system for documents meeting certain criteria and can retrieve selected documents supplied by the Data Responder. Data Consumer is also responsible for receiving EMS quality data needed to compute EMS measures from the Data Sender. 

#### XX.1.1.3 Data Sender  
The Data Sender is responsible for sending EMS quality data needed to compute EMS measures to the Data Consumer. 

### Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### Query for EMS Quality Data [QRPH-55]

This transaction is used to query an entity for information needed to compute EMS quality measures. 

For more details see the detailed [Query for EMS Quality Data QRPH-55](QRPH-55.html)

#### Send EMS Measure Report Data [QRPH-56]

This transaction is used to send data needed to compute EMS quality measures to an entity that needs this information for quality outcome measures analysis. 

For more details see the detailed [Query for EMS Quality Data QRPH-56](QRPH-56.html)

## XX.2 Actor Options

None Noted

## XX.3 Required Actor Groupings

There are no required actor groupings for this profile 

## XX.4 QORE Overview

The retrieval of EMS quality measures is shown with a query exchange. This will represent  the process of a query request for EMS quality measures if this profile were to be implemented. The use case will show the use of EMS registry quality measures (e.g., STEMI) to show the importance they have to patient care and measuring outcomes. 
This profile assumes that all of the data needed to be queried is always available within the infrastructure available to the querying system. 
The data elements relating to paramedicine care used in measuring quality data are described in Appendix A. The quality measures that are used and referencing this profile are described in Appendix B. 


### XX.4.1 Concepts

Quality measures can be used to analyze scene data and patient outcomes providing the potential to improve patient care. EMS providers are beginning to establish quality measures of emergency medical services system performance. These quality measures are limited due to lack access to the patient outcome information after the patient is transferred to hospital care. Quality measure programs are important to EMS systems to identify opportunities for process and clinical intervention improvements in pre-hospital care. 

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case #1: Query for EMS Data using an HIE 

##### XX.4.2.1.1 Query for EMS Data using an HIE Use Case Description

A health information exchange has incorporated a quality measurement program for the EMS providers in its region. The HIE information includes data from EMS and hospital discharges. The quality management service queries the HIE for patient level EMS quality data and uses this to compute EMS CPR measures. The performance measures show one community with higher survival rates at discharge than the remainder of the region. Further analysis provides an opportunity to learn from that region ways to improve survival rates across the whole region. 

##### XX.4.2.1.2 Send EMS Quality Data Process Flow
**Figure X.4.2.1.2-1: Basic Process Flow in QORE Profile**

**Pre-conditions:**
1.	The health information exchange has information from both EMS and hospitals sufficient to compute the EMS quality measures. 
2.	The HIE has a relationship with a quality measurement organization. 

**Main Flow:**
1.	EMS and hospitals routinely share patient care information with the HIE. 
2.	The quality measurement organization routinely queries the HIE for patient level quality data and uses it to compute the EMS quality measures. 

**Post-conditions**
1.	The Quality measures are computed and information is available to inform improvements, care quality, and efficiency in the region.


#### XX.4.2.1 Use Case #2: Emergency Response for Heart Attack

This use case describes how EMS quality measure data can be retrieved from an HIE for computation of EMS quality measures. 

##### XX.4.2.1.1 Emergency Response for Heart Attack Use Case Description

A fifty-year-old man develops heart attack symptoms. He calls 911 for an emergency transport to a hospital. EMS responds, and their interventions include defibrillation, chest compressions, and a 12-lead ECG. The patient is taken to the nearest hospital ED and is evaluated in the emergency department and catheterization lab for a percutaneous coronary intervention (PCI) associated with a ST elevation myocardial infarction (STEMI) before being admitted to the hospital. The patient is discharged from the hospital with a good cerebral performance score, indicating a positive outcome from the STEMI episode. Relevant hospital-sourced quality measure information is provided to the HIE they are participating in, from the hospital from both the ED and main EHR systems. The ambulance system is then able to query the HIE using the Query for EMS Quality Data [QRPH-55] to retrieve their patients’ hospital outcomes, for quality care analysis and self-assessment in accordance with their EMS performance measurement program. 

##### XX.4.2.1.2 Send EMS Quality Data Process Flow
**Figure X.4.2.1.2-1: Basic Process Flow in QORE Profile**

**Pre-conditions:**
1.	The person calling 911 is suffering from an emergent issue. 
2.	An EMS response team is sent out for the call. 
3.	The EMS team identifies this as a STEMI patient and performs the necessary interventions. 
4.	Patient condition is assessed and resolved in the hospital. 
5.	The hospital has provided the patient’s health record to an HIE. 

**Main Flow:**
1.	EMS Quality measures data is requested from the HIE by the EMS entity that carried out this patient’s transport 
2.	The query and is able to provide the hospital-sourced EMS quality measure data to the Ambulance system that initiated the query.
3.	The Ambulance system consumes the information provided in the query. 

**Post-conditions**
1.	The EMS quality measures are used to assess the quality of care provided by EMS based on the data that was queried and used to make improvements in patient care and processes. 

#### XX.4.2.1 Use Case #3: Send EMS Quality Data to a Quality Measure Organization

This use case describes how EMS quality measures data is sent to the quality measure entity by the hospital or by an EMS that are not participants in an HIE.

##### XX.4.2.1.1 Send EMS Quality Data Use Case Description

A hospital receives a 79-year-old man who came in via ambulance for a stroke from a 911 request. The patient was treated for the stroke and then discharged to a rehab facility. The hospital participates in a quality management program for Stroke that includes EMS measures. The hospital sends the patient level quality measure data to a stroke quality measurement organization. Once the quality measure entity receives the information for the stroke patients for the defined reporting period, it can carry out quality measure analysis. It is determined that improved education in stroke assessments are needed for EMS employees in the local area. 

##### XX.4.2.1.2 Send EMS Quality Data Process Flow
**Figure X.4.2.1.2-1: Basic Process Flow in QORE Profile**

**Pre-conditions:**
1.	The hospital has imported the relevant EMS quality data. This can be done via query of the EMS system or the Hospital. 
2.	The information from the hospital has recorded the patient care information.
3.	The Hospital is unable to participate in an HIE. 

**Main Flow:**
1.	The hospital sends the quality measure entity the required quality measure data (including what was imported from the EMS transport). 
2.	The quality measure entity receives the quality measure data and is able to use the data to carry out quality measures analysis. 

**Post-conditions**
1.	The quality measure entity determines that education of EMS providers in the area are needed.


## XX.5 QORE Security Considerations (#QORESecurityConsiderations)

See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

There should be a trusted connection between the hospital system and the EMS system to ensure the safety of the patient information. This profile assumes either implied or explicit data sharing agreements between the data exchange entities. In the instance where a quality measurement entity needs de-identified data, the IHE ITI Handbook on De-identification should be referenced. 
Actors in the QORE Profile consume patient demographics, clinical and administrative information which may include personally identifiable health information. This information must be protected against unauthorized access, modification or tampering. This profile recommends but does not require that connections between actors be grouped with the Secure Node or Secure Application Actors from the IHE ITI ATNA Profile. 
These actors should ensure appropriate user authentication and authorization to access the application and protect personally identifiable health information against unauthorized access, modification or tampering while the information is in transit. This profile recommends but does not require the implementers to use the IHE ITI XUA Profile. 

## XX.6 QORE Cross Profile Considerations

The information that is imported by the IHE PCC Paramedicine Care Summary (PCS) Profile Ccontent Cconsumer implementing the Quality Data Import Option should be leveraged to support content needed for the Quality Outcome Reporting for EMS (QORE) Data Sender or Data Responder Actors.
[Audit Event for Query for EMS Quality Data Transaction at Data Consumer](https://build.fhir.org/ig/IHE/QRPH.QORE/branches/master/StructureDefinition-IHE.QORE.QueryforEMSQualityData.Audit.DataConsumer.html)
[Audit Event for Query for EMS Quality Data Transaction at Data Responder](https://build.fhir.org/ig/IHE/QRPH.QORE/branches/master/StructureDefinition-IHE.QORE.QueryforEMSQualityData.Audit.DataResponder.html)
[Audit Event for Send EMS Quality Data Transaction at the DataSender](https://build.fhir.org/ig/IHE/QRPH.QORE/branches/master/StructureDefinition-IHE.QORE.SendEMSQualityData.Audit.DataSender.html)
[Audit Event for Send EMS Quality Data Transaction at Data Consumer](https://build.fhir.org/ig/IHE/QRPH.QORE/branches/master/StructureDefinition-IHE.QORE.SendEMSQualityData.Audit.DataConsumer.html) 