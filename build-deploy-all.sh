# Build Docker images
docker-compose build --no-cache

# Deploy/run Docker containers
docker-compose -f docker-compose.yml up --force-recreate -d

# Display a list of images created
docker images

# Display running containers
docker ps
