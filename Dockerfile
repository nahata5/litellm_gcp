# Use the database-specific base image
FROM ghcr.io/berriai/litellm-database:main-stable

# Set the working directory to /app
WORKDIR /app


# Copy the configuration file into the container at /app
COPY litellm_config.yaml .

# Expose the necessary port
EXPOSE 4000/tcp

# The command to run litellm. This is now part of the base image.
CMD ["--port", "80", "--config", "litellm_config.yaml"]
