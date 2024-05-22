# Dockerfile
# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm ci --loglevel=verbose

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 5173 (Vite's default port)
EXPOSE 5173

# Command to run the application in development mode
CMD ["npm", "run", "dev"]