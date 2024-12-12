# Silero VAD

Voice Activity Detection using the [Silero VAD](https://github.com/snakers4/silero-vad) ONNX model. Port of [silero-vad-go](https://github.com/streamer45/silero-vad-go).

## Install

```
nimble install silerovad
```

## Compatibility

- Nim +2.2.0
- [ONNX Runtime v1.20.1](https://github.com/microsoft/onnxruntime/releases/tag/v1.20.1)

## Install ONNX

[Onnxruntime dynamic library](https://github.com/microsoft/onnxruntime/releases/tag/v1.20.1).

Use `-d:silerovadNoDynLib` if you want to avoid dynamic linking.

## Usage

```nim
import pkg/silerovad

let samples = readWav("./samples/jfk.wav")
let cfg = newDetectorConfig(
  modelPath = "./models/silero_vad.onnx",
  sampleRate = 16000,
  threshold = 0.5,
  minSilenceDurationMs = 100,
  speechPadMs = 30,
  logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
)
var dtr = newDetector(cfg)
doAssert dtr.detect(samples) ==
  @[
    Segment(startAt: 0.29, endAt: 2.238),  # And so my fellow Americans
    Segment(startAt: 3.586, endAt: 3.774),  # ask
    Segment(startAt: 4.002, endAt: 4.382),  # not
    Segment(startAt: 5.378, endAt: 7.678),  # what your country can do for you
    Segment(startAt: 8.162, endAt: 10.654)  # ask what you can do for your country
  ]
```

Note last segment endAt is 0 if the data does not have silence at the end.

## Examples

- [Real-time speech to text](https://github.com/nitely/speech-to-text/blob/master/src/app.nim)

## Notes

This library expects 16kHz samplerate and mono audio.

Use this command to convert audio files into the expected format:

```
ffmpeg -i audio_src.wav -ar 16000 -ac 1 audio_dest.wav
```

## LICENSE

MIT
