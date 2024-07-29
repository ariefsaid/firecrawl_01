# Use the official Node.js image
FROM node:14

# Create and set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Make port 3002 available to the world outside this container
EXPOSE 3002

# Run the application
CMD ["pnpm", "run", "start:production"]
