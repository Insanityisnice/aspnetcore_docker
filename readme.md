# Building
Using the commandline from the solution folder.

## Build the solution
> dotnet build

## Publish the solution
> dotnet publish

# Running
## *NIX
### Build the docker containers 
> docker-compose -p sample -f docker-compose.nix.yml build

### Running the docker containers
#### Run without an attached terminal (no logs display)
> docker-compose -p sample -f docker-compose.nix.yml up -d

#### Run without an attached terminal (logs display in terminal)
> docker-compose -p sample -f docker-compose.nix.yml up

#### The first time you run create the sample database
> docker exec sample_sql_1 "/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password1 -i /var/opt/mssql/createdbs.sql"

## WIN (Still in progress)
### Building the docker container
> docker-compose -p sample -f docker-compose.win.yml build

### Running the docker containers
#### Run without an attached terminal (no logs display)
> docker-compose -p sample -f docker-compose.win.yml up -d

#### Run without an attached terminal (logs display in terminal)
> docker-compose -p sample -f docker-compose.win.yml up