# Use the official Node.js image as a base image
FROM node:16

# Create and set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]

