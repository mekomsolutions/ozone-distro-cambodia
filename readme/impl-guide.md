# 🇰🇭 Ozone Kh - Implementer Guide

The distro can be run using the Ozone Docker project. Quick start command below, for trials purposes only - would not suit for stable environment.

```bash
$ git clone https://github.com/openmrs/ozone-cambodia
$ cd ozone-cambodia
```

## Quick start

Build

```bash
./scripts/mvnw clean package [-Pprod]
```

Run

```bash
source [base|prod]/target/go-to-scripts-dir.sh
./start-demo.sh
```

Tip: After running the `source [base|prod]/target/go-to-scripts-dir.sh` command you can use `popd` to easily move back to the root directory, if needed.

### Working on configurations:

If needed to work on the distro configurations and see the results, you have several options:

- (1) Turn down the whole project with its volumes, build again and run.
- (2) Replace files in the mounted Docker volume (all files or only individual files)

#### Option 1. Turn down the whole project and start afresh

Turn down the project (including volumes)

```bash
source base/target/go-to-scripts-dir.sh
./destroy-demo.sh
```

Re-build:

```bash
popd # Return to the root directory
./scripts/mvnw clean package [-Pprod]
```

Then start afresh:

```bash
source [base|prod]/target/go-to-scripts-dir.sh
./start-demo.sh
```

#### Option 2. Replace only the files needed, directly in the mounted Docker volume

```bash
rsync -av configs/ [base|prod]/target/ozone-cambodia[-prod]-<version>/distro/configs
```

(replace `<version>` with its value)

### Excluding inherited files from Ozone Distro:

It is possible to exclude some of the files inherited from the parent Ozone Distro transitive dependencies (thus the OpenMRS Distro Reference Application).
This can be achieved by providing your exclusion path in the main pom.xml, using the Maven Resource plugin `excludes`:

Eg.:

```xml
<directory>${project.build.directory}/ozone</directory>
  <excludes>
    <exclude>distro/**/appointment*</exclude>
    <exclude>distro/**/concepts*demo.csv</exclude>
    ...
  <excludes>
```
