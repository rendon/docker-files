# Postgres

## Create container
Export password:
```sh
export POSTGRES_PASSWORD="strong-password"
```

Spin up container:
```sh
./setup.sh
```

## Connect from host
```sh
psql -U postgres -h localhost -p 5432
```
