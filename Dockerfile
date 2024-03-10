# Use a base image
FROM ubuntu:latest

# Create folder structure and set permissions
RUN mkdir -p /structure && \
    chmod 777 /structure && \
    touch /structure/sync-work && \
    chown sync /structure/sync-work && \
    touch /structure/nobody-work && \
    chown nobody /structure/nobody-work && \
    useradd -u 5000 collin

# Command to keep container running
CMD ["while", "true;", "do", "echo", "users;", "done"]
