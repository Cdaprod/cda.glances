# Use the latest full Glances image as the base
FROM nicolargo/glances:latest-full

# Copy your custom glances.conf to the appropriate location
COPY glances.conf /root/.config/glances/glances.conf

# Set a default command (will be overridden by docker-compose if necessary)
CMD ["python", "-m", "glances", "-C", "/root/.config/glances/glances.conf"]