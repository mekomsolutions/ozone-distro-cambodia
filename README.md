# Ozone Distribution For Cambodia 🇰🇭

A Maven project to download and package in one place all the software artefacts that make the Ozone Distribution for Cambodia.

## Summary

The Ozone Distribution For Cambodia or **Ozone Kh** is a distribution of [Ozone HIS](https://www.ozone-his.com) specially configured for the MoH of Cambodia. In its original form it is an integrated system between an NCD-capable EMR system and a reporting & analytics platform for NCD population reporting.

## Demo Environments

| Server   | URL                                                          | Credentials      |
|----------|--------------------------------------------------------------|------------------|
| Dev      | https://oz-kh-dev.mekomsolutions.net/openmrs/spa/login#      | admin / Admin123 |
| UAT      | https://oz-kh-uat.mekomsolutions.net/openmrs/spa/login# | admin / Admin123   |

## Implementer Guide

A technical guide to help implementer building and running the project can be found [here](readme/impl-guide.md).

## Public Access to the Project

A large part Ozone Kh's roadmap is managed publicly to promote transparency and foster synergies. Feel free to check our public resources and get in touch through the Slack channel to know more about the project.

### Public Resources

* Slack channel: https://openmrs.slack.com/archives/C03ESJABQKY
* Issue tracker: https://issues.openmrs.org/projects/KH/issues

## Release Notes

### Version 1.5.0

### Version 1.4.1
* Reverted clinical forms version from '2' to '1'.

### Version 1.4.0
* Updated translation for sexually transmitted infection.
* Moved 'History of CC Screening section' to be the first section in Cervical Cancer Screening form.
* Updated address hierarchy to include new locations.
* Added 'follow-up date' for breast screening in Cervical Cancer Screening form.
* Disabled changing 'Visit Location' in the Start Visit form.
* Added auto-selection of 'Follow-up screening CVD risk factors' based on CVD risk score.
* Renamed 'Health Center-NCD Screening' to 'NCD Screening' form.
* Added Khmer translations for O3.
* Improved naming of sections in patient registration form.
* Renamed 'Self-breast examination' to 'Breast examination' in Cervical Cancer Screening form.
* Added 'Abcess' option under Breast examination in Cervical Cancer Screening form.
* Re-organized referral questions in NCD Screening form.
* Created and adapted roles in OpenMRS Admin.
* Created a link to the drug order basket.
* Updated location names to include province and district.
* Added ability to display referral centers if VIA test results or breast cancer exams are abnormal in Cervical Cancer Screening form.
* Added ability to search the health facility in 'Referral to' question in NCD Consulation form.
* Removed sexual orientation question from patient registration form.
* Increased clinical forms version to '2'.
* Replaced facility name in drop downs by Province > District > Facility code - Name in NCD screening form and NCD consultation form.
* Added referral criterial under diagnosis section in NCD Screening form.

### Version 1.3.0
* Modified all concepts CSVs to have correct `_order` values.
* Ensured consistent naming of sections and labels in all forms.
* Improved Khmer translations in patient registration form.
* Changed answer for Follow Up question from '6 months - 1 year' to '1 year' in Cervical Cancer Screening form.
* Added answer option 'Test not done' to tests in Cervical Cancer Screening form.
* Changed answers to question 'How many sex partners do you have?' from numeric to radio button in Cervical Cancer Screening form.
* Changed section name from 'Cervical Cancer' to 'Cancer' in Cervical Cancer Screening form.
* Removed answer option 'Invasive' from VIA test results in Cervical Cancer Screening form.
* Added follow-up date for breast cancer screening to Cervical Cancer Screening form.
* Changed question under Risk Factors from 'How many sex partners does your partner have?' to 'Does your partner have many sexual partners?' in Cervical Cancer Screening form.
* Changed answers for 'Bimanual Examination' to individual text fields in Cervical Cancer Screening form.
* Modified treatment question to be multi-checkbox in Cervical Cancer Screening form.
* Added ability to search for locations in both Khmer and English locales.
* Updated answer options to question 'Reason for referral' in Cervical Cancer Screening form.
* Added new section 'History of Cervical Cancer Screening' to Cervical Cancer Screening form.
* Improved Khmer translations for Patient Chart.
* Added question 'Have you been screened for Diabetes and Hypertension?' to Medical History and NCD Screening forms.
* Added ability to auto-calculate appointment date when VIA test is negative in Cervical Cancer Screening form.

### Version 1.2.3
* Added drug Amlodipine with 5 mg dosage
* Added 'Year of quitting smoking' in NCD Consultation form
* Changed quadrant answers to render as check boxes in CC Screening form
* Removed visit punctuality on start visit page

### Version 1.2.2
* Improved caching of form resources

### Version 1.2.0
* Added ability to search address hierarchy entries by level
* Added ability to have IDPoor as a non-unique ID
* Added a Cervical Cancer Follow-up visit type
* Adjusted the Lab test ranges
* Translated Login screen to Khmer
* Improved Khmer translations of Patient Chart
* Adjusted 'Follow up for' question in NCD Screening form
* Record year of quitting smoking in NCD Screening form
* Swapped Family Name and First Name in registration
* Remove 'Reason for Discharge' question in NCD Screening form
* Record visual acuity in NCD Screening form
* Changeed TB symptoms and Foot problem questions as multi select in NCD Screening form
* Adjusted the Management section in NCD screening form
* Added 'Other Health Conditions' question and answers in NCD Screening form
* Added some gender options in Patient Registration
* Removed question of unknown patient in Patient Registration form
* Removed the middle name field from the patient registration form
* Record sexual orientation
* Record address zones in Start Visit screen
* Record 'Has a referral letter' in Start Visit page
* Fixed error message on Start Visit screen
* Made punctuality question on Start visit page optional
* Adjusted Diagnosis section NCD consultation form
* Added HIV/TB/Pre-diabetes to current complication in NCD Consultation form
* Changed 'Unknown' answer to 'None' in NCD Screening form
* Modified Diagnosis section of the NCD consultation form 
* Modified Management section of the HC NCD screening form
* Fixed HC1 report
* Fixed '0 is not considered out of range in AMPATH forms'
* Fixed data in Patient Report under Common Report section
* Made IDPoor non-unique
* i18n of Location Picker

### Version 1.1.0

* Display drug names with dosage
* Default system locale to Khmer (kh)
* Adjust 'Quadrant' question in Cervical Cancer Screening form
* Drop down items (Amputation, Myocardial) translated
* HIV,TB,Pre-diabetes added to Complication question

### Version 1.0.0
* Cambodia-specific patient registration
* Clinical forms for screening and management of diabetes and hypertension:
  * NCD Medical History
  * NCD Screening
  * NCD Consultation
* Clinical form for cervical cancer screening
* Full localization of all clinical forms in Khmer
* Partial localization of application screens in Khmer
