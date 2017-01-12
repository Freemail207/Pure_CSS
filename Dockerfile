FROM node:4-onbuild

# Create app directory
RUN mkdir /freemail207/pure_css
WORKDIR /freemail207/

# Install app dependencies
COPY package.json /freemail207/pure_css
RUN npm install

# Bundle app source
COPY . /freemail207/pure_css
RUN node server.js

EXPOSE 8080
CMD [ "npm", "start" ]
