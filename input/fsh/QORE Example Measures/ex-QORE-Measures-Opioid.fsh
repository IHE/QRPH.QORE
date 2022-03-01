Instance:   example-IHE-QORE-Opioid-01
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-01"
* status = #unknown
* title = "Percentage of suspected opioid OD patients who received Narcan"
* definition = "Measures the percentage of suspected opioid OD patients who received Narcan"
* rationale = "Narcan, an opioid antagonist, should be administered to patients with a suspected or confirmed opioid overdose"
* type = #process
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code who were given Narcan by EMS staff or prior to EMS arrival"
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code"
* group.population.criteria.code[+] = #text/cql
//Note: PCS Medication administration (PCS composition)and condition of overdose (PCS encounter diagnosis) 


Instance:   example-IHE-QORE-Opioid-02
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-02"
* status = #unknown
* title = "Percentage of suspected opioid OD patients transported to an ED"
* definition = "Measures the percentage of suspected opioid OD patients who were transported to an ED."
* rationale = "Transport to an ED provides an opportunity for offering a treatment path and reduces the risk of repeat OD or re-sedation once Narcan is metabolized"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan who were transported to a health care facility."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan"
* group.population.criteria.code[+] = #text/cql
//Note: Destination Location (PCS encounter)



Instance:   example-IHE-QORE-Opioid-03
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-03"
* status = #unknown
* title = "Percentage of suspected opioid OD patients given multiple Narcan doses in case of an “Unchanged” response to the first dose"
* definition = "Measures the percentage of suspected opioid OD patients who were given multiple Narcan doses in case of an “Unchanged” initial response"
* rationale = "High-potency opioids may require higher and/or more frequently administered doses of Narcan to reverse respiratory depression and/or to maintain adequate respirations"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code,  showed an “unchanged” response when given Narcan by EMS staff or prior to EMS arrival, and where given subsequent doses."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "All patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code."
* group.population.criteria.code[+] = #text/cql
//Note:  Medication administration PCS 


Instance:   example-IHE-QORE-Opioid-04
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-04"
* status = #unknown
* title = "Percentage of suspected opioid OD patients experiencing a repeat OD within a specified time period."
* definition = "Measures the percentage of suspected opioid OD patients experiencing a repeat OD within a specified time period."
* rationale = "Patients with a non-fatal opioid OD are vulnerable to another overdose. Repeat ODs increase the risk of fatal ODs."
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "All patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan who have 2 or more similar records within a specified time period."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan"
* group.population.criteria.code[+] = #text/cql
//Note: 


Instance:   example-IHE-QORE-Opioid-05
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-05"
* status = #unknown
* title = "Percentage of suspected opioid OD patients with a recorded combination of altered mental status, poor respiratory effort (RR<12 per minute), and pin point pupils."
* definition = "Measures the percentage of suspected opioid OD patients with a recorded combination of altered mental status, poor respiratory effort (RR<12 per minute), and pin point pupils."
* rationale = "These classical features of an opioid OD are key documentation elements"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, who have a recorded combination of altered mental status, pinpoint pupils, and poor respiratory effort (RR<12)."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan"
* group.population.criteria.code[+] = #text/cql
//Note: PCS Functional status and Vital signs observation (PCS)


Instance:   example-IHE-QORE-Opioid-06
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-06"
* status = #unknown
* title = "Percentage of suspected opioid OD patients with a specific opioid recorded"
* definition = "Measures the percentage of suspected opioid OD patients with a specific opioid recorded"
* rationale = "Identifies patterns of opioid use (Rx vs. illicit) and helps guide  management based on opioid potency"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "All patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan who have a specific opioid recorded."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with a provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan"
* group.population.criteria.code[+] = #text/cql
//Note: Medication statement PCS, IPS, Medical summary medications 



Instance:   example-IHE-QORE-Opioid-07
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-07"
* status = #unknown
* title = "Percentage of suspected opioid OD patients experiencing an Increase in pulse oximetry after EMS care."
* definition = "Measures the percentage of suspected opioid OD patients experiencing an Increase in pulse oximetry after EMS care."
* rationale = "Indicates effectiveness of management"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "All patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, and a recorded pulse oximetry showing a higher pulse oximetry value when measured at facility."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, and a recorded pulse oximetry"
* group.population.criteria.code[+] = #text/cql
//Note: PCS encounter diagnosis 


Instance:   example-IHE-QORE-Opioid-08
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-08"
* status = #unknown
* title = "Percentage of suspected opioid OD patients experiencing an Increase in Glasgow Coma Scale (GCS) after EMS care."
* definition = "Measures the percentage of suspected opioid OD patients experiencing an Increase in Glasgow Coma Scale (GCS) after EMS care."
* rationale = "Indicates effectiveness of management"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, and a recorded pulse oximetry showing a higher GCS level value when measured at facility"
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, and a recorded GCS level."
* group.population.criteria.code[+] = #text/cql
//Note: ED or hospital vital signs or observation for glasgcow coma score 


Instance:   example-IHE-QORE-Opioid-09
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-09"
* status = #unknown
* title = "Percentage of suspected opioid OD patients experiencing an Increase in respiratory rate after EMS care."
* definition = "Measures the percentage of suspected opioid OD patients experiencing an Increase in respiratory rate after EMS care."
* rationale = "Indicates effectiveness of management"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, and a recorded pulse oximetry showing a Respiratory rate =>12 when measured at facility."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, and a recorded Respiratory rate<12."
* group.population.criteria.code[+] = #text/cql
//Note: ED or hospital vital signs or observation for respratory rate


Instance:   example-IHE-QORE-Opioid-10
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-10"
* status = #unknown
* title = "Percentage of suspected opioid OD patients who received ventilatory support within five minutes of first EMS unit’s arrival on scene."
* definition = "Measures the percentage of suspected opioid OD patients who received ventilatory support within five minutes of first EMS unit’s arrival on scene."
* rationale = "Indicates effectiveness of management"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "all patients with an EMS provider primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "all patients with a primary or secondary impression containing an opioid poisoning ICD-10 code or showed an “improved” response when given Narcan, who received ventilatory support within five minutes of first EMS unit’s arrival on scene."
* group.population.criteria.code[+] = #text/cql
//Note: PCS Procedures performed


Instance:   example-IHE-QORE-Opioid-11
InstanceOf: Measure
Title: "Example of an Opioid measure"
Description:      "holding typical values for an Opioid measure"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
//* identifier = "Opioid-11"
* status = #unknown
* title = "Percentage of suspected opioid OD patients experiencing who exhibit adverse effects after naloxone administration"
* definition = "Measures the percentage of suspected opioid OD patients experiencing who exhibit adverse effects after naloxone administration."
* rationale = "Patients an opioid overdose may become agitated or violent following naloxone administration due to acute opioid withdrawal. Therefore, the goal is to use the lowest dose possible to restore spontaneous respirations but avoid precipitating withdrawal"
* type = #outcome
* group.population.code[+] = #numerator
* group.population.description[+] = "All patients who were given Narcan, and developed adverse effects."
* group.population.criteria.code[+] = #text/cql
* group.population.code[+] = #denominator
* group.population.description[+] = "All patients who were given Narcan."
* group.population.criteria.code[+] = #text/cql
//Note: 

