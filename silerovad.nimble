version       = "0.1.0"
author        = "nitely"
description   = "Silero VAD"
license       = "MIT"
srcDir        = "src"
skipDirs = @["tests", "samples", "models"]

requires "nim >= 2.2.0"

task test, "Test":
  exec "nim c -r src/silerovad.nim"
  exec "nim c -r tests/testsilerovad.nim"
