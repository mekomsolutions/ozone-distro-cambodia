# Ozone for Cambodia 🇰🇭

A Maven project to download and package in one place all the software artefacts that make the Ozone for Cambodia.

## Summary

Ozone for Cambodia or **Ozone Kh** is a distribution of [Ozone HIS](https://www.ozone-his.com) specially configured for the MoH of Cambodia. In its original form it is an integrated system between an NCD-capable EMR system and a reporting & analytics platform for NCD population reporting.

## Demo Environments

| Server | URL                                                     | Credentials      |
| ------ | ------------------------------------------------------- | ---------------- |
| Dev    | https://oz-kh-dev.mekomsolutions.net/openmrs/spa/login# | admin / Admin123 |
| UAT    | https://oz-kh-uat.mekomsolutions.net/openmrs/spa/login# | admin / Admin123 |


## Public Access to the Project

A large part Ozone Kh's roadmap is managed publicly to promote transparency and foster synergies. Feel free to check our public resources and get in touch through the Slack channel to know more about the project.

### Public Resources

- Slack channel: https://openmrs.slack.com/archives/C03ESJABQKY
- Issue tracker: https://issues.openmrs.org/projects/KH/issues
- Ozone Docs: https://docs.ozone-his.com/

## Release Notes

### Version 1.7.2

- Add reports redirect and back up docker compose files

### Version 1.7.1

- Removed unneeded IDE settings file

### Version 1.7.0

- Added version 1.1.0 of the Ozone Analytics Queries dependency.
- Upgraded Ozone distro to 1.0.0-alpha.11.
- Updated Locations to correctly load their Country, Province, District and Postal code attributes and location tags.
- Updated project structure to be compatible with Ozone alpha.10 and above.
- Removed OCL packages and retired Cancer concept.
- Updated Common Reports to version 1.4.2
- Fixed Route translation.
- Adjusted aggregator artifact ID and remove relativePath.
- Explicitly specified the public repository in modules' pom.xml.
- Disabled 'base' OpenMRS validation.
- Validated on PR & self-rebuild upon dependency changes.
- Compiled a dependency report for 'base' sub-module.
- Renamed the Nexus server ID.
- Set address and tags to Locations.
- Copied OpenMRS configs for validation.
- Fixed validator config path.
- Removed empty curly brackets from Cervical Cancer Screening form.
- Updated translation for 'History of Cervical Cancer Screening' in CCS form.
- Updated 'What area of ectocervix does the acetowhite area occupy?' to 'White cell area of ​​the outer cervix' under Cancer section in CSS form.
- Updated options for Menstrual History in CCS form.
- Updated translation for 'ACE inhibitor' in NCD Consultation form.
- Updated translation for 'Breast Cancer' in CCS form.
- Updated translation for 'Abscesses' in CCS form.
- Updated translation for 'Tele-Consultation with NCD unit' in NCD Screening form.
- Renamed 'Insurance Type' to 'Payment type' in Start visit.
- Updated translation for 'Have you been screened for Diabetes and Hypertension?' in NCD Screening form.
- Updated translation for 'Weight' in NCD Screening form.
- Renamed 'Create New Patient' to 'Register New Patient' in the Patient Registration.
- Renamed 'HbA1c' to 'HbA1c (optional)' in NCD Screening and NCD Consultation forms.
- Swapped O3 React Form Engine with AMPATH Form Engine.
- Created the Superset config folder and Maven sub-module.
- Fixed gender values to lowercase.
- Fine tuned the Superset configs packaging.
- Added Report Dashboards.
- Added changes caused by re-exporting dashboards using Superset 4.0.0
- Added translations for Disbursement Report.
- Added validation changes.
- Added yearly NCD monitoring report.
- Switched datasets' folder from PostgreSQL to Analytics.
- Added CCS HC raw data report.
- Added CCS report on RH Raw Data.
- Added self-breast educated and examined women report.
- Added CCS for women report.
- Added CCS report on appointment status tracking.
- Added Indicators for monitoring CCS management program report.
- Added NCD RH EMR Report.
- Added NCD HC EMR Report.
- Added NCD HC Raw Data Report.
- Added NCD RH Raw Data Report.
- Used Analytics database provided by Ozone.
- Updated CCS monitoring indicators query & include reporting period filter.
- Copied over Ozone analytics queries.
- Added drugs used dashboard, dataset, chart assets.
- Added NCD report on yearly monitoring indicators.
- Added public schema for datasets.
- Amalgamated yearly report indicators for monitoring Hypertension, Diabetes.
- Improved Disbursement Dashboard.


### Version 1.6.1

- Updated Common Reports OpenMRS module to version 1.4.1 containing Disbursement report improvements.
- Added 'Unknown' option under HPV virus test in Cervical Cancer Screening form.
- Translated most of the drug order basket to Khmer.
- Edited the Khmer translation for the Physical Activity concept.

### Version 1.6.0

- Updated Common Reports OpenMRS module to version 1.4.0 that comes with a Disbursement report.
- Added 'Have you been screened for Diabetes and Hypertension?' to NCD Medical History form.
- Updated Khmer translation for 'mark patient deceased' in the patient chart.
- Added OGTT tests for 1hour and 2hours in NCD Consultation form as numeric fields.
- Improved the MOH logo resolution in the patient chart and primary navigation.
- Updated 'Dont know' option to 'Test not done' in Cervical Cancer Screening form.
- Updated Khmer translations for STIs in Cervical Cancer Screening form.
- Moved 'Referral center' to the top of 'Breast cancer reason for referral' in Cervical Cancer Screening form.
- Added 'Other STIs', 'Don't know STIs' options and removed 'Candidiosis' option under Sexually transmitted infections in Cervical Cancer Screening form.
- Fixed Ozone to version '1.0.0-alpha.9'.
- Updated the translation for 'Home' on the home page.

### Version 1.5.0

- Refactored the repository structure.
- Removed 'Have you been screened for Diabetes and Hypertension?' from NCD Medical History form.
- Updated Khmer translation for 'markDeceased' in the patient chart.
- Updated Khmer translations for Medical History section in the NCD Screening form.
- Added 'Currently, is the patient using drug for the treatment of High Blood Pressure?' in NCD Medical history form.
- Moved 'Total Cholesterol' to the top of 'Low-density lipoprotein' for Medical assessment in NCD Consultation form.
- Added units to each field in Renal Tests in NCD Consultation form.
- Added new Cytology test in Cervical Cancer Screening form.
- Updated and added 'Managing stress' option in treatment recommendation in NCD Consultation form and NCD Screening form.
- Added pre-diabetes concept under 'Other health condition' in NCD Consultation form.
- Updated translation for 'Facility'.
- Updated translation for 'Number of miscarriages' in Cervical Cancer Screening form.
- Updated 'Method of family planning' in Cervical Cancer Screening form.
- Updated Cervix Examination in Cervical Cerver Screening form.
- Updated translation for 'Foot exam problem' in NCD Screening form.
- Updated translation for 'Visibility of SCJ' in Cervical Cancer Screening form.
- Added follow up questions to HPV Test in Cervical Cancer Screening form.
- Update 'Physical Examination' in Cervical Cancer Screening form.
- Added answers to Cervix and Uterus questions in Cervical Cancer Screening form.
- Updated concepts for TB Symptoms in NCD Consultation form.
- Added temperature, respiratory rate and spo2 under vitals and biometrics in NCD Consultation form.
- Renamed 'Sivastatin 20mg' to 'Simvastatin 20mg' in medication of treatment plan in NCD Consultation form.
- Added drug 'Simvastatin 10mg' for 'Medication of treatment plan' in NCD Consultation form.
- Updated fields for breast cancer in Cervical Cancer Screening.
- Updated translation of STIs in Cervical Cancer Screening form.
- Replaced Ozone with MOH logo.
- Added new Blood Sugar levels for 'Medical Assessment' in NCD Consultation form.
- Added question for Diabetes treatment in NCD Screening form.

### Version 1.4.1

- Reverted clinical forms version from '2' to '1'.

### Version 1.4.0

- Updated translation for sexually transmitted infection.
- Moved 'History of CC Screening section' to be the first section in Cervical Cancer Screening form.
- Updated address hierarchy to include new locations.
- Added 'follow-up date' for breast screening in Cervical Cancer Screening form.
- Disabled changing 'Visit Location' in the Start Visit form.
- Added auto-selection of 'Follow-up screening CVD risk factors' based on CVD risk score.
- Renamed 'Health Center-NCD Screening' to 'NCD Screening' form.
- Added Khmer translations for O3.
- Improved naming of sections in patient registration form.
- Renamed 'Self-breast examination' to 'Breast examination' in Cervical Cancer Screening form.
- Added 'Abcess' option under Breast examination in Cervical Cancer Screening form.
- Re-organized referral questions in NCD Screening form.
- Created and adapted roles in OpenMRS Admin.
- Created a link to the drug order basket.
- Updated location names to include province and district.
- Added ability to display referral centers if VIA test results or breast cancer exams are abnormal in Cervical Cancer Screening form.
- Added ability to search the health facility in 'Referral to' question in NCD Consulation form.
- Removed sexual orientation question from patient registration form.
- Increased clinical forms version to '2'.
- Replaced facility name in drop downs by Province > District > Facility code - Name in NCD screening form and NCD consultation form.
- Added referral criterial under diagnosis section in NCD Screening form.

### Version 1.3.0

- Modified all concepts CSVs to have correct `_order` values.
- Ensured consistent naming of sections and labels in all forms.
- Improved Khmer translations in patient registration form.
- Changed answer for Follow Up question from '6 months - 1 year' to '1 year' in Cervical Cancer Screening form.
- Added answer option 'Test not done' to tests in Cervical Cancer Screening form.
- Changed answers to question 'How many sex partners do you have?' from numeric to radio button in Cervical Cancer Screening form.
- Changed section name from 'Cervical Cancer' to 'Cancer' in Cervical Cancer Screening form.
- Removed answer option 'Invasive' from VIA test results in Cervical Cancer Screening form.
- Added follow-up date for breast cancer screening to Cervical Cancer Screening form.
- Changed question under Risk Factors from 'How many sex partners does your partner have?' to 'Does your partner have many sexual partners?' in Cervical Cancer Screening form.
- Changed answers for 'Bimanual Examination' to individual text fields in Cervical Cancer Screening form.
- Modified treatment question to be multi-checkbox in Cervical Cancer Screening form.
- Added ability to search for locations in both Khmer and English locales.
- Updated answer options to question 'Reason for referral' in Cervical Cancer Screening form.
- Added new section 'History of Cervical Cancer Screening' to Cervical Cancer Screening form.
- Improved Khmer translations for Patient Chart.
- Added question 'Have you been screened for Diabetes and Hypertension?' to Medical History and NCD Screening forms.
- Added ability to auto-calculate appointment date when VIA test is negative in Cervical Cancer Screening form.

### Version 1.2.3

- Added drug Amlodipine with 5 mg dosage
- Added 'Year of quitting smoking' in NCD Consultation form
- Changed quadrant answers to render as check boxes in CC Screening form
- Removed visit punctuality on start visit page

### Version 1.2.2

- Improved caching of form resources

### Version 1.2.0

- Added ability to search address hierarchy entries by level
- Added ability to have IDPoor as a non-unique ID
- Added a Cervical Cancer Follow-up visit type
- Adjusted the Lab test ranges
- Translated Login screen to Khmer
- Improved Khmer translations of Patient Chart
- Adjusted 'Follow up for' question in NCD Screening form
- Record year of quitting smoking in NCD Screening form
- Swapped Family Name and First Name in registration
- Remove 'Reason for Discharge' question in NCD Screening form
- Record visual acuity in NCD Screening form
- Changeed TB symptoms and Foot problem questions as multi select in NCD Screening form
- Adjusted the Management section in NCD screening form
- Added 'Other Health Conditions' question and answers in NCD Screening form
- Added some gender options in Patient Registration
- Removed question of unknown patient in Patient Registration form
- Removed the middle name field from the patient registration form
- Record sexual orientation
- Record address zones in Start Visit screen
- Record 'Has a referral letter' in Start Visit page
- Fixed error message on Start Visit screen
- Made punctuality question on Start visit page optional
- Adjusted Diagnosis section NCD consultation form
- Added HIV/TB/Pre-diabetes to current complication in NCD Consultation form
- Changed 'Unknown' answer to 'None' in NCD Screening form
- Modified Diagnosis section of the NCD consultation form
- Modified Management section of the HC NCD screening form
- Fixed HC1 report
- Fixed '0 is not considered out of range in AMPATH forms'
- Fixed data in Patient Report under Common Report section
- Made IDPoor non-unique
- i18n of Location Picker

### Version 1.1.0

- Display drug names with dosage
- Default system locale to Khmer (kh)
- Adjust 'Quadrant' question in Cervical Cancer Screening form
- Drop down items (Amputation, Myocardial) translated
- HIV,TB,Pre-diabetes added to Complication question

### Version 1.0.0

- Cambodia-specific patient registration
- Clinical forms for screening and management of diabetes and hypertension:
  - NCD Medical History
  - NCD Screening
  - NCD Consultation
- Clinical form for cervical cancer screening
- Full localization of all clinical forms in Khmer
- Partial localization of application screens in Khmer
