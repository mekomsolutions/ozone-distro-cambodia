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

### Version 1.2.2
* Patient chart translated to Khemer
* Improved caching of form resources
* Removed the middle name from registration form
* Visit punctuality made optional
* Made family name to be first on the patient registration form

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
