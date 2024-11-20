# Forms Reference
## Table of contents


<a href="#user-content-1000">**1000.**</a>
1. <a href="#user-content-patients-history">Patient'S History</a>
2. <a href="#user-content-health-economics-medical-expenses-1000">Health Economics: Medical Expenses (1000)</a>
3. <a href="#user-content-health-economics-medical-expenses-part-2">Health Economics: Medical Expenses Part 2</a>
4. <a href="#user-content-health-economics-education">Health Economics: Education</a>
5. <a href="#user-content-health-economics-education-person-who-earns-the-highest-income">Health Economics: Education (Person Who Earns The Highest Income)</a>
6. <a href="#user-content-blood-result-1000">Blood Result (1000)</a>
7. <a href="#user-content-lumbar-puncturecerebrospinal-fluid">Lumbar Puncture/Cerebrospinal Fluid</a>
8. <a href="#user-content-microbiology">Microbiology</a>
9. <a href="#user-content-radiology">Radiology</a>

<a href="#user-content-1003">**1003.**</a>
1. <a href="#user-content-blood-result">Blood Result</a>

<a href="#user-content-1005">**1005.**</a>
1. <a href="#user-content-blood-result-1">Blood Result</a>

<a href="#user-content-1007">**1007.**</a>
1. <a href="#user-content-blood-result-2">Blood Result</a>
2. <a href="#user-content-lumbar-puncturecerebrospinal-fluid-1">Lumbar Puncture/Cerebrospinal Fluid</a>
3. <a href="#user-content-pkpd-1007">Pk/Pd (1007)</a>

<a href="#user-content-1010">**1010.**</a>
1. <a href="#user-content-blood-result-3">Blood Result</a>

<a href="#user-content-1012">**1012.**</a>
1. <a href="#user-content-blood-result-4">Blood Result</a>

<a href="#user-content-1014">**1014.**</a>
1. <a href="#user-content-week-2">Week 2</a>
2. <a href="#user-content-blood-result-5">Blood Result</a>
3. <a href="#user-content-lumbar-puncturecerebrospinal-fluid-2">Lumbar Puncture/Cerebrospinal Fluid</a>

<a href="#user-content-1028">**1028.**</a>
1. <a href="#user-content-week-4">Week 4</a>
2. <a href="#user-content-blood-result-6">Blood Result</a>

<a href="#user-content-1042">**1042.**</a>
1. <a href="#user-content-follow-up">Follow-Up</a>
2. <a href="#user-content-blood-result-7">Blood Result</a>

<a href="#user-content-1056">**1056.**</a>
1. <a href="#user-content-follow-up-1">Follow-Up</a>
2. <a href="#user-content-blood-result-8">Blood Result</a>

<a href="#user-content-1070">**1070.**</a>
1. <a href="#user-content-follow-up-1070">Follow-Up (1070)</a>
2. <a href="#user-content-health-economics-medical-expenses-1070">Health Economics: Medical Expenses (1070)</a>
3. <a href="#user-content-health-economics-medical-expenses-part-2-1">Health Economics: Medical Expenses Part 2</a>
4. <a href="#user-content-blood-result-9">Blood Result</a>

<a href="#user-content-1112">**1112.**</a>
1. <a href="#user-content-week16">Week16</a>
2. <a href="#user-content-blood-result-10">Blood Result</a>


### 1000



*Rendered on 2018-12-24 17:41*

#### Patient'S History
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Current Symptoms**

**1.0.** subject visit
* db_table: ambition_subject_patienthistory
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_patienthistory
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** What are your current symptoms?
* db_table: ambition_subject_patienthistory
* column: symptom
* type: ManyToManyField
* responses: *Select all that apply*
  - `double_vision`: *Double vision*
  - `behaviour_change`: *Behaviour change*
  - `confusion`: *Confusion*
  - `cough`: *Cough*
  - `drowsiness`: *Drowsiness*
  - `fever`: *Fever*
  - `focal_weakness`: *Focal weakness*
  - `headache`: *Headache*
  - `hearing_loss`: *Hearing loss*
  - `nausea`: *Nausea*
  - `seizures_gt_72`: *Seizures (72 hrs - 1 mo)*
  - `seizures_lt_72 hrs`: *Seizures (<72 hrs)*
  - `shortness_of_breath`: *Shortness of breath*
  - `skin_lesions`: *Skin lesions*
  - `visual_loss`: *Visual loss*
  - `vomiting`: *Vomiting*
  - `weight_loss`: *Weight loss*
---

**4.0.** If headache, how many days did it last?
* db_table: ambition_subject_patienthistory
* column: headache_duration
* type: IntegerField
---

**5.0.** If visual loss, how many days did it last?
* db_table: ambition_subject_patienthistory
* column: visual_loss_duration
* type: IntegerField
---

**Section: Previous Medical History**

**6.0.** Previous medical history of Tuberculosis?
* db_table: ambition_subject_patienthistory
* column: tb_history
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**7.0.** If YES, site of TB?
* db_table: ambition_subject_patienthistory
* column: tb_site
* type: CharField
* length: 15
* responses:
  - `N/A`: *Not applicable*
  - `pulmonary`: *Pulmonary*
  - `extra_pulmonary`: *Extra-pulmonary*
  - `both`: *Both*
---

**8.0.** Are you currently taking TB treatment?
* db_table: ambition_subject_patienthistory
* column: tb_treatment
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**9.0.** If YES, are you currently also taking Rifampicin?
* db_table: ambition_subject_patienthistory
* column: taking_rifampicin
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**10.0.** If YES, when did you first start taking Rifampicin?
* db_table: ambition_subject_patienthistory
* column: rifampicin_started_date
* type: DateField
* format: YYYY-MM-DD
---

**Section: Previous Opportunistic Infections**

**11.0.** Is this a new HIV diagnosis?
* db_table: ambition_subject_patienthistory
* column: new_hiv_diagnosis
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** If NO, already taking ARVs?
* db_table: ambition_subject_patienthistory
* column: taking_arv
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**13.0.** If YES, date ARVs were started.
* db_table: ambition_subject_patienthistory
* column: arv_date
* type: DateField
* format: YYYY-MM-DD
---

**14.0.** Is the subject's ARV date estimated?

&nbsp;&nbsp;&nbsp;&nbsp; *If the exact date is not known, please indicate which part of the date is estimated.*
* db_table: ambition_subject_patienthistory
* column: arv_date_estimated
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `not_estimated`: *No.*
  - `D`: *Yes, estimated the Day*
  - `MD`: *Yes, estimated Month and Day*
  - `YMD`: *Yes, estimated Year, Month and Day*
---

**15.0.** Drug used in first line ARV regimen
* db_table: ambition_subject_patienthistory
* column: first_arv_regimen
* type: CharField
* length: 50
* responses:
  - `N/A`: *Not applicable*
  - `TDF_3TC_FTC_with_EFV_or_NVP`: *TDF + 3TC/FTC + either EFV or NVP or DTG*
  - `AZT_3TC_with_EFV_NVP_or_DTG`: *AZT+3TC+ either EFV or NVP or DTG*
  - `OTHER`: *Other*
---

**15.1.** If Other, specify ...
* db_table: ambition_subject_patienthistory
* column: first_arv_regimen_other
* type: CharField
* length: 35
* responses: *free text*
---

**16.0.** If first line:
* db_table: ambition_subject_patienthistory
* column: first_line_choice
* type: CharField
* length: 5
* responses:
  - `N/A`: *Not applicable*
  - `EFV`: *EFV*
  - `DTG`: *DTG*
  - `NVP`: *NVP*
  - `OTHER`: *Other*
---

**17.0.** Second line ARV regimen
* db_table: ambition_subject_patienthistory
* column: second_arv_regimen
* type: CharField
* length: 50
* responses:
  - `N/A`: *Not applicable*
  - `TDF_3TC_FTC_with_ATZ_r_or_Lopinavir_r`: *TDF + 3TC/FTC + either ATZ/r or Lopinavir/r*
  - `AZT_3TC_with_ATZ_r_or_Lopinavir_r`: *AZT +3TC + either ATZ/r or Lopinavir/r*
  - `OTHER`: *Other*
---

**17.1.** If Other, specify ...
* db_table: ambition_subject_patienthistory
* column: second_arv_regimen_other
* type: CharField
* length: 35
* responses: *free text*
---

**18.0.** Is the patient reportedly adherent?
* db_table: ambition_subject_patienthistory
* column: patient_adherence
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**19.0.** If not adherent, how many doses missed in the last month?
* db_table: ambition_subject_patienthistory
* column: tablets_missed
* type: IntegerField
---

**20.0.** If no tablets taken this month, how many months since the last dose taken?
* db_table: ambition_subject_patienthistory
* column: last_dose
* type: IntegerField
---

**21.0.** Last Viral Load, if known?

&nbsp;&nbsp;&nbsp;&nbsp; *copies/mL*
* db_table: ambition_subject_patienthistory
* column: last_viral_load
* type: DecimalField
---

**22.0.** Viral Load date
* db_table: ambition_subject_patienthistory
* column: viral_load_date
* type: DateField
* format: YYYY-MM-DD
---

**23.0.** Is the subject's Viral Load date estimated?

&nbsp;&nbsp;&nbsp;&nbsp; *If the exact date is not known, please indicate which part of the date is estimated.*
* db_table: ambition_subject_patienthistory
* column: vl_date_estimated
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `not_estimated`: *No.*
  - `D`: *Yes, estimated the Day*
  - `MD`: *Yes, estimated Month and Day*
  - `YMD`: *Yes, estimated Year, Month and Day*
---

**24.0.** Last CD4, if known?

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup>*
* db_table: ambition_subject_patienthistory
* column: last_cd4
* type: IntegerField
---

**25.0.** CD4 date
* db_table: ambition_subject_patienthistory
* column: cd4_date
* type: DateField
* format: YYYY-MM-DD
---

**26.0.** Is the subject's CD4 date estimated?

&nbsp;&nbsp;&nbsp;&nbsp; *If the exact date is not known, please indicate which part of the date is estimated.*
* db_table: ambition_subject_patienthistory
* column: cd4_date_estimated
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `not_estimated`: *No.*
  - `D`: *Yes, estimated the Day*
  - `MD`: *Yes, estimated Month and Day*
  - `YMD`: *Yes, estimated Year, Month and Day*
---

**Section: Vital Signs**

**27.0.** Temperature:

&nbsp;&nbsp;&nbsp;&nbsp; *in degrees Celcius*
* db_table: ambition_subject_patienthistory
* column: temp
* type: DecimalField
---

**28.0.** Heart rate:

&nbsp;&nbsp;&nbsp;&nbsp; *bpm*
* db_table: ambition_subject_patienthistory
* column: heart_rate
* type: IntegerField
---

**29.0.** Blood pressure: systolic

&nbsp;&nbsp;&nbsp;&nbsp; *in mm. format SYS, e.g. 120*
* db_table: ambition_subject_patienthistory
* column: sys_blood_pressure
* type: IntegerField
---

**30.0.** Blood pressure: diastolic

&nbsp;&nbsp;&nbsp;&nbsp; *in Hg. format DIA, e.g. 80*
* db_table: ambition_subject_patienthistory
* column: dia_blood_pressure
* type: IntegerField
---

**31.0.** Respiratory rate:

&nbsp;&nbsp;&nbsp;&nbsp; *breaths/min*
* db_table: ambition_subject_patienthistory
* column: respiratory_rate
* type: IntegerField
---

**32.0.** Weight:

&nbsp;&nbsp;&nbsp;&nbsp; *kg*
* db_table: ambition_subject_patienthistory
* column: weight
* type: DecimalField
---

**33.0.** Is weight estimated or measured?
* db_table: ambition_subject_patienthistory
* column: weight_determination
* type: CharField
* length: 15
* responses:
  - `estimated`: *Estimated*
  - `measured`: *Measured*
---

**34.0.** Glasgow Coma Score:

&nbsp;&nbsp;&nbsp;&nbsp; */15*
* db_table: ambition_subject_patienthistory
* column: glasgow_coma_score
* type: IntegerField
---

**Section: Neurological**

**35.0.** neurological
* db_table: ambition_subject_patienthistory
* column: neurological
* type: ManyToManyField
* responses: *Select all that apply*
  - `focal_neurologic_deficit`: *Focal neurologic deficit*
  - `meningism`: *Meningism*
  - `papilloedema`: * Papilloedema*
  - `CN_III_palsy`: *Cranial Nerve III palsy*
  - `CN_IV_palsy`: *Cranial Nerve IV palsy*
  - `CN_VIII_palsy`: *Cranial Nerve VIII palsy*
  - `CN_VII_palsy`: *Cranial Nerve VII palsy*
  - `CN_VI_palsy`: *Cranial Nerve VI palsy*
  - `OTHER`: *Other CN palsy*
---

**35.1.** If "Other CN palsy", specify
* db_table: ambition_subject_patienthistory
* column: neurological_other
* type: CharField
* length: 250
* responses: *free text*
---

**36.0.** If "Focal neurologic deficit" chosen, please specify details:
* db_table: ambition_subject_patienthistory
* column: focal_neurologic_deficit
* type: TextField
---

**37.0.** Study day visual acuity recorded?
* db_table: ambition_subject_patienthistory
* column: visual_acuity_day
* type: DateField
* format: YYYY-MM-DD
---

**38.0.** Visual acuity left eye:
* db_table: ambition_subject_patienthistory
* column: left_acuity
* type: DecimalField
---

**39.0.** Visual acuity right eye
* db_table: ambition_subject_patienthistory
* column: right_acuity
* type: DecimalField
---

**40.0.** ECOG Disability Score
* db_table: ambition_subject_patienthistory
* column: ecog_score
* type: CharField
* length: 15
* responses:
  - `0`: *Fully active, able to carry on all pre-disease performance without restriction*
  - `1`: *Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work*
  - `2`: *Ambulatory and capable of all self-care but unable to carry out any work activities; up and about more than 50% of waking hours *
  - `3`: *Capable of only limited self-care; confined to bed or chair more than 50% of waking hours*
  - `4`: *Completely disabled; cannot carry on any self-care; totally confined to bed or chair*
  - `5`: *Deceased*
---

**Section: Other**

**41.0.** Abnormal lung exam:
* db_table: ambition_subject_patienthistory
* column: lung_exam
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** Cryptococcal related skin lesions:
* db_table: ambition_subject_patienthistory
* column: cryptococcal_lesions
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**43.0.** specify medications
* db_table: ambition_subject_patienthistory
* column: specify_medications
* type: ManyToManyField
* responses: *Select all that apply*
  - `TMP-SMX`: *TMP-SMX*
  - `OTHER`: *Other, specify;*
---

**43.1.** specify medications other
* db_table: ambition_subject_patienthistory
* column: specify_medications_other
* type: TextField
* length: 150
---

**Section: Previous Infection**

**44.0.** Previous opportunistic infection other than TB?
* db_table: ambition_subject_patienthistory
* column: previous_oi
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---




*Rendered on 2018-12-24 17:41*

#### Health Economics: Medical Expenses (1000)
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Medical Expenses**

**1.0.** subject visit
* db_table: ambition_subject_medicalexpenses
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_medicalexpenses
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Which currency do you use?
* db_table: ambition_subject_medicalexpenses
* column: currency
* type: CharField
* length: 20
* responses:
  - `botswana_pula`: *Botswana Pula*
  - `malawian_kwacha`: *Malawian Kwacha*
  - `south_african_rand`: *South African Rand*
  - `ugandan_shilling`: *Ugandan Shilling*
  - `us_dollar`: *US Dollar*
  - `zimbabwean_dollar`: *Zimbabwean Dollar*
---

**4.0.** Over the last 4/10 weeks, how much have you spent on activities relating to your health?

&nbsp;&nbsp;&nbsp;&nbsp; *On D1 record data for the four weeks prior to recruitment. On W10 record data for the ten weeks since recruitment.*
* db_table: ambition_subject_medicalexpenses
* column: subject_spent_last_4wks
* type: DecimalField
---

**5.0.** Over the last 4/10 weeks, how much has someone else spent on activities relating to your health?

&nbsp;&nbsp;&nbsp;&nbsp; *On D1 record data for the four weeks prior to recruitment. On W10 record data for the ten weeks since recruitment.*
* db_table: ambition_subject_medicalexpenses
* column: someone_spent_last_4wks
* type: DecimalField
---

**6.0.** How much in total has been spent on your healthcare in the last 4/10 weeks?

&nbsp;&nbsp;&nbsp;&nbsp; *On D1 record data for the four weeks prior to recruitment. On W10 record data for the ten weeks since recruitment.*
* db_table: ambition_subject_medicalexpenses
* column: total_spent_last_4wks
* type: DecimalField
---

**7.0.** How long have you been sick with your current condition?

&nbsp;&nbsp;&nbsp;&nbsp; *in days*
* db_table: ambition_subject_medicalexpenses
* column: duration_present_condition
* type: IntegerField
---

**8.0.** What would you have been doing if you were not sick with your present condition
* db_table: ambition_subject_medicalexpenses
* column: activities_missed
* type: CharField
* length: 25
* responses:
  - `working`: *Working*
  - `studying`: *Studying*
  - `caring_for_children`: *Caring for children*
  - `maintaining_house`: *Maintaining the house*
  - `nothing`: *Nothing*
  - `OTHER`: *Other*
---

**8.1.** If Other, specify ...
* db_table: ambition_subject_medicalexpenses
* column: activities_missed_other
* type: CharField
* length: 25
* responses: *free text*
---

**9.0.** How much time did you take off work?

&nbsp;&nbsp;&nbsp;&nbsp; *in days*
* db_table: ambition_subject_medicalexpenses
* column: time_off_work
* type: DecimalField
---

**10.0.** How much time did a caring family member take to accompany you to the hospital?

&nbsp;&nbsp;&nbsp;&nbsp; *in days*
* db_table: ambition_subject_medicalexpenses
* column: carer_time_off
* type: IntegerField
---

**11.0.** Did you lose earnings as a result?
* db_table: ambition_subject_medicalexpenses
* column: loss_of_earnings
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**12.0.** How much did you lose?
* db_table: ambition_subject_medicalexpenses
* column: earnings_lost_amount
* type: DecimalField
---

**13.0.** Have you received any treatment or care for your present condition, before coming to the hospital?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, please complete medical expenses part 2*
* db_table: ambition_subject_medicalexpenses
* column: care_before_hospital
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**Section: Information Source**

**14.0.** What is the main source of this information?
* db_table: ambition_subject_medicalexpenses
* column: info_source
* type: CharField
* length: 25
* responses:
  - `patient`: *Patient*
  - `next_of_kin`: *Next of Kin/Relative*
---

**Section: House Essentials**

**15.0.** How much do you/your family spend on food in a week?
* db_table: ambition_subject_medicalexpenses
* column: food_spend
* type: DecimalField
---

**16.0.** How much do you/your family spent on rent and utilities a month?
* db_table: ambition_subject_medicalexpenses
* column: utilities_spend
* type: DecimalField
---

**17.0.** How much have you spent on large items (e.g. furniture, electrical items, cars) in the last year?
* db_table: ambition_subject_medicalexpenses
* column: item_spend
* type: DecimalField
---

**Section: Transport**

**18.0.** Which form of transport did you take to get here today?
* db_table: ambition_subject_medicalexpenses
* column: form_of_transport
* type: CharField
* length: 25
* responses:
  - `bus`: *Bus*
  - `train`: *Train*
  - `ambulance`: *Ambulance*
  - `private_taxi`: *Private taxi*
  - `hired_motorbike`: *Hired motorbike*
  - `own_car`: *Own car*
  - `own_motorbike`: *Own motorbike*
  - `bicycle`: *Bicycle*
  - `foot`: *Foot*
  - `N/A`: *Not applicable*
---

**19.0.** How much did you spend on the transport (in total)?
* db_table: ambition_subject_medicalexpenses
* column: transport_fare
* type: DecimalField
---

**20.0.** How long did it take you to reach there?

&nbsp;&nbsp;&nbsp;&nbsp; *Specify as hours:minutes (format HH:MM)*
* db_table: ambition_subject_medicalexpenses
* column: travel_time
* type: CharField
* length: 8
* responses: *free text*
---

**Section: Loans and Insurance**

**21.0.** Did you take out any loans to pay for your healthcare?
* db_table: ambition_subject_medicalexpenses
* column: loans
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**22.0.** Did you sell anything to pay for your healthcare?
* db_table: ambition_subject_medicalexpenses
* column: sold_anything
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**23.0.** Do you have private healthcare insurance?
* db_table: ambition_subject_medicalexpenses
* column: private_healthcare
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** Did you use it to help pay for your healthcare?
* db_table: ambition_subject_medicalexpenses
* column: healthcare_insurance
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Welfare or social service support**

**25.0.** Do you receive any welfare or social service support?
* db_table: ambition_subject_medicalexpenses
* column: welfare
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---




*Rendered on 2018-12-24 17:41*

#### Health Economics: Medical Expenses Part 2
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_medicalexpensestwo
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_medicalexpensestwo
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---




*Rendered on 2018-12-24 17:41*

#### Health Economics: Education
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.

*Additional instructions*: The following questions refer to the educational background of the patient.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_education
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_education
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** What is your profession?
* db_table: ambition_subject_education
* column: profession
* type: CharField
* length: 25
* responses: *free text*
---

**4.0.** How many years of education did you complete?
* db_table: ambition_subject_education
* column: education_years
* type: IntegerField
---

**5.0.** What is the your highest education certificate?
* db_table: ambition_subject_education
* column: education_certificate
* type: CharField
* length: 25
* responses: *free text*
---

**6.0.** Did you go to elementary/primary school?
* db_table: ambition_subject_education
* column: elementary
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**7.0.** If YES, for how many years?
* db_table: ambition_subject_education
* column: attendance_years
* type: IntegerField
---

**8.0.** Did you go to secondary school?
* db_table: ambition_subject_education
* column: secondary
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**9.0.** If YES, for how many years?
* db_table: ambition_subject_education
* column: secondary_years
* type: IntegerField
---

**10.0.** Did you go to higher education?
* db_table: ambition_subject_education
* column: higher_education
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**11.0.** If YES, for how many years?
* db_table: ambition_subject_education
* column: higher_years
* type: IntegerField
---

**12.0.** Are you the person who earns the highest income?

&nbsp;&nbsp;&nbsp;&nbsp; *If NO, please complete the form "Health Economics: Education (Person who earns the highest income)" on behalf of the Person who earns the highest income.*
* db_table: ambition_subject_education
* column: household_head
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---




*Rendered on 2018-12-24 17:41*

#### Health Economics: Education (Person Who Earns The Highest Income)
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.

*Additional instructions*: <H5><span style="color:orange;">The following questions refer to the educational background of the Person who earns the highest income</span></H5>Please respond on behalf of the Person who earns the highest income.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_educationhoh
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_educationhoh
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** What is your profession?
* db_table: ambition_subject_educationhoh
* column: profession
* type: CharField
* length: 25
* responses: *free text*
---

**4.0.** How many years of education did you complete?
* db_table: ambition_subject_educationhoh
* column: education_years
* type: IntegerField
---

**5.0.** What is the your highest education certificate?
* db_table: ambition_subject_educationhoh
* column: education_certificate
* type: CharField
* length: 25
* responses: *free text*
---

**6.0.** Did you go to elementary/primary school?
* db_table: ambition_subject_educationhoh
* column: elementary
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**7.0.** If YES, for how many years?
* db_table: ambition_subject_educationhoh
* column: attendance_years
* type: IntegerField
---

**8.0.** Did you go to secondary school?
* db_table: ambition_subject_educationhoh
* column: secondary
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**9.0.** If YES, for how many years?
* db_table: ambition_subject_educationhoh
* column: secondary_years
* type: IntegerField
---

**10.0.** Did you go to higher education?
* db_table: ambition_subject_educationhoh
* column: higher_education
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**11.0.** If YES, for how many years?
* db_table: ambition_subject_educationhoh
* column: higher_years
* type: IntegerField
---




*Rendered on 2018-12-24 17:41*

#### Blood Result (1000)
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---

**Section: BIOSYNEX® CryptoPS (Semi-quantitative CrAg)**

**66.0.** Biosynex Semi-quantitative CrAg performed?

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_bloodresult
* column: bios_crag
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**67.0.** Control result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_bloodresult
* column: crag_control_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**68.0.** T1 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_bloodresult
* column: crag_t1_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**69.0.** T2 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_bloodresult
* column: crag_t2_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---




*Rendered on 2018-12-24 17:41*

#### Lumbar Puncture/Cerebrospinal Fluid
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_lumbarpuncturecsf
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_lumbarpuncturecsf
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** LP Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: lp_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**4.0.** Reason for LP
* db_table: ambition_subject_lumbarpuncturecsf
* column: reason_for_lp
* type: CharField
* length: 50
* responses:
  - `scheduled_per_protocol`: *Scheduled per protocol*
  - `therapeutic_lp`: *Therapeutic LP*
  - `clincal_deterioration`: *Clinical deterioration*
---

**5.0.** opening pressure

&nbsp;&nbsp;&nbsp;&nbsp; *Units cm of H<sub>2</sub>O*
* db_table: ambition_subject_lumbarpuncturecsf
* column: opening_pressure
* type: IntegerField
---

**6.0.** closing pressure

&nbsp;&nbsp;&nbsp;&nbsp; *Units cm of H<sub>2</sub>O*
* db_table: ambition_subject_lumbarpuncturecsf
* column: closing_pressure
* type: IntegerField
---

**7.0.** CSF amount removed

&nbsp;&nbsp;&nbsp;&nbsp; *Units ml*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_amount_removed
* type: IntegerField
---

**Section: Quantitative Culture**

**8.0.** QC Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_lumbarpuncturecsf
* column: qc_requisition
* type: ForeignKey
---

**9.0.** QC Result Report Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: qc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**10.0.** quantitative culture

&nbsp;&nbsp;&nbsp;&nbsp; *Units CFU/ml*
* db_table: ambition_subject_lumbarpuncturecsf
* column: quantitative_culture
* type: IntegerField
---

**Section: CSF**

**11.0.** CSF Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_requisition
* type: ForeignKey
---

**12.0.** CSF Result Report Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**13.0.** Other organism (non-Cryptococcus)

&nbsp;&nbsp;&nbsp;&nbsp; *Complete after getting the results.*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_culture
* type: CharField
* length: 18
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `awaiting_results`: *Awaiting results*
  - `not_done`: *Not done*
---

**14.0.** If YES, specify organism:
* db_table: ambition_subject_lumbarpuncturecsf
* column: other_csf_culture
* type: CharField
* length: 75
* responses: *free text*
---

**15.0.** Total CSF WBC cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup>*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_wbc_cell_count
* type: IntegerField
---

**16.0.** Differential lymphocyte cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup> or %*
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_lymphocyte_count
* type: IntegerField
---

**17.0.** differential lymphocyte unit
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_lymphocyte_unit
* type: CharField
* length: 6
* responses:
  - `mm3`: *mm<sup>3</sup>*
  - `%`: *%*
---

**18.0.** Differential neutrophil cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup> or %*
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_neutrophil_count
* type: IntegerField
---

**19.0.** differential neutrophil unit
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_neutrophil_unit
* type: CharField
* length: 6
* responses:
  - `mm3`: *mm<sup>3</sup>*
  - `%`: *%*
---

**20.0.** india ink
* db_table: ambition_subject_lumbarpuncturecsf
* column: india_ink
* type: CharField
* length: 15
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `IND`: *Indeterminate*
  - `not_done`: *Not done*
---

**21.0.** CSF glucose:

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mmol/L or mg/dL*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_glucose
* type: DecimalField
---

**22.0.** CSF glucose units:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_glucose_units
* type: CharField
* length: 6
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** CSF protein:

&nbsp;&nbsp;&nbsp;&nbsp; *Units in g/L*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_protein
* type: DecimalField
---

**24.0.** CSF CrAg:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_cr_ag
* type: CharField
* length: 15
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `IND`: *Indeterminate*
  - `not_done`: *Not done*
---

**25.0.** CSF CrAg done by IMMY CrAg LFA:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_cr_ag_lfa
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**26.0.** Biosynex Semi-quantitative CrAg performed?

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: bios_crag
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**27.0.** Control result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_control_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**28.0.** T1 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_t1_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**29.0.** T2 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_t2_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---




*Rendered on 2018-12-24 17:41*

#### Microbiology
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Urine Culture (Only for patients with >50 white cells in urine)**

**1.0.** subject visit
* db_table: ambition_subject_microbiology
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_microbiology
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** urine culture performed

&nbsp;&nbsp;&nbsp;&nbsp; *only for patients with >50 white cells in urine*
* db_table: ambition_subject_microbiology
* column: urine_culture_performed
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**4.0.** urine taken date
* db_table: ambition_subject_microbiology
* column: urine_taken_date
* type: DateField
* format: YYYY-MM-DD
---

**5.0.** Urine culture results, if completed
* db_table: ambition_subject_microbiology
* column: urine_culture_results
* type: CharField
* length: 10
* responses:
  - `N/A`: *Not applicable*
  - `no_growth`: *No growth*
  - `POS`: *Positive*
---

**6.0.** If positive, organism
* db_table: ambition_subject_microbiology
* column: urine_culture_organism
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `e_coli`: *E.coli*
  - `klebsiella_sp`: *Klebsiella spp.*
  - `OTHER`: *Other*
---

**6.1.** If Other, specify ...
* db_table: ambition_subject_microbiology
* column: urine_culture_organism_other
* type: CharField
* length: 50
* responses: *free text*
---

**Section: Blood Culture**

**7.0.** blood culture performed
* db_table: ambition_subject_microbiology
* column: blood_culture_performed
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** Blood culture results, if completed
* db_table: ambition_subject_microbiology
* column: blood_culture_results
* type: CharField
* length: 10
* responses:
  - `N/A`: *Not applicable*
  - `no_growth`: *No growth*
  - `POS`: *Positive*
---

**9.0.** blood taken date
* db_table: ambition_subject_microbiology
* column: blood_taken_date
* type: DateField
* format: YYYY-MM-DD
---

**10.0.** If positive, study day positive culture sample taken
* db_table: ambition_subject_microbiology
* column: day_blood_taken
* type: IntegerField
---

**11.0.** If growth positive, organism
* db_table: ambition_subject_microbiology
* column: blood_culture_organism
* type: CharField
* length: 50
* responses:
  - `N/A`: *Not applicable*
  - `cryptococcus_neoformans`: *Cryptococcus neoformans*
  - `bacteria`: *Bacteria*
  - `bacteria_and_cryptococcus`: *Bacteria and Cryptococcus*
  - `OTHER`: *Other*
---

**11.1.** If Other, specify ...
* db_table: ambition_subject_microbiology
* column: blood_culture_organism_other
* type: CharField
* length: 50
* responses: *free text*
---

**12.0.** If bacteria, type
* db_table: ambition_subject_microbiology
* column: bacteria_identified
* type: CharField
* length: 50
* responses:
  - `N/A`: *Not applicable*
  - `e_coli`: *E.coli*
  - `klebsiella_sp`: *Klebsiella spp.*
  - `streptococcus_pneumoniae`: *Streptococcus pneumoniae*
  - `staphylococus_aureus`: *(Sensitive) Staphylococus aureus*
  - `mrsa`: *MRSA*
  - `OTHER`: *Other*
---

**12.1.** If Other, specify ...
* db_table: ambition_subject_microbiology
* column: bacteria_identified_other
* type: CharField
* length: 100
* responses: *free text*
---

**Section: Sputum Microbiology**

**13.0.** AFB microscopy performed?

&nbsp;&nbsp;&nbsp;&nbsp; *Was sputum AFB done?*
* db_table: ambition_subject_microbiology
* column: sputum_afb_performed
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**14.0.** sputum afb date
* db_table: ambition_subject_microbiology
* column: sputum_afb_date
* type: DateField
* format: YYYY-MM-DD
---

**15.0.** AFB results
* db_table: ambition_subject_microbiology
* column: sputum_results_afb
* type: CharField
* length: 10
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**16.0.** Culture performed?
* db_table: ambition_subject_microbiology
* column: sputum_performed
* type: CharField
* length: 15
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**17.0.** sputum taken date
* db_table: ambition_subject_microbiology
* column: sputum_taken_date
* type: DateField
* format: YYYY-MM-DD
---

**18.0.** Culture results
* db_table: ambition_subject_microbiology
* column: sputum_results_culture
* type: CharField
* length: 10
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**19.0.** If culture is positive, please specify:
* db_table: ambition_subject_microbiology
* column: sputum_results_positive
* type: CharField
* length: 50
* responses: *free text*
---

**20.0.** Sputum Gene-Xpert performed?
* db_table: ambition_subject_microbiology
* column: sputum_genexpert_performed
* type: CharField
* length: 15
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**21.0.** Date sputum Gene-Xpert taken
* db_table: ambition_subject_microbiology
* column: sputum_genexpert_date
* type: DateField
* format: YYYY-MM-DD
---

**22.0.** Sputum Gene-Xpert results
* db_table: ambition_subject_microbiology
* column: sputum_result_genexpert
* type: CharField
* length: 45
* responses:
  - `mtb_detected_rif_resistance_detected`: *MTB DETECTED & Rif Resistance DETECTED*
  - `mtb_detected_rif_resistance_not_detected`: *MTB DETECTED & Rif Resistance NOT detected*
  - `mtb_detected_rif_resistance_indeterminate`: *MTB DETECTED & Rif Resistance INDETERMINATE*
  - `mtb_not_detected`: *MTB NOT detected*
  - `N/A`: *Not applicable*
---

**Section: CSF Microbiology**

**23.0.** CSF Gene-Xpert performed?
* db_table: ambition_subject_microbiology
* column: csf_genexpert_performed
* type: CharField
* length: 15
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**24.0.** Date CSF Gene-Xpert taken
* db_table: ambition_subject_microbiology
* column: csf_genexpert_date
* type: DateField
* format: YYYY-MM-DD
---

**25.0.** CSF Gene-Xpert results
* db_table: ambition_subject_microbiology
* column: csf_result_genexpert
* type: CharField
* length: 45
* responses:
  - `mtb_detected_rif_resistance_detected`: *MTB DETECTED & Rif Resistance DETECTED*
  - `mtb_detected_rif_resistance_not_detected`: *MTB DETECTED & Rif Resistance NOT detected*
  - `mtb_detected_rif_resistance_indeterminate`: *MTB DETECTED & Rif Resistance INDETERMINATE*
  - `mtb_not_detected`: *MTB NOT detected*
  - `N/A`: *Not applicable*
---

**Section: Histopathology**

**26.0.** tissue biopsy taken
* db_table: ambition_subject_microbiology
* column: tissue_biopsy_taken
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**27.0.** If YES, results
* db_table: ambition_subject_microbiology
* column: tissue_biopsy_results
* type: CharField
* length: 10
* responses:
  - `N/A`: *Not applicable*
  - `no_growth`: *No growth*
  - `POS`: *Positive*
---

**28.0.** biopsy date
* db_table: ambition_subject_microbiology
* column: biopsy_date
* type: DateField
* format: YYYY-MM-DD
---

**29.0.** If positive, Study day positive culture sample taken
* db_table: ambition_subject_microbiology
* column: day_biopsy_taken
* type: IntegerField
---

**30.0.** If growth positive, organism
* db_table: ambition_subject_microbiology
* column: tissue_biopsy_organism
* type: CharField
* length: 50
* responses:
  - `N/A`: *Not applicable*
  - `cryptococcus_neoformans`: *Cryptococcus neoformans*
  - `mycobacterium_tuberculosis`: *Mycobacterium Tuberculosis*
  - `OTHER`: *Other*
---

**30.1.** If Other, specify ...
* db_table: ambition_subject_microbiology
* column: tissue_biopsy_organism_other
* type: CharField
* length: 50
* responses: *free text*
---

**31.0.** histopathology report
* db_table: ambition_subject_microbiology
* column: histopathology_report
* type: TextField
---




*Rendered on 2018-12-24 17:41*

#### Radiology
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: CXR**

**1.0.** subject visit
* db_table: ambition_subject_radiology
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_radiology
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Is CXR done
* db_table: ambition_subject_radiology
* column: cxr_done
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**4.0.** If yes, when was CXR done
* db_table: ambition_subject_radiology
* column: cxr_date
* type: DateField
* format: YYYY-MM-DD
---

**5.0.** If YES, result
* db_table: ambition_subject_radiology
* column: cxr_type
* type: ManyToManyField
* responses: *Select all that apply*
  - `hilar_adenopathy`: *Hilar adenopathy*
  - `infiltrates`: *Infiltrates*
  - `miliary_appearance`: *Miliary appearance*
  - `NORMAL`: *Normal*
  - `pleural_effusion`: *Pleural effusion*
---

**6.0.** If infiltrates, specify location
* db_table: ambition_subject_radiology
* column: infiltrate_location
* type: ManyToManyField
* responses: *Select all that apply*
  - `diffuse`: *Diffuse*
  - `lll`: *LLL*
  - `lul`: *LUL*
  - `rll`: *RLL*
  - `rml`: *RML*
  - `rul`: *RUL*
---

**7.0.** Description/Comments
* db_table: ambition_subject_radiology
* column: cxr_description
* type: TextField
---

**Section: CT/MRI Brain**

**8.0.** CT/MRI brain scan performed?
* db_table: ambition_subject_radiology
* column: ct_performed
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**9.0.** Date CT performed
* db_table: ambition_subject_radiology
* column: ct_performed_date
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**10.0.** CT/MRI brain scan performed with contrast?
* db_table: ambition_subject_radiology
* column: scanned_with_contrast
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**11.0.** Reason for brain imaging
* db_table: ambition_subject_radiology
* column: brain_imaging_reason
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `reduction_in_gcs`: *Reduction in GCS*
  - `new_neurology`: *New neurology*
  - `OTHER`: *Other*
---

**11.1.** If other, please specify
* db_table: ambition_subject_radiology
* column: brain_imaging_reason_other
* type: CharField
* length: 50
* responses: *free text*
---

**12.0.** are results abnormal
* db_table: ambition_subject_radiology
* column: are_results_abnormal
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**13.0.** If results are abnormal, what is the reason?
* db_table: ambition_subject_radiology
* column: abnormal_results_reason
* type: ManyToManyField
* responses: *Select all that apply*
  - `cerebral_oedema`: *Cerebral oedema*
  - `cryptococcomas`: *Cryptococcomas*
  - `dilated_virchow_robin_spaces`: *Dilated Virchow-Robin spaces*
  - `enhancing_mass_lesions`: *Enhancing mass lesions DD toxoplasmosis, TB, lymphoma*
  - `hydrocephalus`: *Hydrocephalus*
  - `infarcts`: *Infarcts*
  - `OTHER`: *Other*
---

**13.1.** If other, please specify reason
* db_table: ambition_subject_radiology
* column: abnormal_results_reason_other
* type: CharField
* length: 50
* responses: *free text*
---

**14.0.** If results are abnormal because of Infarcts, what is the location?
* db_table: ambition_subject_radiology
* column: infarcts_location
* type: CharField
* length: 50
* responses: *free text*
---


#### Requisitions

* fbc

* chemistry_alt

* csf_test_and_store

* csf_chem_haem_routine

* qpcr_csf

* csf_stop_cm

* wb_storage

* serum_storage

* pl_bc_store

* qpcr

* qpcr23

* pk_pl_store_t4

* pk_pl_store_t7

* pk_pl_store_t12

* pk_pl_store_t23

### 1003



*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

* chemistry

* pl_bc_store

* qpcr

### 1005



*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

* chemistry

### 1007



*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---




*Rendered on 2018-12-24 17:41*

#### Lumbar Puncture/Cerebrospinal Fluid
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_lumbarpuncturecsf
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_lumbarpuncturecsf
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** LP Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: lp_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**4.0.** Reason for LP
* db_table: ambition_subject_lumbarpuncturecsf
* column: reason_for_lp
* type: CharField
* length: 50
* responses:
  - `scheduled_per_protocol`: *Scheduled per protocol*
  - `therapeutic_lp`: *Therapeutic LP*
  - `clincal_deterioration`: *Clinical deterioration*
---

**5.0.** opening pressure

&nbsp;&nbsp;&nbsp;&nbsp; *Units cm of H<sub>2</sub>O*
* db_table: ambition_subject_lumbarpuncturecsf
* column: opening_pressure
* type: IntegerField
---

**6.0.** closing pressure

&nbsp;&nbsp;&nbsp;&nbsp; *Units cm of H<sub>2</sub>O*
* db_table: ambition_subject_lumbarpuncturecsf
* column: closing_pressure
* type: IntegerField
---

**7.0.** CSF amount removed

&nbsp;&nbsp;&nbsp;&nbsp; *Units ml*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_amount_removed
* type: IntegerField
---

**Section: Quantitative Culture**

**8.0.** QC Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_lumbarpuncturecsf
* column: qc_requisition
* type: ForeignKey
---

**9.0.** QC Result Report Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: qc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**10.0.** quantitative culture

&nbsp;&nbsp;&nbsp;&nbsp; *Units CFU/ml*
* db_table: ambition_subject_lumbarpuncturecsf
* column: quantitative_culture
* type: IntegerField
---

**Section: CSF**

**11.0.** CSF Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_requisition
* type: ForeignKey
---

**12.0.** CSF Result Report Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**13.0.** Other organism (non-Cryptococcus)

&nbsp;&nbsp;&nbsp;&nbsp; *Complete after getting the results.*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_culture
* type: CharField
* length: 18
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `awaiting_results`: *Awaiting results*
  - `not_done`: *Not done*
---

**14.0.** If YES, specify organism:
* db_table: ambition_subject_lumbarpuncturecsf
* column: other_csf_culture
* type: CharField
* length: 75
* responses: *free text*
---

**15.0.** Total CSF WBC cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup>*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_wbc_cell_count
* type: IntegerField
---

**16.0.** Differential lymphocyte cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup> or %*
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_lymphocyte_count
* type: IntegerField
---

**17.0.** differential lymphocyte unit
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_lymphocyte_unit
* type: CharField
* length: 6
* responses:
  - `mm3`: *mm<sup>3</sup>*
  - `%`: *%*
---

**18.0.** Differential neutrophil cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup> or %*
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_neutrophil_count
* type: IntegerField
---

**19.0.** differential neutrophil unit
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_neutrophil_unit
* type: CharField
* length: 6
* responses:
  - `mm3`: *mm<sup>3</sup>*
  - `%`: *%*
---

**20.0.** india ink
* db_table: ambition_subject_lumbarpuncturecsf
* column: india_ink
* type: CharField
* length: 15
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `IND`: *Indeterminate*
  - `not_done`: *Not done*
---

**21.0.** CSF glucose:

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mmol/L or mg/dL*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_glucose
* type: DecimalField
---

**22.0.** CSF glucose units:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_glucose_units
* type: CharField
* length: 6
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** CSF protein:

&nbsp;&nbsp;&nbsp;&nbsp; *Units in g/L*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_protein
* type: DecimalField
---

**24.0.** CSF CrAg:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_cr_ag
* type: CharField
* length: 15
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `IND`: *Indeterminate*
  - `not_done`: *Not done*
---

**25.0.** CSF CrAg done by IMMY CrAg LFA:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_cr_ag_lfa
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**26.0.** Biosynex Semi-quantitative CrAg performed?

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: bios_crag
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**27.0.** Control result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_control_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**28.0.** T1 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_t1_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**29.0.** T2 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_t2_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---




*Rendered on 2018-12-24 17:41*

#### Pk/Pd (1007)
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_pkpdcrf
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_pkpdcrf
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: Amphotericin**

**3.0.** Did the patient receive any amphotericin formulation in the last 24 hours?
* db_table: ambition_subject_pkpdcrf
* column: amphotericin_given
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**4.0.** If Yes, Which formulation of amphotericin?
* db_table: ambition_subject_pkpdcrf
* column: amphotericin_formulation
* type: CharField
* length: 25
* responses:
  - `ambisome`: *AmBisome*
  - `amphotericin_b`: *Amphotericin B Deoxycholate*
---

**5.0.** Dose given

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: amphotericin_dose
* type: IntegerField
---

**6.0.** Date and time started
* db_table: ambition_subject_pkpdcrf
* column: amphotericin_started_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**7.0.** Date and time stopped
* db_table: ambition_subject_pkpdcrf
* column: amphotericin_ended_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**8.0.** Was the entire dose given?
* db_table: ambition_subject_pkpdcrf
* column: amphotericin_full_dose_given
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**Section: Flucytosine**

**9.0.** Flucytosine dose?

&nbsp;&nbsp;&nbsp;&nbsp; *Total of all doses given. Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose
* type: IntegerField
---

**10.0.** Flucytosine <b><u>DOSE&nbsp;1</u></b> given?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_one_given
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**11.0.** Date and time Flucytosine <u>DOSE&nbsp;1</u> was swallowed?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_one_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**12.0.** Flucytosine <u>DOSE&nbsp;1</u>

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_one
* type: IntegerField
---

**13.0.** Flucytosine <b><u>DOSE&nbsp;2</u></b> given?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_two_given
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**14.0.** Date and time Flucytosine <u>DOSE&nbsp;2</u> was swallowed?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_two_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**15.0.** Flucytosine <u>DOSE&nbsp;2</u>

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_two
* type: IntegerField
---

**16.0.** Flucytosine <b><u>DOSE&nbsp;3</u></b> given?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_three_given
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**17.0.** Date and time Flucytosine <u>DOSE&nbsp;3</u> was swallowed?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_three_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**18.0.** Flucytosine <u>DOSE&nbsp;3</u>

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_three
* type: IntegerField
---

**19.0.** Flucytosine <b><u>DOSE&nbsp;4</u></b> given?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_four_given
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** Date and time Flucytosine <u>DOSE&nbsp;4</u> was swallowed?
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_four_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**21.0.** Flucytosine <u>DOSE&nbsp;4</u>

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_four
* type: IntegerField
---

**22.0.** If any Flucytosine doses not given, provide reason
* db_table: ambition_subject_pkpdcrf
* column: flucytosine_dose_reason_missed
* type: TextField
* length: 75
---

**Section: Fluconazole**

**23.0.** Fluconazole dose?

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mg*
* db_table: ambition_subject_pkpdcrf
* column: fluconazole_dose
* type: IntegerField
---

**24.0.** Date and time Fluconazole was swallowed?
* db_table: ambition_subject_pkpdcrf
* column: fluconazole_dose_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**25.0.** Was the Fluconazole dose given?
* db_table: ambition_subject_pkpdcrf
* column: fluconazole_dose_given
* type: CharField
* length: 11
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**26.0.** If Fluconazole dose not given, provide reason
* db_table: ambition_subject_pkpdcrf
* column: fluconazole_dose_reason_missed
* type: TextField
* length: 75
---

**Section: Blood Results**

**27.0.** Date and time blood <u>SAMPLE&nbsp;1</u> taken?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_one_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**28.0.** Date and time blood <u>SAMPLE&nbsp;2</u> taken?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_two_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**29.0.** Date and time blood <u>SAMPLE&nbsp;3</u> taken?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_three_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**30.0.** Date and time blood <u>SAMPLE&nbsp;4</u> taken?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_four_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**31.0.** Date and time blood <u>SAMPLE&nbsp;5</u> taken?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_five_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**32.0.** Date and time blood <u>SAMPLE&nbsp;6</u> taken?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_six_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**33.0.** Were any blood samples missed?
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_missed
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** If any blood samples missed, provide reason
* db_table: ambition_subject_pkpdcrf
* column: blood_sample_reason_missed
* type: TextField
* length: 75
---

**Section: CSF**

**35.0.** Is this a pre-dose LP?
* db_table: ambition_subject_pkpdcrf
* column: pre_dose_lp
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**36.0.** Is this a post-dose LP?
* db_table: ambition_subject_pkpdcrf
* column: post_dose_lp
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**37.0.** What date and time was the CSF sample taken?
* db_table: ambition_subject_pkpdcrf
* column: time_csf_sample_taken
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---


#### Requisitions

* fbc

* chemistry_alt

* csf_test_and_store

* qpcr_csf

* csf_stop_cm

* pl_bc_store

* qpcr

* pk_pl_store_t4

* pk_pl_store_t7

* pk_pl_store_t12

* pk_pl_store_t23

### 1010



*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

* chemistry

### 1012



*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

* chemistry

### 1014



*Rendered on 2018-12-24 17:41*

#### Week 2
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Part1: Admission history**

**1.0.** subject visit
* db_table: ambition_subject_week2
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_week2
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Discharged?
* db_table: ambition_subject_week2
* column: discharged
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**4.0.** discharge date
* db_table: ambition_subject_week2
* column: discharge_date
* type: DateField
* format: YYYY-MM-DD
---

**5.0.** On which date did the research team feel the patient was well enough to go home?
* db_table: ambition_subject_week2
* column: research_discharge_date
* type: DateField
* format: YYYY-MM-DD
---

**6.0.** Died?
* db_table: ambition_subject_week2
* column: died
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**7.0.** death date time
* db_table: ambition_subject_week2
* column: death_date_time
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: Part2: Induction phase study medication**

**8.0.** Amphotericin B start date:
* db_table: ambition_subject_week2
* column: ampho_start_date
* type: DateField
* format: YYYY-MM-DD
---

**9.0.** Amphotericin B end date:
* db_table: ambition_subject_week2
* column: ampho_end_date
* type: DateField
* format: YYYY-MM-DD
---

**10.0.** Fluconazole start date:
* db_table: ambition_subject_week2
* column: flucon_start_date
* type: DateField
* format: YYYY-MM-DD
---

**11.0.** Fluconazole end date:
* db_table: ambition_subject_week2
* column: flucon_stop_date
* type: DateField
* format: YYYY-MM-DD
---

**12.0.** Flucytosine start date:
* db_table: ambition_subject_week2
* column: flucy_start_date
* type: DateField
* format: YYYY-MM-DD
---

**13.0.** Flucytosine end date:
* db_table: ambition_subject_week2
* column: flucy_stop_date
* type: DateField
* format: YYYY-MM-DD
---

**14.0.** Ambisome start date:
* db_table: ambition_subject_week2
* column: ambi_start_date
* type: DateField
* format: YYYY-MM-DD
---

**15.0.** Ambisome end date:
* db_table: ambition_subject_week2
* column: ambi_stop_date
* type: DateField
* format: YYYY-MM-DD
---

**16.0.** Other drugs/interventions given during first 14 days
* db_table: ambition_subject_week2
* column: drug_intervention
* type: ManyToManyField
* responses: *Select all that apply*
  - `anti_convulsants`: *Anticonvulsants*
  - `antibiotics`: *Antibiotics*
  - `magnesium`: *Magnesium*
  - `potassium`: * Potassium*
  - `tmp_smx_Cotrimoxazole`: * TMP-SMX/Cotrimoxazole*
  - `vitamins`: * Vitamins*
  - `OTHER`: *Other, specify*
  - `none`: *None, no other drugs/interventions given*
  - `N/A`: *Not applicable*
---

**16.1.** If other, please specify:
* db_table: ambition_subject_week2
* column: drug_intervention_other
* type: TextField
---

**17.0.** Were any of the following antibiotics given?
* db_table: ambition_subject_week2
* column: antibiotic
* type: ManyToManyField
* responses: *Select all that apply*
  - `amoxicillin_ampicillin`: *Amoxicillin/Ampicillin*
  - `ceftriaxone`: *Ceftriaxone*
  - `ciprofloxacin`: *Ciprofloxacin*
  - `doxycycline`: *Doxycycline*
  - `erythromycin`: *Erythromycin*
  - `flucloxacillin`: *Flucloxacillin*
  - `gentamicin`: *Gentamicin*
  - `OTHER`: *Other, specify*
---

**17.1.** If other antibiotics, please specify:
* db_table: ambition_subject_week2
* column: antibiotic_other
* type: TextField
---

**18.0.** Blood transfusion received?
* db_table: ambition_subject_week2
* column: blood_received
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**19.0.** If YES, no. of units
* db_table: ambition_subject_week2
* column: units
* type: IntegerField
---

**Section: Part3: Clinical assessment**

**20.0.** Headache
* db_table: ambition_subject_week2
* column: headache
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**21.0.** Glasgow Coma Score

&nbsp;&nbsp;&nbsp;&nbsp; */15*
* db_table: ambition_subject_week2
* column: glasgow_coma_score
* type: IntegerField
---

**22.0.** Confusion
* db_table: ambition_subject_week2
* column: confusion
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**23.0.** Recent seizure (<72 hrs)
* db_table: ambition_subject_week2
* column: recent_seizure_less_72
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**24.0.** CN palsy
* db_table: ambition_subject_week2
* column: cn_palsy
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**25.0.** Behaviour change
* db_table: ambition_subject_week2
* column: behaviour_change
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**26.0.** Focal neurology
* db_table: ambition_subject_week2
* column: focal_neurology
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**27.0.** Weight:

&nbsp;&nbsp;&nbsp;&nbsp; *kg*
* db_table: ambition_subject_week2
* column: weight
* type: DecimalField
---

**28.0.** Medicine day 14:
* db_table: ambition_subject_week2
* column: medicines
* type: ManyToManyField
* responses: *Select all that apply*
  - `co_trimoxazole`: *Co-trimoxazole*
  - `fluconazole`: *Fluconazole*
  - `rifampicin`: * Rifampicin*
  - `OTHER`: *Other*
  - `none`: *None, no other medications given*
  - `N/A`: *Not applicable*
---

**28.1.** If other, please specify:
* db_table: ambition_subject_week2
* column: medicine_other
* type: TextField
---

**29.0.** Other significant diagnosis since enrollment?
* db_table: ambition_subject_week2
* column: other_significant_dx
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---




*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---




*Rendered on 2018-12-24 17:41*

#### Lumbar Puncture/Cerebrospinal Fluid
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_lumbarpuncturecsf
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_lumbarpuncturecsf
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** LP Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: lp_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**4.0.** Reason for LP
* db_table: ambition_subject_lumbarpuncturecsf
* column: reason_for_lp
* type: CharField
* length: 50
* responses:
  - `scheduled_per_protocol`: *Scheduled per protocol*
  - `therapeutic_lp`: *Therapeutic LP*
  - `clincal_deterioration`: *Clinical deterioration*
---

**5.0.** opening pressure

&nbsp;&nbsp;&nbsp;&nbsp; *Units cm of H<sub>2</sub>O*
* db_table: ambition_subject_lumbarpuncturecsf
* column: opening_pressure
* type: IntegerField
---

**6.0.** closing pressure

&nbsp;&nbsp;&nbsp;&nbsp; *Units cm of H<sub>2</sub>O*
* db_table: ambition_subject_lumbarpuncturecsf
* column: closing_pressure
* type: IntegerField
---

**7.0.** CSF amount removed

&nbsp;&nbsp;&nbsp;&nbsp; *Units ml*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_amount_removed
* type: IntegerField
---

**Section: Quantitative Culture**

**8.0.** QC Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_lumbarpuncturecsf
* column: qc_requisition
* type: ForeignKey
---

**9.0.** QC Result Report Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: qc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**10.0.** quantitative culture

&nbsp;&nbsp;&nbsp;&nbsp; *Units CFU/ml*
* db_table: ambition_subject_lumbarpuncturecsf
* column: quantitative_culture
* type: IntegerField
---

**Section: CSF**

**11.0.** CSF Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_requisition
* type: ForeignKey
---

**12.0.** CSF Result Report Date and Time
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**13.0.** Other organism (non-Cryptococcus)

&nbsp;&nbsp;&nbsp;&nbsp; *Complete after getting the results.*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_culture
* type: CharField
* length: 18
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `awaiting_results`: *Awaiting results*
  - `not_done`: *Not done*
---

**14.0.** If YES, specify organism:
* db_table: ambition_subject_lumbarpuncturecsf
* column: other_csf_culture
* type: CharField
* length: 75
* responses: *free text*
---

**15.0.** Total CSF WBC cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup>*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_wbc_cell_count
* type: IntegerField
---

**16.0.** Differential lymphocyte cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup> or %*
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_lymphocyte_count
* type: IntegerField
---

**17.0.** differential lymphocyte unit
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_lymphocyte_unit
* type: CharField
* length: 6
* responses:
  - `mm3`: *mm<sup>3</sup>*
  - `%`: *%*
---

**18.0.** Differential neutrophil cell count:

&nbsp;&nbsp;&nbsp;&nbsp; *acceptable units are mm<sup>3</sup> or %*
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_neutrophil_count
* type: IntegerField
---

**19.0.** differential neutrophil unit
* db_table: ambition_subject_lumbarpuncturecsf
* column: differential_neutrophil_unit
* type: CharField
* length: 6
* responses:
  - `mm3`: *mm<sup>3</sup>*
  - `%`: *%*
---

**20.0.** india ink
* db_table: ambition_subject_lumbarpuncturecsf
* column: india_ink
* type: CharField
* length: 15
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `IND`: *Indeterminate*
  - `not_done`: *Not done*
---

**21.0.** CSF glucose:

&nbsp;&nbsp;&nbsp;&nbsp; *Units in mmol/L or mg/dL*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_glucose
* type: DecimalField
---

**22.0.** CSF glucose units:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_glucose_units
* type: CharField
* length: 6
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** CSF protein:

&nbsp;&nbsp;&nbsp;&nbsp; *Units in g/L*
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_protein
* type: DecimalField
---

**24.0.** CSF CrAg:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_cr_ag
* type: CharField
* length: 15
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `IND`: *Indeterminate*
  - `not_done`: *Not done*
---

**25.0.** CSF CrAg done by IMMY CrAg LFA:
* db_table: ambition_subject_lumbarpuncturecsf
* column: csf_cr_ag_lfa
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**26.0.** Biosynex Semi-quantitative CrAg performed?

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: bios_crag
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**27.0.** Control result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_control_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**28.0.** T1 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_t1_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---

**29.0.** T2 result

&nbsp;&nbsp;&nbsp;&nbsp; *Gaborone and Blantyre only*
* db_table: ambition_subject_lumbarpuncturecsf
* column: crag_t2_result
* type: CharField
* length: 5
* responses:
  - `POS`: *Positive*
  - `NEG`: *Negative*
  - `N/A`: *Not applicable*
---


#### Requisitions

* fbc

* chemistry_alt

* csf_test_and_store

* qpcr_csf

* csf_stop_cm

* pl_bc_store

* qpcr

### 1028



*Rendered on 2018-12-24 17:41*

#### Week 4
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Clinical Assessment**

**1.0.** subject visit
* db_table: ambition_subject_week4
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_week4
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Physical symptoms
* db_table: ambition_subject_week4
* column: physical_symptoms
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**4.0.** Headache
* db_table: ambition_subject_week4
* column: headache
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**5.0.** Glasgow Coma Score

&nbsp;&nbsp;&nbsp;&nbsp; */15*
* db_table: ambition_subject_week4
* column: glasgow_coma_score
* type: IntegerField
---

**6.0.** Confusion
* db_table: ambition_subject_week4
* column: confusion
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**7.0.** Recent seizure (<72 hrs)
* db_table: ambition_subject_week4
* column: recent_seizure_less_72
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**8.0.** CN palsy
* db_table: ambition_subject_week4
* column: cn_palsy
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**9.0.** Behaviour change
* db_table: ambition_subject_week4
* column: behaviour_change
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**10.0.** Focal neurology
* db_table: ambition_subject_week4
* column: focal_neurology
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**Section: Drug Treatment**

**11.0.** Fluconazole dose (day prior to visit)
* db_table: ambition_subject_week4
* column: fluconazole_dose
* type: CharField
* length: 25
* responses:
  - `800mg_daily`: *800mg daily*
  - `OTHER`: *Other*
  - `not_done`: *Not done*
---

**11.1.** If Other, specify ...
* db_table: ambition_subject_week4
* column: fluconazole_dose_other
* type: CharField
* length: 25
* responses: *free text*
---

**12.0.** Rifampicin started since last visit?
* db_table: ambition_subject_week4
* column: rifampicin_started
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `already_on_rifampicin`: *Already on Rifampicin*
  - `not_done`: *Not done*
---

**13.0.** Date Rifampicin started
* db_table: ambition_subject_week4
* column: rifampicin_start_date
* type: DateField
* format: YYYY-MM-DD
---

**14.0.** Other significant diagnosis since last visit?
* db_table: ambition_subject_week4
* column: other_significant_dx
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---




*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

* fbc

* chemistry_alt

### 1042



*Rendered on 2018-12-24 17:41*

#### Follow-Up
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Clinical Assessment**

**1.0.** subject visit
* db_table: ambition_subject_followup
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_followup
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Physical symptoms
* db_table: ambition_subject_followup
* column: physical_symptoms
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**4.0.** Headache
* db_table: ambition_subject_followup
* column: headache
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**5.0.** Glasgow Coma Score

&nbsp;&nbsp;&nbsp;&nbsp; */15*
* db_table: ambition_subject_followup
* column: glasgow_coma_score
* type: IntegerField
---

**6.0.** Confusion
* db_table: ambition_subject_followup
* column: confusion
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**7.0.** Recent seizure (<72 hrs)
* db_table: ambition_subject_followup
* column: recent_seizure_less_72
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**8.0.** CN palsy
* db_table: ambition_subject_followup
* column: cn_palsy
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**9.0.** Behaviour change
* db_table: ambition_subject_followup
* column: behaviour_change
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**10.0.** Focal neurology
* db_table: ambition_subject_followup
* column: focal_neurology
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**Section: Drug Treatment**

**11.0.** Fluconazole dose (day prior to visit)
* db_table: ambition_subject_followup
* column: fluconazole_dose
* type: CharField
* length: 25
* responses:
  - `800mg_daily`: *800mg daily*
  - `OTHER`: *Other*
  - `not_done`: *Not done*
---

**11.1.** If other, specify dose:
* db_table: ambition_subject_followup
* column: fluconazole_dose_other
* type: CharField
* length: 25
* responses: *free text*
---

**12.0.** Rifampicin started since last visit?
* db_table: ambition_subject_followup
* column: rifampicin_started
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `already_on_rifampicin`: *Already on Rifampicin*
  - `not_done`: *Not done*
---

**13.0.** Date Rifampicin started
* db_table: ambition_subject_followup
* column: rifampicin_start_date
* type: DateField
* format: YYYY-MM-DD
---




*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

### 1056



*Rendered on 2018-12-24 17:41*

#### Follow-Up
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Clinical Assessment**

**1.0.** subject visit
* db_table: ambition_subject_followup
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_followup
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Physical symptoms
* db_table: ambition_subject_followup
* column: physical_symptoms
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**4.0.** Headache
* db_table: ambition_subject_followup
* column: headache
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**5.0.** Glasgow Coma Score

&nbsp;&nbsp;&nbsp;&nbsp; */15*
* db_table: ambition_subject_followup
* column: glasgow_coma_score
* type: IntegerField
---

**6.0.** Confusion
* db_table: ambition_subject_followup
* column: confusion
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**7.0.** Recent seizure (<72 hrs)
* db_table: ambition_subject_followup
* column: recent_seizure_less_72
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**8.0.** CN palsy
* db_table: ambition_subject_followup
* column: cn_palsy
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**9.0.** Behaviour change
* db_table: ambition_subject_followup
* column: behaviour_change
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**10.0.** Focal neurology
* db_table: ambition_subject_followup
* column: focal_neurology
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**Section: Drug Treatment**

**11.0.** Fluconazole dose (day prior to visit)
* db_table: ambition_subject_followup
* column: fluconazole_dose
* type: CharField
* length: 25
* responses:
  - `800mg_daily`: *800mg daily*
  - `OTHER`: *Other*
  - `not_done`: *Not done*
---

**11.1.** If other, specify dose:
* db_table: ambition_subject_followup
* column: fluconazole_dose_other
* type: CharField
* length: 25
* responses: *free text*
---

**12.0.** Rifampicin started since last visit?
* db_table: ambition_subject_followup
* column: rifampicin_started
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `already_on_rifampicin`: *Already on Rifampicin*
  - `not_done`: *Not done*
---

**13.0.** Date Rifampicin started
* db_table: ambition_subject_followup
* column: rifampicin_start_date
* type: DateField
* format: YYYY-MM-DD
---




*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

### 1070



*Rendered on 2018-12-24 17:41*

#### Follow-Up (1070)
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Clinical Assessment**

**1.0.** subject visit
* db_table: ambition_subject_followup
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_followup
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Physical symptoms
* db_table: ambition_subject_followup
* column: physical_symptoms
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**4.0.** Headache
* db_table: ambition_subject_followup
* column: headache
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**5.0.** Glasgow Coma Score

&nbsp;&nbsp;&nbsp;&nbsp; */15*
* db_table: ambition_subject_followup
* column: glasgow_coma_score
* type: IntegerField
---

**6.0.** Confusion
* db_table: ambition_subject_followup
* column: confusion
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**7.0.** Recent seizure (<72 hrs)
* db_table: ambition_subject_followup
* column: recent_seizure_less_72
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**8.0.** CN palsy
* db_table: ambition_subject_followup
* column: cn_palsy
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**9.0.** Behaviour change
* db_table: ambition_subject_followup
* column: behaviour_change
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**10.0.** Focal neurology
* db_table: ambition_subject_followup
* column: focal_neurology
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**Section: Drug Treatment**

**11.0.** Fluconazole dose (day prior to visit)
* db_table: ambition_subject_followup
* column: fluconazole_dose
* type: CharField
* length: 25
* responses:
  - `800mg_daily`: *800mg daily*
  - `OTHER`: *Other*
  - `not_done`: *Not done*
---

**11.1.** If other, specify dose:
* db_table: ambition_subject_followup
* column: fluconazole_dose_other
* type: CharField
* length: 25
* responses: *free text*
---

**12.0.** Rifampicin started since last visit?
* db_table: ambition_subject_followup
* column: rifampicin_started
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `already_on_rifampicin`: *Already on Rifampicin*
  - `not_done`: *Not done*
---

**13.0.** Date Rifampicin started
* db_table: ambition_subject_followup
* column: rifampicin_start_date
* type: DateField
* format: YYYY-MM-DD
---

**Section: Hospitalization and Drugs**

**14.0.** Over the ten weeks spent in the study how many days did the patient spend in hospital?
* db_table: ambition_subject_followup
* column: days_hospitalized
* type: DecimalField
---

**15.0.** Were any of the following antibiotics given?
* db_table: ambition_subject_followup
* column: antibiotic
* type: ManyToManyField
* responses: *Select all that apply*
  - `amoxicillin_ampicillin`: *Amoxicillin/Ampicillin*
  - `ceftriaxone`: *Ceftriaxone*
  - `ciprofloxacin`: *Ciprofloxacin*
  - `doxycycline`: *Doxycycline*
  - `erythromycin`: *Erythromycin*
  - `flucloxacillin`: *Flucloxacillin*
  - `gentamicin`: *Gentamicin*
  - `OTHER`: *Other, specify*
---

**15.1.** If other antibiotics, please specify:
* db_table: ambition_subject_followup
* column: antibiotic_other
* type: CharField
* length: 50
* responses: *free text*
---

**16.0.** Has the patient had any blood transfusions since week two?
* db_table: ambition_subject_followup
* column: blood_transfusions
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**17.0.** If YES, no. of units?
* db_table: ambition_subject_followup
* column: blood_transfusions_units
* type: DecimalField
---

**Section: Disability Assessment**

**18.0.** Visual acuity Left Eye
* db_table: ambition_subject_followup
* column: visual_acuity_left_eye
* type: DecimalField
---

**19.0.** Visual acuity Right Eye
* db_table: ambition_subject_followup
* column: visual_acuity_right_eye
* type: DecimalField
---

**20.0.** Does the patient require help from anybody for everyday activities?

&nbsp;&nbsp;&nbsp;&nbsp; *For example eating, drinking, washing, brushing teeth, going to the toilet*
* db_table: ambition_subject_followup
* column: patient_help
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**21.0.** Has the illness left the patient with any other problems?
* db_table: ambition_subject_followup
* column: patient_problems
* type: CharField
* length: 10
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `not_done`: *Not done*
---

**22.0.** Modified Rankin score
* db_table: ambition_subject_followup
* column: rankin_score
* type: CharField
* length: 10
* responses:
  - `0`: *0 - No symptoms at all*
  - `1`: *1 - No significant disability despite symptoms; able to carry out all usual duties and activities*
  - `2`: *2 - Slight disability; unable to carry out all previous activities, but able to look after own affairs without assistance*
  - `3`: *3 - Moderate disability; requiring some help, but able to walk without assistance*
  - `4`: *4 - Moderately severe disability; unable to walk without assistance and unable to attend to own bodily needs without assistance*
  - `5`: *5 - Severe disability; bedridden, incontinent and requiring constant nursing care and attention*
  - `6`: *6 - Dead*
  - `not_done`: *Not done*
---




*Rendered on 2018-12-24 17:41*

#### Health Economics: Medical Expenses (1070)
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Medical Expenses**

**1.0.** subject visit
* db_table: ambition_subject_medicalexpenses
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_medicalexpenses
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Which currency do you use?
* db_table: ambition_subject_medicalexpenses
* column: currency
* type: CharField
* length: 20
* responses:
  - `botswana_pula`: *Botswana Pula*
  - `malawian_kwacha`: *Malawian Kwacha*
  - `south_african_rand`: *South African Rand*
  - `ugandan_shilling`: *Ugandan Shilling*
  - `us_dollar`: *US Dollar*
  - `zimbabwean_dollar`: *Zimbabwean Dollar*
---

**4.0.** Over the last 4/10 weeks, how much have you spent on activities relating to your health?

&nbsp;&nbsp;&nbsp;&nbsp; *On D1 record data for the four weeks prior to recruitment. On W10 record data for the ten weeks since recruitment.*
* db_table: ambition_subject_medicalexpenses
* column: subject_spent_last_4wks
* type: DecimalField
---

**5.0.** Over the last 4/10 weeks, how much has someone else spent on activities relating to your health?

&nbsp;&nbsp;&nbsp;&nbsp; *On D1 record data for the four weeks prior to recruitment. On W10 record data for the ten weeks since recruitment.*
* db_table: ambition_subject_medicalexpenses
* column: someone_spent_last_4wks
* type: DecimalField
---

**6.0.** How much in total has been spent on your healthcare in the last 4/10 weeks?

&nbsp;&nbsp;&nbsp;&nbsp; *On D1 record data for the four weeks prior to recruitment. On W10 record data for the ten weeks since recruitment.*
* db_table: ambition_subject_medicalexpenses
* column: total_spent_last_4wks
* type: DecimalField
---

**7.0.** How long have you been sick with your current condition?

&nbsp;&nbsp;&nbsp;&nbsp; *in days*
* db_table: ambition_subject_medicalexpenses
* column: duration_present_condition
* type: IntegerField
---

**8.0.** What would you have been doing if you were not sick with your present condition
* db_table: ambition_subject_medicalexpenses
* column: activities_missed
* type: CharField
* length: 25
* responses:
  - `working`: *Working*
  - `studying`: *Studying*
  - `caring_for_children`: *Caring for children*
  - `maintaining_house`: *Maintaining the house*
  - `nothing`: *Nothing*
  - `OTHER`: *Other*
---

**8.1.** If Other, specify ...
* db_table: ambition_subject_medicalexpenses
* column: activities_missed_other
* type: CharField
* length: 25
* responses: *free text*
---

**9.0.** How much time did you take off work?

&nbsp;&nbsp;&nbsp;&nbsp; *in days*
* db_table: ambition_subject_medicalexpenses
* column: time_off_work
* type: DecimalField
---

**10.0.** How much time did a caring family member take to accompany you to the hospital?

&nbsp;&nbsp;&nbsp;&nbsp; *in days*
* db_table: ambition_subject_medicalexpenses
* column: carer_time_off
* type: IntegerField
---

**11.0.** Did you lose earnings as a result?
* db_table: ambition_subject_medicalexpenses
* column: loss_of_earnings
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**12.0.** How much did you lose?
* db_table: ambition_subject_medicalexpenses
* column: earnings_lost_amount
* type: DecimalField
---

**13.0.** Have you received any treatment or care for your present condition, before coming to the hospital?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, please complete medical expenses part 2*
* db_table: ambition_subject_medicalexpenses
* column: care_before_hospital
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**Section: Information Source**

**14.0.** What is the main source of this information?
* db_table: ambition_subject_medicalexpenses
* column: info_source
* type: CharField
* length: 25
* responses:
  - `patient`: *Patient*
  - `next_of_kin`: *Next of Kin/Relative*
---

**Section: Loans and Insurance**

**15.0.** Did you take out any loans to pay for your healthcare?
* db_table: ambition_subject_medicalexpenses
* column: loans
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** Did you sell anything to pay for your healthcare?
* db_table: ambition_subject_medicalexpenses
* column: sold_anything
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**17.0.** Do you have private healthcare insurance?
* db_table: ambition_subject_medicalexpenses
* column: private_healthcare
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**18.0.** Did you use it to help pay for your healthcare?
* db_table: ambition_subject_medicalexpenses
* column: healthcare_insurance
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---




*Rendered on 2018-12-24 17:41*

#### Health Economics: Medical Expenses Part 2
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_medicalexpensestwo
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_medicalexpensestwo
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---




*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions

### 1112



*Rendered on 2018-12-24 17:41*

#### Week16
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_week16
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_week16
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**3.0.** Is the patient alive?
* db_table: ambition_subject_week16
* column: patient_alive
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**4.0.** If dead, date and time of death
* db_table: ambition_subject_week16
* column: death_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**5.0.** Does the patient require help from anybody for everyday activities?

&nbsp;&nbsp;&nbsp;&nbsp; *For example eating, drinking, washing, brushing teeth, going to the toilet.*
* db_table: ambition_subject_week16
* column: activities_help
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**6.0.** Has the illness left the patient with any other problems?
* db_table: ambition_subject_week16
* column: illness_problems
* type: CharField
* length: 5
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**7.0.** Modified Rankin score
* db_table: ambition_subject_week16
* column: rankin_score
* type: CharField
* length: 10
* responses:
  - `0`: *0 - No symptoms at all*
  - `1`: *1 - No significant disability despite symptoms; able to carry out all usual duties and activities*
  - `2`: *2 - Slight disability; unable to carry out all previous activities, but able to look after own affairs without assistance*
  - `3`: *3 - Moderate disability; requiring some help, but able to walk without assistance*
  - `4`: *4 - Moderately severe disability; unable to walk without assistance and unable to attend to own bodily needs without assistance*
  - `5`: *5 - Severe disability; bedridden, incontinent and requiring constant nursing care and attention*
  - `6`: *6 - Dead*
  - `not_done`: *Not done*
---

**8.0.** Narrative
* db_table: ambition_subject_week16
* column: week16_narrative
* type: TextField
* length: 1000
---




*Rendered on 2018-12-24 17:41*

#### Blood Result
*[missing model class docstring]*


*Instructions*: Please complete the form below. Required questions are in bold. When all required questions are complete click SAVE or, if available, SAVE NEXT. Based on your responses, additional questions may be required or some answers may need to be corrected.


**Section: Main**

**1.0.** subject visit
* db_table: ambition_subject_bloodresult
* column: subject_visit
* type: OneToOneField
---

**2.0.** Report Date

&nbsp;&nbsp;&nbsp;&nbsp; *If reporting today, use today's date/time, otherwise use the date/time this information was reported.*
* db_table: ambition_subject_bloodresult
* column: report_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: RFT and LFT**

**3.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: ft_requisition
* type: ForeignKey
---

**4.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: ft_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CREATININE**

**5.0.** creatinine
* db_table: ambition_subject_bloodresult
* column: creatinine
* type: DecimalField
---

**6.0.** units
* db_table: ambition_subject_bloodresult
* column: creatinine_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `umol/L`: *μmol/L*
---

**7.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: creatinine_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**8.0.** reportable
* db_table: ambition_subject_bloodresult
* column: creatinine_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: UREA**

**9.0.** urea
* db_table: ambition_subject_bloodresult
* column: urea
* type: DecimalField
---

**10.0.** units
* db_table: ambition_subject_bloodresult
* column: urea_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**11.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: urea_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**12.0.** reportable
* db_table: ambition_subject_bloodresult
* column: urea_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: SODIUM**

**13.0.** sodium
* db_table: ambition_subject_bloodresult
* column: sodium
* type: IntegerField
---

**14.0.** units
* db_table: ambition_subject_bloodresult
* column: sodium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**15.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: sodium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**16.0.** reportable
* db_table: ambition_subject_bloodresult
* column: sodium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: POTASSIUM**

**17.0.** potassium
* db_table: ambition_subject_bloodresult
* column: potassium
* type: DecimalField
---

**18.0.** units
* db_table: ambition_subject_bloodresult
* column: potassium_units
* type: CharField
* length: 10
* responses:
  - `mmol/L`: *mmol/L*
---

**19.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: potassium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**20.0.** reportable
* db_table: ambition_subject_bloodresult
* column: potassium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: MAGNESIUM**

**21.0.** magnesium
* db_table: ambition_subject_bloodresult
* column: magnesium
* type: DecimalField
---

**22.0.** units
* db_table: ambition_subject_bloodresult
* column: magnesium_units
* type: CharField
* length: 25
* responses:
  - `mg/dL`: *mg/dL*
  - `mmol/L`: *mmol/L*
---

**23.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: magnesium_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**24.0.** reportable
* db_table: ambition_subject_bloodresult
* column: magnesium_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: ALT**

**25.0.** ALT
* db_table: ambition_subject_bloodresult
* column: alt
* type: IntegerField
---

**26.0.** units
* db_table: ambition_subject_bloodresult
* column: alt_units
* type: CharField
* length: 10
* responses:
  - `IU/L`: *IU/L*
---

**27.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: alt_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**28.0.** reportable
* db_table: ambition_subject_bloodresult
* column: alt_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: FBC**

**29.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cbc_requisition
* type: ForeignKey
---

**30.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cbc_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: HAEMOGLOBIN**

**31.0.** haemoglobin
* db_table: ambition_subject_bloodresult
* column: haemoglobin
* type: DecimalField
---

**32.0.** units
* db_table: ambition_subject_bloodresult
* column: haemoglobin_units
* type: CharField
* length: 10
* responses:
  - `g/dL`: *g/dL*
---

**33.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: haemoglobin_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**34.0.** reportable
* db_table: ambition_subject_bloodresult
* column: haemoglobin_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: WBC**

**35.0.** WBC
* db_table: ambition_subject_bloodresult
* column: wbc
* type: DecimalField
---

**36.0.** units
* db_table: ambition_subject_bloodresult
* column: wbc_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**37.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: wbc_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**38.0.** reportable
* db_table: ambition_subject_bloodresult
* column: wbc_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: NEUTROPHIL**

**39.0.** neutrophil
* db_table: ambition_subject_bloodresult
* column: neutrophil
* type: DecimalField
---

**40.0.** units
* db_table: ambition_subject_bloodresult
* column: neutrophil_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**41.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: neutrophil_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**42.0.** reportable
* db_table: ambition_subject_bloodresult
* column: neutrophil_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: PLATELETS**

**43.0.** platelets
* db_table: ambition_subject_bloodresult
* column: platelets
* type: IntegerField
---

**44.0.** units
* db_table: ambition_subject_bloodresult
* column: platelets_units
* type: CharField
* length: 10
* responses:
  - `10^9/L`: *10^9/L*
---

**45.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: platelets_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**46.0.** reportable
* db_table: ambition_subject_bloodresult
* column: platelets_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Immunology**

**47.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: cd4_requisition
* type: ForeignKey
---

**48.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: cd4_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: CD4**

**49.0.** abs CD4
* db_table: ambition_subject_bloodresult
* column: cd4
* type: IntegerField
---

**50.0.** units
* db_table: ambition_subject_bloodresult
* column: cd4_units
* type: CharField
* length: 10
* responses:
  - `cells/mm^3`: *cells/mm^3*
---

**51.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: cd4_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**52.0.** reportable
* db_table: ambition_subject_bloodresult
* column: cd4_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Virology**

**53.0.** Requisition

&nbsp;&nbsp;&nbsp;&nbsp; *Start typing the requisition identifier or select one from this visit*
* db_table: ambition_subject_bloodresult
* column: vl_requisition
* type: ForeignKey
---

**54.0.** Result Report Date and Time
* db_table: ambition_subject_bloodresult
* column: vl_assay_datetime
* type: DateTimeField
* format: YYYY-MM-DD HH:MM:SS.sss (tz=UTC)
---

**Section: VL**

**55.0.** Viral Load
* db_table: ambition_subject_bloodresult
* column: vl
* type: FloatField
---

**56.0.** units
* db_table: ambition_subject_bloodresult
* column: vl_units
* type: CharField
* length: 10
* responses:
  - `copies/mL`: *copies/mL*
---

**57.0.** abnormal
* db_table: ambition_subject_bloodresult
* column: vl_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**58.0.** reportable
* db_table: ambition_subject_bloodresult
* column: vl_reportable
* type: CharField
* length: 25
* responses:
  - `N/A`: *Not applicable*
  - `3`: *Yes, grade 3*
  - `4`: *Yes, grade 4*
  - `No`: *Not reportable*
  - `Already reported`: *Already reported*
  - `present_at_baseline`: *Present at baseline*
---

**Section: Conclusion**

**59.0.** Are any of the above results abnormal?
* db_table: ambition_subject_bloodresult
* column: results_abnormal
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
---

**60.0.** If any results are abnormal, are results within grade III or above?

&nbsp;&nbsp;&nbsp;&nbsp; *If YES, this value will open Adverse Event Form.<br/><br/>Note: On Day 1 only abnormal bloods should not be reported as adverseevents.*
* db_table: ambition_subject_bloodresult
* column: results_reportable
* type: CharField
* length: 25
* responses:
  - `Yes`: *Yes*
  - `No`: *No*
  - `N/A`: *Not applicable*
---

**Section: Summary**

**61.0.** summary
* db_table: ambition_subject_bloodresult
* column: summary
* type: TextField
---

**Section: Action**

**62.0.** action identifier
* db_table: ambition_subject_bloodresult
* column: action_identifier
* type: CharField
* length: 50
* responses: *free text*
---

**63.0.** action item
* db_table: ambition_subject_bloodresult
* column: action_item
* type: ForeignKey
---

**64.0.** parent action item
* db_table: ambition_subject_bloodresult
* column: parent_action_item
* type: ForeignKey
---

**65.0.** related action item
* db_table: ambition_subject_bloodresult
* column: related_action_item
* type: ForeignKey
---


#### Requisitions



*Rendered on 2018-12-24 17:41*
