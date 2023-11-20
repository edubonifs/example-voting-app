# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index.html file
RUN rm -f index.html

# Copy the contents of the local HTML directory to the container
# This directory should contain your website files. If you have a different directory structure, modify this line accordingly.
COPY ./html/ .

# Expose port 80
EXPOSE 80

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]
