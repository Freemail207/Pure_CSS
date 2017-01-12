FROM node:argon

# Create app directory
RUN mkdir -p /freemail207/
WORKDIR /freemail207/

# Install app dependencies
COPY package.json /freemail207/
RUN npm install

# Bundle app source
COPY . /freemail207/

EXPOSE 8080
CMD [ "npm", "start" ]
