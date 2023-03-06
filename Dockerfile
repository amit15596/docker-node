# Use an official Node.js runtime as a parent image
FROM node:16-alpine as development

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json .

# Install app dependencies
run npm install

# Bundle app source
COPY . .

# Build the TypeScript app
RUN npm run build

# Expose the app's port
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]


