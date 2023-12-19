# README

## Ruby Version

3.2.2

## Postgres

### Install Postgres

`sudo apt-get install postgresql postgresql-contrib`

### Start Postgres

`sudo service postgresql start`

### Create a database user

`sudo -u postgres psql`

That comand takes you to a postgres session where you will then run:

```SQL
CREATE ROLE transcript_search_dev WITH LOGIN PASSWORD 'password';
ALTER ROLE transcript_search_dev CREATEDB;
```

### Modify permissions for the rails user

You can run the following to find the locatin of your postgres config file.
`SHOW hba_file;`

It might simply be:
`/etc/postgresql/14/main/pg_hba.conf`

You want the permissions at the bottom for `local` to look like the following (the key difference is the word `trust`:
```
local   all             postgres                                peer
# TYPE  DATABASE        USER            ADDRESS                 METHOD
# "local" is for Unix domain socket connections only
local   all             all                                     trust
```

### Create the database

You should now be able to create the rails database by running:

`rails db:create`
