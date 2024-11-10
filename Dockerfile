# syntax=docker/dockerfile:1.10

# Start from the official Node.js 18 image
FROM node:23-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json  files
COPY package.json .

RUN pwd

# List the contents of the directory for debugging
RUN ls -la

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY ./nextjs-blog .

# Build the Next.js app
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "run", "start"]
