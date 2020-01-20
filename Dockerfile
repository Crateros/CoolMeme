# Set Node version in container
FROM node:12

# Set working directory
WORKDIR /usr/src/app

# Install app dependencies. A wildcard is used to ensure both
# package.json AND package-lock.json are copied where available (npm@5+)
# Note that, rather than copying the entire working directory, we are only copying the package.json file.
# This allows us to take advantage of cached Docker layers.
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production
RUN npm install

# Bundle app source (source / destination)
COPY . .

# Expose port to Docker daemon on port 8080
EXPOSE 8080

CMD [ "node", "build/" ]