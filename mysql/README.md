# MySQL

## Create container
Export password:
```sh
export MYSQL_PASSWORD="strong password"
```

Spin up container:
```sh
./setup.sh
```

## Connect from host
```sh
mysql --host=127.0.0.1 --port=3306 -u root -p$MYSQL_PASSWORD
```
