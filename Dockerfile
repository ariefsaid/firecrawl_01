# Start with the Node.js base image
FROM node:18

# Install pnpm
RUN npm install -g pnpm

# Set working directory
WORKDIR /app

# Copy the entire project
COPY . .

# Install dependencies
RUN cd apps/api && pnpm install

# Build the application
RUN cd apps/api && pnpm run build

# Expose the port the app runs on
EXPOSE 3002

# Set the working directory to the api folder
WORKDIR /app/apps/api

# Command to run the application
CMD ["pnpm", "run", "start:production"]
