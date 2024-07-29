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

# Define environment variables
ENV REDIS_URL=redis://<user>:<pass>@redis.railway.internal:6379
ENV USE_DB_AUTHENTICATION=false
ENV PLAYWRIGHT_MICROSERVICE_URL=http://localhost:3000/scrape

# Run the application
CMD ["pnpm", "run", "start:production"]
