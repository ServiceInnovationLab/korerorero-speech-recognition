# korerorero-speech-recognition

Providing speech recognition services. Based on <https://github.com/mozilla/DeepSpeech-examples/tree/r0.7/web_microphone_websocket>

Because the training data is so big, it is built using `Dockerfile.training-data` creating a local cache of the data, meaning that the `Dockerfile` can be edited with impunity without causing a long slow download. Therefor `korerorero-training-data:latest` is a dependency of `korerorero-speech-recognition`.

## To build

```bash
docker build -f Dockerfile.training-data -t korerorero-training-data .
docker build . -t korerorero-speech-recognition
```

## To run

```bash
docker run -p 4000:4000 korerorero-speech-recognition:latest
```

You should see something like this:

```shell
TensorFlow: v1.15.0-24-gceb46aa
DeepSpeech: v0.7.1-alpha.1-0-gf848bf4
2020-05-05 02:37:31.462807: I tensorflow/core/platform/cpu_feature_guard.cc:142] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2 FMA
Socket server listening on: 4000
```

Press `ctrl+c` to terminate the container.
