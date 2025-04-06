FROM node:23-alpine3.20

# Set labels for the image
LABEL app="my-dockerized-app"
LABEL version="1.0"
LABEL description="A simple Node.js application"

# Set the environment variable to production
WORKDIR /app

# Set the environment variable to production
COPY package.json package-lock.json ./

# Install only production dependencies
RUN npm install --omit=dev

# Copy the rest of the application code
COPY . .

# Set the environment variable to production
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]

# docker build -t my-node-app .
