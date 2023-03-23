# 🇰🇭 Ozone Kh - Implementer Guide

The distro can be run using the Ozone Pro Docker project. Quick start command below, for trials purposes only - would not suit for stable environment.

```
$ git clone https://github.com/openmrs/ozone-distro-cambodia
$ cd ozone-distro-cambodia
```

## Quick start
```
./start-distro.sh
```

## Manual instructions
Build the distro (optional, provide a `prod` profile to include confidential configs)
```
./mvnw clean install [-Pprod]
```

Prepare for the run (optional override the default `hostUrl` value - for Macs, provide a `prod` profile)
```
./mvnw -f run/pom.xml clean package [-Pprod]
```

Pull images
```
docker compose -f "./run/target/ozone-docker-compose/docker-compose.yml" --env-file "./run/target/ozone-docker-compose/concatenated.env" pull proxy frontend openmrs mysql
```

Run
```
docker compose -f "./run/target/ozone-docker-compose/docker-compose.yml" --env-file "./run/target/ozone-docker-compose/concatenated.env" -p ozone-distro-cambodia up -d proxy frontend openmrs mysql

```

## Then start browsing:

| HIS Component     | URL                            | Username | Password |
|-------------------|--------------------------------|----------|----------|
| OpenMRS 3         | http://localhost/openmrs/spa  | admin    | Admin123 |

---

### Working on configurations and apply on the server:

If needed to work on the distro configurations and see the results, you have several options:
- (1) Turn down the whole project with its volumes, compile again and run.
- (2) Replace files in the mounted Docker volume (all files or only individual files)

#### 1. Turn down the whole project and start afresh
```
docker compose -f "./run/target/ozone-docker-compose/docker-compose.yml" --env-file "./run/target/ozone-docker-compose/concatenated.env" -p ozone-distro-cambodia down -v
```
Then follow the [Quick start guide](#quick-start) or the [manual instructions](#manual-instructions) to install and then run.

#### 2. Replace files in the mounted Docker volume
```
./mvnw clean install [–Pprod]
```
```
rsync -av target/ozone-distro-cambodia-<version>/ run/target/ozone-distro-cambodia/ --delete
```
(replace `<version>` with its value)

### Excluding inherited files from Ozone Distro:

It is possible to exclude some of the files inherited from the parent Ozone Distro transitive dependencies (thus the OpenMRS Distro Reference Application).
This can be achieved by providing your exclusion RegEx in the [dependency-excludes.txt](dependency-excludes.txt) file.

Eg.:
```
\.\*openmrs_config.\demo*csv
```