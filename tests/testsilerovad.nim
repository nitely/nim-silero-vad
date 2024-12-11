
import ../src/silerovad
import ./utils

test "Test jfk.wav":
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
