# Ozone Ditribution For Cambodia 🇰🇭

Ozone - All in one system for healthcare facilities: https://www.ozone-his.com/

-----

Maven project for Ozone distribution for Cambodia. Downloads and brings in one place all artifacts needed by the distribution


## Quick start!

The distro can be run using the Ozone Pro Docker project. Quick start command below, for trials purposes only - would not suit for stable environement.

```
$ git clone https://github.com/ozone-his/ozone-distro-cambodia
$ cd ozone-distro-cambodia
$ ./start-demo.sh
```

Then start browsing:

| HIS Component     | URL                            | Username | Password |
|-------------------|--------------------------------|----------|----------|
| OpenMRS 3         | http://localhost/openmrs/spa  | jdoe    | password |
| OpenMRS Legacy UI | http://localhost/openmrs      | jdoe    | password |

---

#### Running on a Mac
If running the project on a Mac, make sure to edit [resources/ozonepro-docker-compose.env](resources/ozonepro-docker-compose.env) and update the variables
 - `HOST_URL`
 - `KEYCLOAK_FRONTEND_URL`
 - `OAUTH_ACCESS_TOKEN_URI`

to replace `172.17.0.1` by `host.docker.internal` (and add `127.0.0.1 host.docker.internal` in your system `/etc/hosts` file).


## Advanced

### Package the distro

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

