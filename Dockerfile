FROM node:18
WORKDIR /app
COPY ./package.json .
RUN npm cache clean --force
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "dev" ]
