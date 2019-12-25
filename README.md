# PostgreSQL and PGAMIN

This image has PostreSQL and PGADMIN.   

## Getting Started

First of all, you'll need the Docker and the docker-composing. I will consider that it is already installed.

### Prerequisites

Get a copy of this repository.  

```
git clone git@github.com:phzao/postgresql-db.git
```
```
cd postgresql-db
```
### Installing

The entire project can be installed with one command:
```
make up
```
Or if you prefer
```
docker-compose up
```

### Finishing

The PGAdmin can be accessed by http://localhost and the email and password can be found at .env file.
The Postgres was configured to be accessed by others containers without any configuration, only indicating
`postgresql`.
