# Use the official Node.js base image
FROM node:14

# Set the working directory in the container

# Copy the package.json and package-lock.json files

# Install the dependencies
RUN npm install

# Copy the application code
COPY . .
COPY ./index.js .
COPY ./package.json ./

# Expose the port on which the application will run
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]
