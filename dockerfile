# Use the official image as a parent image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Install any needed packages specified in package.json
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 3000


# Run the app
CMD ["npm", "start"]
