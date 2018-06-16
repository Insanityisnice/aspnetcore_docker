dotnet publish
docker-compose -p sample -f docker-compose.yml -f docker-compose.nix.yml build

docker-compose -p sample up -d

