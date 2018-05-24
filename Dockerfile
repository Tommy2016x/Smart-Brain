FROM node:latest
WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY package-lock.json /usr/scr/app
COPY . /usr/src/app
RUN npm install
RUN npm install react-scripts@1.1.0 -g
EXPOSE 3000
CMD [ "npm", "start" ]