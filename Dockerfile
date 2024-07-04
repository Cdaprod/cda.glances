# Use the latest full Glances image as the base
FROM nicolargo/glances:latest-full

# Copy your custom glances.conf to the appropriate location
COPY glances.conf /root/.config/glances/glances.conf

# Set the command to start Glances with your custom configuration
CMD ["python", "-m", "glances", "-C", "/root/.config/glances/glances.conf", "$GLANCES_OPT"]