Instance:   example-IHE-QORE-Stroke-01
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-01"
* status = #unknown
* title = "Suspected Stroke Receiving Prehospital Stroke Assessment"
* definition = "To measure the percentage of suspected stroke patients who had a stroke assessment performed by EMS"
* rationale = "Stroke assessments using prehospital stroke assessment tools can screen for stroke and affect patient destinations"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of suspected stroke patients who had a stroke assessment performed (CPSS, LAMS, etc.)"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with a provider impression of stroke originating from a 911 request"
//Note: PCS stroke assement documented in Vital signs 

Instance:   example-IHE-QORE-Stroke-02
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-02"
* status = #unknown
* title = "Blood Glucose Measurement for Patients with a Provider Impression of Stroke"
* definition = "Measure percentage of patients with a provider impression of stroke that have a documented blood glucose level"
* rationale = "Hypoglycemia is a common stroke mimic and should be ruled out"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients receiving an evaluation of blood glucose level"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with a provider impression of stroke originating from a 911 request"
//Note:PCS vital signs blood glucose observation 


Instance:   example-IHE-QORE-Stroke-03
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-03"
* status = #unknown
* title = "Prehospital Notification"
* definition = "Measure of the percentage of patients with a positive prehospital stroke scale and transported by EMS with prenotification of a hospital verified, designated or otherwise identified as Acute Stroke-Ready or higher"
* rationale = "Early prenotification by EMS reduces facilities' door to intervention times. Shorter door-to-intervention times have been shown to improve outcomes"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Number of prenotifications prior to arrival at the hospital verified, designated or otherwise identified as Acute Stroke-Ready or higher"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with a provider impression of stroke originating from a 911 request"
//Note: PCS transport observation 


Instance:   example-IHE-QORE-Stroke-04
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-04"
* status = #unknown
* title = "Positive Stroke Assessments Transported to a Hospital Verified, Designated or Otherwise Identified as Acute Stroke-Ready or Higher"
* definition = "Measure of the percentage of patients with a positive prehospital stroke assessment transported to a hospital verified, designated or otherwise identified as Acute Stroke-Ready or higher"
* rationale = "Hospitals verified, designated or otherwise identified as Acute Stroke-Ready or higher are the proper destination for a suspected stroke. Transport to these facilities have been demonstrated to improve outcomes"
* type = #outcome
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients with a positive stroke assessment transported to a hospital verified, designated or otherwise identified as Acute Stroke-Ready or higher"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Number of suspected stroke patients who had a stroke assessment performed (CPSS, LAMS, RACE, etc.) originating from a 911 request"
//Note: PCS encounter 


Instance:   example-IHE-QORE-Stroke-05
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-05"
* status = #unknown
* title = "Provider Impression of Stroke with Last Known Well (LKW) Documented "
* definition = "Documented LKW times for patients with a provider impression of stroke"
* rationale = "EMS can collect this information from witnesses and/or family on-scene. The LKW is critical for determining the correct and safe in-hospital intervention"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients with documented LKW time by EMS"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with a provider impression of stroke originating from a 911 request"
//Note: Functional staues last known well observation/clinical impression 


Instance:   example-IHE-QORE-Stroke-06
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-06"
* status = #unknown
* title = "Prehospital Stroke Care Bundle"
* definition = "Measures the percentage of patients that received stroke measures 1 to 5"
* rationale = "Suspected stroke patients receiving all of the evidence-based processes may have an increased potential outcome"
* type = #outcome
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients receiving stroke measures 1 to 5"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with a provider impression of stroke originating from a 911 request"
//Note: 


Instance:   example-IHE_QORE_Stroke-07
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-07"
* status = #unknown
* title = "For Patients with Positive Stroke Assessment, Average Time from Last Known Well to Arrival at a Hospital Verified, Designated or Otherwise Identified as Acute Stroke-Ready or Higher"
* definition = "Measures the time from LKW to arrival at a receiving facility"
* rationale = "Reducing time from LKW to a stroke center that can intervene increases the potential for intervention to have the biggest impact"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Cumulative sum of time from last known well to arrival at a hospital verified, designated or otherwise identified as Acute Stroke-Ready or higher in minutes for each patient"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with a provider impression of stroke originating from a 911 request"
//Note: 


Instance:   example-IHE-QORE-Stroke-08
InstanceOf: Measure
Title: "Example of a Stroke measure"
Description:      "holding typical values for a Stroke measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Stroke-08"
* status = #unknown
* title = "Emergency Department Diagnosed Stroke Identified by Prehospital Stroke Assessment "
* definition = "Measures the percentage of emergency department diagnosed stroke patients who had a positive stroke assessment by EMS"
* rationale = "Stroke assessments using prehospital stroke assessment tools can screen for stroke and affect patient destinations. Using hospital data, this measure identified the number of actual strokes that were either falsely assessed or not assessed using a prehospital stroke scale"
* type = #process
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #numerator
* group.population[=].description = "Patients with a positive stroke assessment"
* group.population[+].criteria.language = #text/cql
* group.population[=].code = #denominator
* group.population[=].description = "Patients with emergency department diagnosed stroke transported by EMS originating from a 911 request"
//Note: 