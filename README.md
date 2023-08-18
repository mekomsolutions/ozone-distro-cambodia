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

### Version 1.2.3
* Added drug Amlodipine with 5 mg dosage
* Added 'Year of quitting smoking' in NCD Consultation form
* Changed quadrant answers to render as check boxes in CC Screening form
* Removed visit punctuality on start visit page

### Version 1.2.2
* Improved caching of form resources

### Version 1.2.0
* Patient chart translated to Khmer
* Removed the middle name field from the patient registration form
* Visit punctuality made optional
* Made family name to be first in the patient registration form
* Added Other Health Problems question and answers
* Removed question for uknown patient in the patient registration form
* Fixed data in Patient Report under Common Report section
* Modified Diagnosis section of the NCD consultation form 
* Modified Management section of the HC NCD screening form
* Fixed HC1 report
* Changed TB symptoms and Foot problem questions from single select to multi select
* Added a question "Has a referral letter" to Start Visit page
* Added question about address zones to Start Visit page
* Added gender question and answers to patient registration form
* Added question about visual acuity to NCD Screening form
* Removed "Reason for Discharge" question in NCD Screening form
* Changed "Unknown" answer to "None" for the two Diagnosis questions in the "Assessment" section of the NCD Screening form
* Added Year for quitting smoking to NCD Screening form
* Moved the referral question to Start Visit page
* Translate Login screen to khmer
* Modify the Lab test ranges
* Add a Cervical Cancer follow up visit type
* Enable searchAddressByLevel address hierarchy entry
* Fixed "0 is not considered out of range in AMPATH forms"
* i18n of Location Picker

### Version 1.1.0

* Drug names displayed with their dosage
* ID 'poor' made non-unique
* Default system locale to Khmer(KH)
* Quadrant question in Cervical Cancer Screening form modified
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
* Partial localization application screens in Khmer
