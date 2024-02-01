# Use the official Node.js 16 image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the application will run
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
# RUN npm run start