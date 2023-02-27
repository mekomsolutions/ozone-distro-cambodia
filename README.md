# Ozone Ditribution For Cambodia 🇰🇭

Ozone - All in one system for healthcare facilities: https://www.ozone-his.com/

-----

Maven project for Ozone distribution for Cambodia. Downloads and brings in one place all artifacts needed by the distribution


## Implementer instructions

The distro can be run using the Ozone Pro Docker project. Quick start command below, for trials purposes only - would not suit for stable environment.

```
$ git clone https://github.com/openmrs/ozone-distro-cambodia
$ cd ozone-distro-cambodia
```

Build the distro (optional, provide a `prod` profile to include confidential configs)
```
./mvnw clean install [-Pprod]
```

Prepare for the run (optional override the default `hostUrl` value - for Macs, provide a `prod` profile)
```
./mvnw -f run/pom.xml clean package [-DhostUrl=http://host.docker.internal] [-Pprod]
```

Pull images
```
docker compose -f "./run/target/ozone-docker-compose/docker-compose.yml" --env-file "./run/target/ozone-docker-compose/concatenated.env" pull proxy frontend openmrs mysql
```

Run
```
docker compose -f "./run/target/ozone-docker-compose/docker-compose.yml" --env-file "./run/target/ozone-docker-compose/concatenated.env" -p ozone-distro-cambodia up -d proxy frontend openmrs mysql

```

_WIP_ Run Analytics
```
$ ./start-analytics.sh
```


Then start browsing:

| HIS Component     | URL                            | Username | Password |
|-------------------|--------------------------------|----------|----------|
| OpenMRS 3         | http://localhost/openmrs/spa  | jdoe    | password |
| Superset | http://localhost:8088/openmrs      | jdoe    | password |

---

#### Running on a Mac
If running the project on a Mac, make sure to build the [run/](run/) Maven project with `-DhostUrl=http://host.docker.internal` 

If using the Ozone Anayltics, do the same in [resources/ozone-analytics.env](resources/ozone-analytics.env)

#### Note regarding excluding inherited files from Ozone Distro:

It is possible to exclude some of the files inherited from the Ozone distro transitive dependencies (thus the OpenMRS Distro Reference Application)
To do so, provide your exclusion regular expression in the [dependency-excludes.txt](dependency-excludes.txt) file.

Eg:
```
\.\*openmrs_config.\demo*csv
```

