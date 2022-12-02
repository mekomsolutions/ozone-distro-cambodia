# Ozone Ditribution For Cambodia 🇰🇭

Ozone - All in one system for healthcare facilities: https://www.ozone-his.com/

-----

Maven project for Ozone distribution for Cambodia. Downloads and brings in one place all artifacts needed by the distribution

# Package the distro

Simply run:
```
mvn clean package
```
to assemble all required artifacts.


### Note regarding excluding inherited files from Ozone Pro Distro:

It is possible to exclude some of the files inherited from the Ozone Pro Distribution, thus also the OpenMRS Distro Reference Application.
To do so, provide your exclusion regular expression in the dependency-excludes.txt file.

Eg:
```
\.\*openmrs_config.\demo*csv
```

