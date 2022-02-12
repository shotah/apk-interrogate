
### Building:

```powershell
$env:IMAGE="alpine"
docker build -t $env:IMAGE .
```

```bash
export IMAGE="alpine"
docker build -t $IMAGE .
```

### Testing build:

```bash
rm ./data/*
mkdir -p data

# docker-compose down -v --remove-orphans
# docker-compose up --force-recreate -V
# docker run -it --name alpine -v ./data:/data alpine

docker compose run alpine
```

### Connecting and Outputting Packages:

```bash
rm /data/packages.csv
for package in $(apk info); do apk info -s $package | xargs | sed -e 's/ /, /g' >> /data/packages.csv; done
```

### Docker Clean up

```bash
docker-compose down -v --remove-orphans
docker image prune -f
docker volume prune -f
```

### Scanning for vulnerabilities:

* `docker scan --login`
* `docker scan --accept-license --dependency-tree alpine`
