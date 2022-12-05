# Ozone Ditribution For Cambodia 🇰🇭

Ozone - All in one system for healthcare facilities: https://www.ozone-his.com/

-----

Maven project for Ozone distribution for Cambodia. Downloads and brings in one place all artifacts needed by the distribution


## Try it!

The distro can be run using the Ozone Pro Docker project. Quick start command below, for trials purposes only - would not suit for stable environement.

```
./start-demo.sh
```

Access OpenMRS 3 at http://localhost/openmrs/



## Package the distro

```
mvn clean package
```


### Note regarding excluding inherited files from Ozone Pro Distro:

It is possible to exclude some of the files inherited from the Ozone Pro Distribution, thus also the OpenMRS Distro Reference Application.
To do so, provide your exclusion regular expression in the [dependency-excludes.txt](dependency-excludes.txt) file.

Eg:
```
\.\*openmrs_config.\demo*csv
```

