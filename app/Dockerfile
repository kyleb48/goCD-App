FROM node:10-alpine
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./
RUN npm config set registry http://registry.npmjs.org/
RUN npm install
RUN npm install mocha
RUN npm ci
RUN npm run test
COPY --chown=node:node . .
USER node
EXPOSE 8080
CMD [ "node", "index.js","npm", "run", "start" ]
