FROM node:4-onbuild

EXPOSE 8080

CMD ["node", "/node/server.js"]
