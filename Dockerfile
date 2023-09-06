# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install Cypress and its dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose any necessary ports (e.g., for running a web server)
# EXPOSE 8080

# Run your application or tests here (replace this with your command)
# CMD [ "npm", "start" ]

# Entry point for Cypress (use this when running Cypress tests)
# CMD [ "npx", "cypress", "run" ]
