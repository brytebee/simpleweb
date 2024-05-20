# Specify a base image
FROM node:alpine

# Set the working directory
WORKDIR /usr/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Clear npm cache
RUN npm cache clean --force

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY ./ ./

# Specify default start command
CMD ["npm", "start"]
