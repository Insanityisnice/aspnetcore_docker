# Tools
## Required
* [dotnet core 2.1](https://www.microsoft.com/net/learn/get-started/windows#windowscmd)
* [docker](https://www.docker.com)

# Building the Solution
Using the commandline from the solution folder.

## Build
> dotnet build

## Publish
> dotnet publish

# Running the Solution
## *NIX
### Build the docker containers 
> docker-compose -p sample -f docker-compose.nix.yml build

### Runn the docker containers
#### Run without an attached terminal (no logs display)
> docker-compose -p sample -f docker-compose.nix.yml up -d

#### Run without an attached terminal (logs display in terminal)
> docker-compose -p sample -f docker-compose.nix.yml up

#### The first time you run create the sample database
> docker exec sample_sql_1 /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password1 -i /var/opt/mssql/createdbs.nix.sql

### Cleanup
> docker-compose -p sample -f docker-compose.nix.yml  down

## WIN (Still in progress)
### Build the docker container
> docker-compose -p sample -f docker-compose.win.yml build

### Run the docker containers
#### Run without an attached terminal (no logs display)
> docker-compose -p sample -f docker-compose.win.yml up -d

#### Run without an attached terminal (logs display in terminal)
> docker-compose -p sample -f docker-compose.win.yml up

#### The first time you run create the sample database
> docker exec sample_sql_1 sqlcmd -S localhost -U sa -P Password1 -i C:\\temp\\createdbs.win.sql

### Cleanup
> docker-compose -p sample -f docker-compose.win.yml  down