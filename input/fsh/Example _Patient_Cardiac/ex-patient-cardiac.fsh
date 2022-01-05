Instance:   EMS-ex-patient-Cardiac
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips 
Title: "Example Patient Cardiac"
Description: "The Cardiac Patient Example used for the EMS profiles"
// Note: Data derrived from NEMSIS v3.5.0 EMSDataSet Test Case  (ID: 2022-EMS-1-CardiacTransport_v350). This example excludes Social Security Data, aligning with current healthcare laws in the United states. This is an instance of the IPS patient, an additonal patient Profile will be made in the future to Inclue the Race/ethnicity and Cencus tract data elements.

* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* id = "ea25ec4c-38bd-11ec-8d3d-0242ac130003"
* identifier.value[+] = "78HU-3D7D"
* identifier.type[=] = $MR "Medical record number"
// Note: EMS Patient ID
* identifier.value[+] = "S14957440"
* identifier.type[=] = $DL "Driver's license number"
* identifier.value[+] = "859320"
* identifier.type[=] = $MR "Medical record number"
// Note: Patient Hospital MRN
* active = #true
* name.family = "Schroeder"
* name.given = "Lily-Rose"
* telecom.system[+] = #phone
* telecom.value[=] = "928-350-5671"
* telecom.use[=] = #home
* telecom.system[+] = #phone
* telecom.value[=] = "928-998-3679"
* telecom.use[=] = #mobile
[// Note: Must Change resource to support the race/ethnicity elements]
* gender = #female
* birthDate = "1955-10-07"
* address.use = #home
* address.line[+] = "1644 W 13th St"
* address.line[=] = "Unit A"
* address.city = "City of Yuma"
* address.district = "Yuma County"
* address.state = "Arizona"
* address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* address.country = "US"
* contact.relationship = $v3-RoleCode#SPS
* contact.name.family = "Schroeder"
* contact.name.given[+] = "Frank"
* contact.name.given[=] = "R."
* contact.telecom.system[+] = #phone
* contact.telecom.value[=] = "928-350-5671"
* contact.telecom.use[=] = #home
* contact.telecom.system[+] = #phone
* contact.telecom.value[=] = "928-998-3678"
* contact.telecom.use[=] = #mobile
* contact.address.line[+] = "1644 W 13th St"
* contact.address.line[=] = "Unit A"
* contact.address.city = "Yuma"
* contact.address.state = "Arizona"
* contact.address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* contact.address.country = "US"

Instance: Inline-Instance-for-EMS-ex-Cardiac-patient-Patient-generalPractitioner
InstanceOf: Practitioner
Usage: #inline
* id = cf1f71bc-38c1-11ec-8d3d-0242ac130003
* name.family[+] = "Parker"
* name.given[=] = "Glenda"
* name.given[=] = "D"
* name.family[+] = "Santos"
* name.given[=] = "Allen"

Instance: Inline-Instance-for-EMS-ex-Cardiac-patient-Patient-RelatedPerson
InstanceOf: RelatedPerson
Usage: #inline
* id = c70c8063-85b0-4346-8fc7-1ca1966ca4ed
* patient = Reference(Patient/ea25ec4c-38bd-11ec-8d3d-0242ac130003)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SPS
* name.family = "Schroeder"
* name.given[+] = "Frank"
* name.given[=] = "R."
* telecom.system[+] = #phone
* telecom.value[=] = "928-350-5671"
* telecom.use[=] = #home
* telecom.system[+] = #phone
* telecom.value[=] = "928-998-3678"
* telecom.use[=] = #mobile
* address.line[+] = "1644 W 13th St"
* address.line[=] = "Unit A"
* address.city = "Yuma"
* address.state = "Arizona"
* address.postalCode = "85364"
[//Note: doesnot support US Cencus tract]
* address.country = "US"
* gender = #male
* birthDate = "1956-08-21"