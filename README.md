# korerorero-speech-recognition

Providing speech recognition services. Based on <https://github.com/mozilla/DeepSpeech-examples/tree/r0.7/web_microphone_websocket>

Because the training data is so big, it is built in a stage labelled as `training-data` in the Dockerfie, meaning that the `Dockerfile` can be edited with impunity without causing a long slow download. More info on multi-stage builds: <https://docs.docker.com/develop/develop-images/multistage-build/>

## To build

```bash
docker build . -t korerorero-speech-recognition
```

## To run

```bash
docker run --init -p 4000:4000 korerorero-speech-recognition:latest
```

You should see something like this:

```shell
TensorFlow: v1.15.0-24-gceb46aa
DeepSpeech: v0.7.1-alpha.1-0-gf848bf4
2020-05-05 02:37:31.462807: I tensorflow/core/platform/cpu_feature_guard.cc:142] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2 FMA
Socket server listening on: 4000
```

Press `ctrl+c` to terminate the container.
