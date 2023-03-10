# 🇰🇭 Ozone Kh - Implementer Guide

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
| OpenMRS 3         | http://localhost/openmrs/spa  | admin    | Admin123 |

---

#### Running on macOS
When running the project on macOS make sure to build the [run/](run/) Maven project with `-DhostUrl=http://host.docker.internal` 

If using Ozone Anayltics do the same in [resources/ozone-analytics.env](resources/ozone-analytics.env)

#### Excluding inherited files from Ozone Distro:

It is possible to exclude some of the files inherited from the parent Ozone Distro transitive dependencies (thus the OpenMRS Distro Reference Application).
This can be achieved by providing your exclusion RegEx in the [dependency-excludes.txt](dependency-excludes.txt) file.

Eg.:
```
\.\*openmrs_config.\demo*csv
```