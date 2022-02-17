### Issues

#### Open Issues

1.	Whether or not the EMR can support a multi patient query for quality.
2.	The committee has elected to model these use cases as two transactions and three actors. We are seeking feedback on this approach from the IHE FHIR Task Force.
3.	There are a number of issues relating to the FHIR mapping and resources needed to support this profile:
	a.	Investigate the FHIR process for defining the resources required to fulfill NEMSIS. 
	b.	The injury information may need to be more extensive modeling in FHIR.
	c.	There is no value set in FHIR relating to the level of care of ambulance units. 
	d.	Extensions in FHIR need to be made to help include some of the needed attributes.
	e.	IHE has filed a ticket against the FHIR specification #16237 to allow for EMS events to be recorded in a status history without the use of the extension
	f.	IHE has filed a ticket against the FHIR specification #16238 to allow for there to be an outcome element for the end of the encounter.
	g.	Document reference for Advanced Directives in the FHIR mapping table can support the use case as it exists today. Currently there are ongoing efforts within HL7 to make available the clauses of an advanced directives available in coded form. 
	h.	There is no mapping available in FHIR for indicating the mechanism of injury.
4.	LOINC code concepts for EMS indicate NEMSIS even where not US specific concepts. May need new LOINC codes.
5.	Need a LOINC for Last Known Well
6.	Need value set for Hospital Capability
7.	This profile specifies patient-level quality data (individual) to be sent to optimize the ability of the quality measurement organization to perform analysis. Aggregate reporting is not specified in scope at this time.


#### Closed Issues

1.	Whether or not the EMR can support a multi patient query for quality.
(2/15/2018) The committee has decided to make both the Data consumer transactions required, however we are seeking feedback from early adopters for any challenges with this approach. The rationale with supporting both transactions supports the notion that there will never be a situation where two implementers are conformant to the profile and not able to interoperate. 