Instance:   example-IHE-QORE-PEDS-01
InstanceOf: Measure
Title: "Example of a PEDS measure"
Description:      "holding typical values for a PEDS measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "PEDS-01"
* status = #unknown
* title = "Respiratory Assessment - Pediatric"
* definition = "Documented evidence that a respiratory assessment was performed on pediatric patients"
* rationale = "Detection of respiratory distress has been shown to be challenging in pediatric patients. Assessment of the pediatric respiratory patient is critically important. Pediatric respiratory distress is a frequent cause for emergency care."
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Pediatric patients with SpO2 AND RR measurement"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients <15 years AND PRI/SEC Impression with (Dyspnea, unspecified, Orthopnea, Shortness of breath, or Other forms of dyspnea) originating from a 911 request"
//Note:  Functional Status 


Instance:   example-IHE-QORE-PEDS-02
InstanceOf: Measure
Title: "Example of a PEDS measure"
Description:      "holding typical values for a PEDS measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "PEDS-02"
* status = #unknown
* title = "Administration of beta agonist for pediatric asthma"
* definition = "Administration of beta agonist for pediatric asthma"
* rationale = "Evidence shows administration of beta agonist improves outcomes for pediatric asthma"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Pediatric patients administered (Albuterol, Accuneb, Combivent, DuoNeb, ProAir, Proventil, Ventolin or Vospire) by any means"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients 2-15 years AND PRI/SEC Impression 'Asthma with exacerbation' or 'Acute bronchospasm' originating from a 911 request"
//Note:  Medication administration 

Instance:   example-IHE-QORE-PEDS-03
InstanceOf: Measure
Title: "Example of a PEDS measure"
Description:      "holding typical values for a PEDS measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "PEDS-03"
* status = #unknown
* title = "Documentation of estimated weight in kilograms - pediatric"
* definition = "Frequency that weight or length-based estimate are documented in kilograms"
* rationale = "Medication errors are common in pediatric patients and are often based on wrong weight"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Weight value in kilograms or length-based weight entered"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients <15 years old that received medication originating from a 911 request"
//Note: Observation estimated wiehgt in kilograms 


Instance:   example-IHE-QORE-PEDS-04
InstanceOf: Measure
Title: "Example of a PEDS measure"
Description:      "holding typical values for a PEDS measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "PEDS-04"
* status = #unknown
* title = "Medication error rate"
* definition = "Medication error to be drafted by AG"
* rationale = "Medication error to be drafted by AG"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of errors (from chart audit)"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients <15 years old that received medication originating from a 911 request"
//Note:  Unknown Open issue 