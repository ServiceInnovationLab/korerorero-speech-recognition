FROM alpine:latest AS training-data
WORKDIR /usr/src/app
RUN wget https://github.com/mozilla/DeepSpeech/releases/download/v0.7.0/deepspeech-0.7.0-models.pbmm
RUN wget https://github.com/mozilla/DeepSpeech/releases/download/v0.7.0/deepspeech-0.7.0-models.scorer

FROM node:13
ENV PORT=4000
EXPOSE 4000
WORKDIR /usr/src/app
COPY --from=training-data /usr/src/app/deepspeech-0.7.0-models.* ./
COPY src/server.js ./
COPY package*.json ./
RUN npm install
ENTRYPOINT [ "node", "server.js" ]
