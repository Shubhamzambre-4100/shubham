# Use a lightweight Linux base image (Alpine)
FROM alpine:latest

# Install bash (as Alpine uses ash by default) and core utilities
RUN apk add --no-cache bash coreutils

# Set the working directory
WORKDIR /usr/src/app

# Copy the shell script into the container
COPY simple_script.sh .

# Make the script executable
RUN chmod +x simple_script.sh

# Run the script when the container starts
CMD ["./simple_script.sh"]
