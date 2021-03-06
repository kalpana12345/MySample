FROM node:6
RUN mkdir -p /usr/src/app
WORKDIR /home/mysystem/myApp
COPY package.json /usr/src/app
RUN npm cache clean
RUN npm install
COPY . /usr/src/app
EXPOSE 4200
CMD ["ng","serve"]
