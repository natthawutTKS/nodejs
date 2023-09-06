# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port that your application will listen on (e.g., 3000)
EXPOSE 3000

# Define the command to run your application (replace "app.js" with your entry point)
CMD ["node", "app.js"]

# Entry point for Cypress (use this when running Cypress tests)
# CMD [ "npx", "cypress", "run" ]
