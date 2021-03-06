FROM node:4-onbuild

# Create app directory
RUN mkdir /freemail207/
WORKDIR /freemail207/

# Install app dependencies
COPY package.json /freemail207/
RUN npm install

# Bundle app source
COPY . /freemail207/pure_css
COPY index.html /freemail207/

EXPOSE 8080
CMD [ "npm", "start" ]
