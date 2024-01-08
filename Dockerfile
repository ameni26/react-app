#Use base image for node application 
FROM node:19-alpine as builder
# Set working directory to /app inside the container image 
WORKDIR /usr/app 
# Copy app files 
COPY package.json .
# Install dependencies
RUN npm install
# Copy all the files into our container
COPY . .
# Define the port
EXPOSE 3000
# The command executed when running the image into container
CMD ["npm", "start"]