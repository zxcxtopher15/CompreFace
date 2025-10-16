# Use Docker Compose-based setup for CompreFace
FROM docker/compose:1.29.2

WORKDIR /app
COPY . .

# Start CompreFace services
CMD ["docker-compose", "up"]
