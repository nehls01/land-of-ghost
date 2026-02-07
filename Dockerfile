# Dockerfile for Isle Evrima Server

# Use an official game server base image
FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && \
    apt-get install -y \
        wget \
        curl \
        lib32gcc1 \
        lib32stdc++6 \
        && rm -rf /var/lib/apt/lists/*

# Create a directory for the server files
RUN mkdir -p /isle_evrima
WORKDIR /isle_evrima

# Download Isle Evrima server files (replace <download_link> with actual link)
RUN wget <download_link> -O server.zip && \
    unzip server.zip -d . && \
    rm server.zip

# Expose the required port (replace <port_number> with the actual port)
EXPOSE <port_number>

# Start the Isle Evrima server (replace <start_command> with the actual start command)
CMD ["<start_command>"]