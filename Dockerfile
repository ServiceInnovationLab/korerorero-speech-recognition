FROM node:13

ENV PORT=4000
EXPOSE 4000

WORKDIR /usr/src/app
COPY --from=korerorero-training-data:latest /usr/src/app/deepspeech-0.7.0-models.* ./
COPY src/server.js ./
COPY package*.json ./
RUN npm install
ENTRYPOINT [ "node", "server.js" ]
