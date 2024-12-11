
import std/streams

template test*(desc: string, body: untyped): untyped =
  (proc() =
    echo desc
    body)()

proc readWav*(s: string): seq[float32] =
  ## Assumes 16kHz samplerate
  var fs = newFileStream(s, fmRead)
  defer: close(fs)
  var buffer = ""
  var chunkSize: uint32
  fs.readStr(4, buffer)
  doAssert buffer == "RIFF"
  fs.readStr(4, buffer)
  fs.readStr(4, buffer)
  doAssert buffer == "WAVE"
  while not fs.atEnd():
    fs.readStr(4, buffer)
    chunkSize = fs.readUint32()
    if buffer == "data":
      #echo "found data"
      break
    fs.setPosition(fs.getPosition() + int64(chunkSize))
    if chunkSize mod 2 != 0:
      discard fs.readChar()
  doAssert not fs.atEnd()
  result = newSeq[float32]()
  while not fs.atEnd():
    result.add float32(fs.readInt16()) / float32(int16.high)
