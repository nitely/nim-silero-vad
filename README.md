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

let cfg = newDetectorConfig(
  modelPath = "./models/silero_vad.onnx",
  sampleRate = 16000,
  threshold = 0.5,
  minSilenceDurationMs = 0,
  speechPadMs = 0,
  logLevel = OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING
)
var dtr = newDetector(cfg)
let samples = readSamples("./samples/samples.pcm")
doAssert dtr.detect(samples) ==
  @[
    Segment(startAt: 1.056, endAt: 1.632),
    Segment(startAt: 2.88, endAt: 3.232),
    Segment(startAt: 4.448, endAt: 0.0)
  ]
```

Note last segment endAt is 0 if the data does not have silence at the end.

## LICENSE

MIT
