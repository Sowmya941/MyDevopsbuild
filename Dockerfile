# Step 1: Build the React application using Node.js
FROM node:16-alpine AS build

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the source code and build the React app
COPY . ./

# Run the build to create the production-ready files in the `build/` folder
RUN npm run build

# Step 2: Use Nginx to serve the React app
FROM nginx:alpine

# Copy the build output to Nginx's html directory (where static files are served)
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx to serve the app
CMD ["nginx", "-g", "daemon off;"]
