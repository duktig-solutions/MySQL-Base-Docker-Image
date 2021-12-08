# Remove All Images and Containers

echo "Removing all Docker Images and containers..."

echo "Removing Containers"
docker-compose down -v

echo "Removing images"

docker rmi mysql-base_mysql8 

echo "Removing volumes"
docker volume prune

echo "Done."
