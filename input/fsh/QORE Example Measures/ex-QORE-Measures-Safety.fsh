Instance:   example-IHE-QORE-Safety-01
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-01"
* status = #unknown
* title = "Lights and Sirens Response to Scene Rate"
* definition = "A rate of emergency lights and sirens responses. This includes each vehicle responding to an incident."
* rationale = "Lights and siren responses are demonstrated to have a greater risk for patients, providers, and public. Assessing risk is an important EMS system issue. The intent of this measure is to allow an agency to assess the use of lights and sirens responses within the agency."
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of lights and sirens responses"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Number of responses originating from a 911 request"
//Note: PSC encouter Priority descriptors 


Instance:   example-IHE-QORE-Safety-02
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-02"
* status = #unknown
* title = "Lights and Sirens Transport Rate"
* definition = "A rate of emergency lights and sirens transports. This includes each vehicle transporting from an incident with one or more patients."
* rationale = "Lights and siren responses are demonstrated to have a greater risk for patients, providers, and public. Assessing risk is an important EMS system issue. The intent of this measure is to allow an agency to assess the use of lights and sirens transports within the agency."
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of lights and sirens used during transport"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Number of patient transports by unit originating from a 911 request"
//Note: PSC encounter transport priority descriptors 


Instance:   example-IHE-QORE-Safety-03
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-03"
* status = #unknown
* title = "Number of crashes"
* definition = "Measure of the number of EMS vehicle involved crashes"
* rationale = "Crashes are one of the leading causes of injury and fatality events in EMS that create unnecessary expense, and reduce resource availability"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of crashes"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Not defined at this time"
//Note: Unknown Open issue 


Instance:   example-IHE-QORE-Safety-04
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-04"
* status = #unknown
* title = "Number of crashes resulting in injury"
* definition = "Measure of the number of EMS vehicle involved crashes resulting in injury"
* rationale = "Crashes are one of the leading causes of injury and fatality events in EMS that create unnecessary expense, and reduce resource availability"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of crashes resulting in injury"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Not defined at this time"
//Note: 


Instance:   example-IHE-QORE-Safety-05
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-05"
* status = #unknown
* title = "Number of fatal crashes"
* definition = "Measure of the number of EMS vehicle involved crashes involving a fatality"
* rationale = "Crashes are one of the leading causes of injury and fatality events in EMS that create unnecessary expense, and reduce resource availability"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of fatalities"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Not defined at this time"
//Note: 


Instance:   example-IHE-QORE-Safety-06
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-06"
* status = #unknown
* title = "Rate of crashes per 100,000mi"
* definition = "Measure of the number of EMS vehicle involved crashes"
* rationale = "Crashes are one of the leading causes of injury and fatality events in EMS that create unnecessary expense, and reduce resource availability"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of crashes"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Agency total vehicle miles traveled per year per 100,000 miles originating from a 911 request"
//Note: 


Instance:   example-IHE-QORE-Safety-07
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-07"
* status = #unknown
* title = "Rate of crashes resulting in injury per 100,000mi"
* definition = "Measure of the number of EMS vehicle involved crashes resulting in injury"
* rationale = "Crashes are one of the leading causes of injury and fatality events in EMS that create unnecessary expense, and reduce resource availability"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of crashes resulting in injury"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Agency total vehicle miles traveled per year per 100,000 miles originating from a 911 request"
//Note: 


Instance:   example-IHE-QORE-Safety-08
InstanceOf: Measure
Title: "Example of a Safety measure"
Description:      "holding typical values for a Safety measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Safety-08"
* status = #unknown
* title = "Rate of fatalities per 100,000mi"
* definition = "Measure of the number of EMS vehicle involved crashes involving a fatality"
* rationale = "Crashes are one of the leading causes of injury and fatality events in EMS that create unnecessary expense, and reduce resource availability"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of fatalities"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Agency total vehicle miles traveled per year per 100,000 miles originating from a 911 request"
//Note: 