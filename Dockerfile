# Use the official Node.js 20 image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application's port (e.g., 3000, replace with your app's port if different)
EXPOSE 3000

# Start the application using `npm start`
CMD ["npm", "start"]
