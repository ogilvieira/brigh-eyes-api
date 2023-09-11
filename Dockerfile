FROM node:18
WORKDIR /app
COPY ./package.json .
ARG PORT=8080
ARG SERVER_LOG=false
ARG DB_HOST=postgres
ARG DB_PORT=5432
ARG DB_USER=root
ARG DB_PASS=root
ARG DB_NAME=brighteyes
ARG DB_SYNC=true
ARG DB_LOG=false
ARG JWT_SECRET=br1g8t3y3s
RUN npm cache clean --force
RUN npm install
COPY . .
EXPOSE 8090
CMD [ "npm", "run", "dev" ]
