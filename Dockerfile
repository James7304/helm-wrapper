# Use Alpine as the base image
FROM alpine:3.20

# Set environment variables
ENV GIN_MODE=release

# Set working directory
WORKDIR /

# Copy the compiled binary into the image
COPY bin/helm-wrapper /helm-wrapper

# Ensure the binary is executable
RUN chmod +x /helm-wrapper

# Optionally copy a default config file
# COPY config-example.yaml /config.yaml

# Run the binary
ENTRYPOINT ["/helm-wrapper"]
