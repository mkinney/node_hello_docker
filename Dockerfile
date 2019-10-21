# Start from a Node.js 10 (LTS)
FROM node:10

# Specify the directory inside the image in which all commands will run
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install
# Note: I had to add this so it would work.
RUN npm install express

# Copy all of the app files into the image
COPY . .

# The default command to run when starting the container
CMD [ "npm", "start" ]
