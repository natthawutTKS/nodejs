# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application's source code
COPY . .

# Expose the port that the Node.js application is listening on
EXPOSE 3000

# Start the Node.js application
CMD ["node", "app.js"]