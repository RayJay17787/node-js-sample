# Use official Node.js image
FROM node:18-alpine

# Set app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 5000

# Start the app
CMD ["npm", "start"]
