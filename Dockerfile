# Step 1: Use Node.js as the base image
FROM node:16-alpine as build

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application
COPY . .

# Step 6: Build the React application for production
RUN npm run build

# Step 7: Use Nginx to serve the application
FROM nginx:alpine

# Step 8: Copy the build files from the previous stage to Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Step 9: Expose port 80 for the container
EXPOSE 80

# Step 10: Start the Nginx server to serve the React app
CMD ["nginx", "-g", "daemon off;"]
