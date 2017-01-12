FROM node:4-onbuild

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install
RUN node server.js
# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "node", "server.js" ]
