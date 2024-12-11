
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_ONNXTensorElementDataType_536871358* {.size: sizeof(cuint).} = enum
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED = 0,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT = 1,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8 = 2,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8 = 3,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT16 = 4,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16 = 5,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32 = 6,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64 = 7,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING = 8,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL = 9,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT16 = 10,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE = 11,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT32 = 12,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT64 = 13,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX64 = 14,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_COMPLEX128 = 15,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_BFLOAT16 = 16,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FN = 17,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E4M3FNUZ = 18,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2 = 19,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT8E5M2FNUZ = 20,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT4 = 21,
    ONNX_TENSOR_ELEMENT_DATA_TYPE_INT4 = 22
type
  enum_ONNXType_536871362* {.size: sizeof(cuint).} = enum
    ONNX_TYPE_UNKNOWN = 0, ONNX_TYPE_TENSOR = 1, ONNX_TYPE_SEQUENCE = 2,
    ONNX_TYPE_MAP = 3, ONNX_TYPE_OPAQUE = 4, ONNX_TYPE_SPARSETENSOR = 5,
    ONNX_TYPE_OPTIONAL = 6
type
  enum_OrtSparseFormat_536871366* {.size: sizeof(cuint).} = enum
    ORT_SPARSE_UNDEFINED = 0, ORT_SPARSE_COO = 1, ORT_SPARSE_CSRC = 2,
    ORT_SPARSE_BLOCK_SPARSE = 4
type
  enum_OrtSparseIndicesFormat_536871370* {.size: sizeof(cuint).} = enum
    ORT_SPARSE_COO_INDICES = 0, ORT_SPARSE_CSR_INNER_INDICES = 1,
    ORT_SPARSE_CSR_OUTER_INDICES = 2, ORT_SPARSE_BLOCK_SPARSE_INDICES = 3
type
  enum_OrtLoggingLevel_536871372* {.size: sizeof(cuint).} = enum
    ORT_LOGGING_LEVEL_VERBOSE = 0, ORT_LOGGING_LEVEL_INFO = 1,
    ORT_LOGGING_LEVEL_WARNING = 2, ORT_LOGGING_LEVEL_ERROR = 3,
    ORT_LOGGING_LEVEL_FATAL = 4
type
  enum_OrtErrorCode_536871376* {.size: sizeof(cuint).} = enum
    ORT_OK = 0, ORT_FAIL = 1, ORT_INVALID_ARGUMENT = 2, ORT_NO_SUCHFILE = 3,
    ORT_NO_MODEL = 4, ORT_ENGINE_ERROR = 5, ORT_RUNTIME_EXCEPTION = 6,
    ORT_INVALID_PROTOBUF = 7, ORT_MODEL_LOADED = 8, ORT_NOT_IMPLEMENTED = 9,
    ORT_INVALID_GRAPH = 10, ORT_EP_FAIL = 11
type
  enum_OrtOpAttrType_536871380* {.size: sizeof(cuint).} = enum
    ORT_OP_ATTR_UNDEFINED = 0, ORT_OP_ATTR_INT = 1, ORT_OP_ATTR_INTS = 2,
    ORT_OP_ATTR_FLOAT = 3, ORT_OP_ATTR_FLOATS = 4, ORT_OP_ATTR_STRING = 5,
    ORT_OP_ATTR_STRINGS = 6
type
  enum_GraphOptimizationLevel_536871455* {.size: sizeof(cuint).} = enum
    ORT_DISABLE_ALL = 0, ORT_ENABLE_BASIC = 1, ORT_ENABLE_EXTENDED = 2,
    ORT_ENABLE_ALL = 99
type
  enum_ExecutionMode_536871459* {.size: sizeof(cuint).} = enum
    ORT_SEQUENTIAL = 0, ORT_PARALLEL = 1
type
  enum_OrtLanguageProjection_536871463* {.size: sizeof(cuint).} = enum
    ORT_PROJECTION_C = 0, ORT_PROJECTION_CPLUSPLUS = 1,
    ORT_PROJECTION_CSHARP = 2, ORT_PROJECTION_PYTHON = 3,
    ORT_PROJECTION_JAVA = 4, ORT_PROJECTION_WINML = 5, ORT_PROJECTION_NODEJS = 6
type
  enum_OrtAllocatorType_536871475* {.size: sizeof(cint).} = enum
    OrtInvalidAllocator = -1, OrtDeviceAllocator = 0, OrtArenaAllocator = 1
type
  enum_OrtMemType_536871479* {.size: sizeof(cint).} = enum
    OrtMemTypeCPUInput = -2, OrtMemTypeCPUOutput = -1, OrtMemTypeDefault = 0
when not declared(OrtMemTypeCPU):
  const
    OrtMemTypeCPU* = enum_OrtMemType_536871479.OrtMemTypeCPUOutput
else:
  static :
    hint("Declaration of " & "OrtMemTypeCPU" &
        " already exists, not redeclaring")
type
  enum_OrtMemoryInfoDeviceType_536871483* {.size: sizeof(cuint).} = enum
    OrtMemoryInfoDeviceType_CPU = 0, OrtMemoryInfoDeviceType_GPU = 1,
    OrtMemoryInfoDeviceType_FPGA = 2
type
  enum_OrtCudnnConvAlgoSearch_536871487* {.size: sizeof(cuint).} = enum
    OrtCudnnConvAlgoSearchExhaustive = 0, OrtCudnnConvAlgoSearchHeuristic = 1,
    OrtCudnnConvAlgoSearchDefault = 2
type
  enum_OrtCustomOpInputOutputCharacteristic_536871535* {.size: sizeof(cuint).} = enum
    INPUT_OUTPUT_REQUIRED = 0, INPUT_OUTPUT_OPTIONAL = 1,
    INPUT_OUTPUT_VARIADIC = 2
when not declared(struct_OrtEnv):
  type
    struct_OrtEnv* = object
else:
  static :
    hint("Declaration of " & "struct_OrtEnv" &
        " already exists, not redeclaring")
when not declared(struct_OrtLoraAdapter):
  type
    struct_OrtLoraAdapter* = object
else:
  static :
    hint("Declaration of " & "struct_OrtLoraAdapter" &
        " already exists, not redeclaring")
when not declared(struct_OrtCANNProviderOptions):
  type
    struct_OrtCANNProviderOptions* = object
else:
  static :
    hint("Declaration of " & "struct_OrtCANNProviderOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtCUDAProviderOptionsV2):
  type
    struct_OrtCUDAProviderOptionsV2* = object
else:
  static :
    hint("Declaration of " & "struct_OrtCUDAProviderOptionsV2" &
        " already exists, not redeclaring")
when not declared(struct_OrtTensorRTProviderOptionsV2):
  type
    struct_OrtTensorRTProviderOptionsV2* = object
else:
  static :
    hint("Declaration of " & "struct_OrtTensorRTProviderOptionsV2" &
        " already exists, not redeclaring")
when not declared(struct_OrtModelMetadata):
  type
    struct_OrtModelMetadata* = object
else:
  static :
    hint("Declaration of " & "struct_OrtModelMetadata" &
        " already exists, not redeclaring")
when not declared(struct_OrtCustomOpDomain):
  type
    struct_OrtCustomOpDomain* = object
else:
  static :
    hint("Declaration of " & "struct_OrtCustomOpDomain" &
        " already exists, not redeclaring")
when not declared(struct_OrtTypeInfo):
  type
    struct_OrtTypeInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtTypeInfo" &
        " already exists, not redeclaring")
when not declared(struct_OrtOptionalTypeInfo):
  type
    struct_OrtOptionalTypeInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtOptionalTypeInfo" &
        " already exists, not redeclaring")
when not declared(struct_OrtMapTypeInfo):
  type
    struct_OrtMapTypeInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtMapTypeInfo" &
        " already exists, not redeclaring")
when not declared(struct_OrtSequenceTypeInfo):
  type
    struct_OrtSequenceTypeInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtSequenceTypeInfo" &
        " already exists, not redeclaring")
when not declared(struct_OrtTrainingApi):
  type
    struct_OrtTrainingApi* = object
else:
  static :
    hint("Declaration of " & "struct_OrtTrainingApi" &
        " already exists, not redeclaring")
when not declared(struct_OrtArenaCfg):
  type
    struct_OrtArenaCfg* = object
else:
  static :
    hint("Declaration of " & "struct_OrtArenaCfg" &
        " already exists, not redeclaring")
when not declared(struct_OrtRunOptions):
  type
    struct_OrtRunOptions* = object
else:
  static :
    hint("Declaration of " & "struct_OrtRunOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtSessionOptions):
  type
    struct_OrtSessionOptions* = object
else:
  static :
    hint("Declaration of " & "struct_OrtSessionOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtValue):
  type
    struct_OrtValue* = object
else:
  static :
    hint("Declaration of " & "struct_OrtValue" &
        " already exists, not redeclaring")
when not declared(struct_OrtShapeInferContext):
  type
    struct_OrtShapeInferContext* = object
else:
  static :
    hint("Declaration of " & "struct_OrtShapeInferContext" &
        " already exists, not redeclaring")
when not declared(struct_OrtKernelContext):
  type
    struct_OrtKernelContext* = object
else:
  static :
    hint("Declaration of " & "struct_OrtKernelContext" &
        " already exists, not redeclaring")
when not declared(struct_OrtThreadingOptions):
  type
    struct_OrtThreadingOptions* = object
else:
  static :
    hint("Declaration of " & "struct_OrtThreadingOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtIoBinding):
  type
    struct_OrtIoBinding* = object
else:
  static :
    hint("Declaration of " & "struct_OrtIoBinding" &
        " already exists, not redeclaring")
when not declared(struct_OrtLogger):
  type
    struct_OrtLogger* = object
else:
  static :
    hint("Declaration of " & "struct_OrtLogger" &
        " already exists, not redeclaring")
when not declared(struct_OrtDnnlProviderOptions):
  type
    struct_OrtDnnlProviderOptions* = object
else:
  static :
    hint("Declaration of " & "struct_OrtDnnlProviderOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtTensorTypeAndShapeInfo):
  type
    struct_OrtTensorTypeAndShapeInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtTensorTypeAndShapeInfo" &
        " already exists, not redeclaring")
when not declared(struct_OrtOpAttr):
  type
    struct_OrtOpAttr* = object
else:
  static :
    hint("Declaration of " & "struct_OrtOpAttr" &
        " already exists, not redeclaring")
when not declared(struct_OrtKernelInfo):
  type
    struct_OrtKernelInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtKernelInfo" &
        " already exists, not redeclaring")
when not declared(struct_OrtPrepackedWeightsContainer):
  type
    struct_OrtPrepackedWeightsContainer* = object
else:
  static :
    hint("Declaration of " & "struct_OrtPrepackedWeightsContainer" &
        " already exists, not redeclaring")
when not declared(struct_OrtOp):
  type
    struct_OrtOp* = object
else:
  static :
    hint("Declaration of " & "struct_OrtOp" & " already exists, not redeclaring")
when not declared(struct_OrtStatus):
  type
    struct_OrtStatus* = object
else:
  static :
    hint("Declaration of " & "struct_OrtStatus" &
        " already exists, not redeclaring")
when not declared(struct_OrtSession):
  type
    struct_OrtSession* = object
else:
  static :
    hint("Declaration of " & "struct_OrtSession" &
        " already exists, not redeclaring")
when not declared(struct_OrtThreadPoolParams):
  type
    struct_OrtThreadPoolParams* = object
else:
  static :
    hint("Declaration of " & "struct_OrtThreadPoolParams" &
        " already exists, not redeclaring")
when not declared(struct_OrtMemoryInfo):
  type
    struct_OrtMemoryInfo* = object
else:
  static :
    hint("Declaration of " & "struct_OrtMemoryInfo" &
        " already exists, not redeclaring")
type
  ONNXTensorElementDataType_536871360 = enum_ONNXTensorElementDataType_536871359 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:203:3
  ONNXType_536871364 = enum_ONNXType_536871363 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:214:3
  OrtSparseFormat_536871368 = enum_OrtSparseFormat_536871367 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:223:3
  OrtLoggingLevel_536871374 = enum_OrtLoggingLevel_536871373 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:243:3
  OrtErrorCode_536871378 = enum_OrtErrorCode_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:258:3
  OrtOpAttrType_536871382 = enum_OrtOpAttrType_536871381 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:268:3
  OrtEnv_536871384 = struct_OrtEnv ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:280:1
  OrtStatus_536871386 = struct_OrtStatus ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:281:1
  OrtMemoryInfo_536871388 = struct_OrtMemoryInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:282:1
  OrtIoBinding_536871390 = struct_OrtIoBinding ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:283:1
  OrtSession_536871392 = struct_OrtSession ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:284:1
  OrtValue_536871394 = struct_OrtValue ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:285:1
  OrtRunOptions_536871396 = struct_OrtRunOptions ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:286:1
  OrtTypeInfo_536871398 = struct_OrtTypeInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:287:1
  OrtTensorTypeAndShapeInfo_536871400 = struct_OrtTensorTypeAndShapeInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:288:1
  OrtMapTypeInfo_536871402 = struct_OrtMapTypeInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:289:1
  OrtSequenceTypeInfo_536871404 = struct_OrtSequenceTypeInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:290:1
  OrtOptionalTypeInfo_536871406 = struct_OrtOptionalTypeInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:291:1
  OrtSessionOptions_536871408 = struct_OrtSessionOptions ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:292:1
  OrtCustomOpDomain_536871410 = struct_OrtCustomOpDomain ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:293:1
  OrtModelMetadata_536871412 = struct_OrtModelMetadata ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:294:1
  OrtThreadPoolParams_536871414 = struct_OrtThreadPoolParams ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:295:1
  OrtThreadingOptions_536871423 = struct_OrtThreadingOptions ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:296:1
  OrtArenaCfg_536871425 = struct_OrtArenaCfg ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:297:1
  OrtPrepackedWeightsContainer_536871427 = struct_OrtPrepackedWeightsContainer ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:298:1
  OrtTensorRTProviderOptionsV2_536871429 = struct_OrtTensorRTProviderOptionsV2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:299:1
  OrtCUDAProviderOptionsV2_536871431 = struct_OrtCUDAProviderOptionsV2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:300:1
  OrtCANNProviderOptions_536871433 = struct_OrtCANNProviderOptions ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:301:1
  OrtDnnlProviderOptions_536871435 = struct_OrtDnnlProviderOptions ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:302:1
  OrtOp_536871437 = struct_OrtOp ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:303:1
  OrtOpAttr_536871439 = struct_OrtOpAttr ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:304:1
  OrtLogger_536871441 = struct_OrtLogger ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:305:1
  OrtShapeInferContext_536871443 = struct_OrtShapeInferContext ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:306:1
  OrtLoraAdapter_536871445 = struct_OrtLoraAdapter ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:307:1
  OrtStatusPtr_536871447 = ptr OrtStatus_536871387 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:312:20
  struct_OrtAllocator_536871449 {.pure, inheritable, bycopy.} = object
    version*: uint32         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:321:16
    Alloc*: proc (a0: ptr struct_OrtAllocator_536871450; a1: csize_t): pointer {.
        cdecl.}
    Free*: proc (a0: ptr struct_OrtAllocator_536871450; a1: pointer): void {.
        cdecl.}
    Info*: proc (a0: ptr struct_OrtAllocator_536871450): ptr struct_OrtMemoryInfo {.
        cdecl.}
    Reserve*: proc (a0: ptr struct_OrtAllocator_536871450; a1: csize_t): pointer {.
        cdecl.}
  OrtAllocator_536871451 = struct_OrtAllocator_536871450 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:332:3
  OrtLoggingFunction_536871453 = proc (a0: pointer; a1: OrtLoggingLevel_536871375;
                                       a2: cstring; a3: cstring; a4: cstring;
                                       a5: cstring): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:334:28
  GraphOptimizationLevel_536871457 = enum_GraphOptimizationLevel_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:348:3
  ExecutionMode_536871461 = enum_ExecutionMode_536871460 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:353:3
  OrtLanguageProjection_536871465 = enum_OrtLanguageProjection_536871464 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:366:3
  OrtKernelInfo_536871467 = struct_OrtKernelInfo ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:369:30
  OrtKernelContext_536871469 = struct_OrtKernelContext ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:371:33
  OrtCustomOp_536871471 = struct_OrtCustomOp_536871474 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:373:28
  struct_OrtCustomOp_536871473 {.pure, inheritable, bycopy.} = object
    version*: uint32         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:4781:8
    CreateKernel*: proc (a0: ptr struct_OrtCustomOp_536871474; a1: ptr OrtApi_536871512;
                         a2: ptr OrtKernelInfo_536871468): pointer {.cdecl.}
    GetName*: proc (a0: ptr struct_OrtCustomOp_536871474): cstring {.cdecl.}
    GetExecutionProviderType*: proc (a0: ptr struct_OrtCustomOp_536871474): cstring {.
        cdecl.}
    GetInputType*: proc (a0: ptr struct_OrtCustomOp_536871474; a1: csize_t): ONNXTensorElementDataType_536871361 {.
        cdecl.}
    GetInputTypeCount*: proc (a0: ptr struct_OrtCustomOp_536871474): csize_t {.
        cdecl.}
    GetOutputType*: proc (a0: ptr struct_OrtCustomOp_536871474; a1: csize_t): ONNXTensorElementDataType_536871361 {.
        cdecl.}
    GetOutputTypeCount*: proc (a0: ptr struct_OrtCustomOp_536871474): csize_t {.
        cdecl.}
    KernelCompute*: proc (a0: pointer; a1: ptr OrtKernelContext_536871470): void {.
        cdecl.}
    KernelDestroy*: proc (a0: pointer): void {.cdecl.}
    GetInputCharacteristic*: proc (a0: ptr struct_OrtCustomOp_536871474;
                                   a1: csize_t): OrtCustomOpInputOutputCharacteristic_536871538 {.
        cdecl.}
    GetOutputCharacteristic*: proc (a0: ptr struct_OrtCustomOp_536871474;
                                    a1: csize_t): OrtCustomOpInputOutputCharacteristic_536871538 {.
        cdecl.}
    GetInputMemoryType*: proc (a0: ptr struct_OrtCustomOp_536871474; a1: csize_t): OrtMemType_536871482 {.
        cdecl.}
    GetVariadicInputMinArity*: proc (a0: ptr struct_OrtCustomOp_536871474): cint {.
        cdecl.}
    GetVariadicInputHomogeneity*: proc (a0: ptr struct_OrtCustomOp_536871474): cint {.
        cdecl.}
    GetVariadicOutputMinArity*: proc (a0: ptr struct_OrtCustomOp_536871474): cint {.
        cdecl.}
    GetVariadicOutputHomogeneity*: proc (a0: ptr struct_OrtCustomOp_536871474): cint {.
        cdecl.}
    CreateKernelV2*: proc (a0: ptr struct_OrtCustomOp_536871474; a1: ptr OrtApi_536871512;
                           a2: ptr OrtKernelInfo_536871468; a3: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelComputeV2*: proc (a0: pointer; a1: ptr OrtKernelContext_536871470): OrtStatusPtr_536871448 {.
        cdecl.}
    InferOutputShapeFn*: proc (a0: ptr struct_OrtCustomOp_536871474;
                               a1: ptr OrtShapeInferContext_536871444): OrtStatusPtr_536871448 {.
        cdecl.}
    GetStartVersion*: proc (a0: ptr struct_OrtCustomOp_536871474): cint {.cdecl.}
    GetEndVersion*: proc (a0: ptr struct_OrtCustomOp_536871474): cint {.cdecl.}
    GetMayInplace*: proc (a0: ptr ptr cint; a1: ptr ptr cint): csize_t {.cdecl.}
    ReleaseMayInplace*: proc (a0: ptr cint; a1: ptr cint): void {.cdecl.}
    GetAliasMap*: proc (a0: ptr ptr cint; a1: ptr ptr cint): csize_t {.cdecl.}
    ReleaseAliasMap*: proc (a0: ptr cint; a1: ptr cint): void {.cdecl.}
  OrtAllocatorType_536871477 = enum_OrtAllocatorType_536871476 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:379:3
  OrtMemType_536871481 = enum_OrtMemType_536871480 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:389:3
  OrtMemoryInfoDeviceType_536871485 = enum_OrtMemoryInfoDeviceType_536871484 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:397:3
  OrtCudnnConvAlgoSearch_536871489 = enum_OrtCudnnConvAlgoSearch_536871488 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:405:3
  struct_OrtCUDAProviderOptions_536871491 {.pure, inheritable, bycopy.} = object
    device_id*: cint         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:411:16
    cudnn_conv_algo_search*: OrtCudnnConvAlgoSearch_536871490
    gpu_mem_limit*: csize_t
    arena_extend_strategy*: cint
    do_copy_in_default_stream*: cint
    has_user_compute_stream*: cint
    user_compute_stream*: pointer
    default_memory_arena_cfg*: ptr OrtArenaCfg_536871426
    tunable_op_enable*: cint
    tunable_op_tuning_enable*: cint
    tunable_op_max_tuning_duration_ms*: cint
  OrtCUDAProviderOptions_536871493 = struct_OrtCUDAProviderOptions_536871492 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:492:3
  struct_OrtROCMProviderOptions_536871495 {.pure, inheritable, bycopy.} = object
    device_id*: cint         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:498:16
    miopen_conv_exhaustive_search*: cint
    gpu_mem_limit*: csize_t
    arena_extend_strategy*: cint
    do_copy_in_default_stream*: cint
    has_user_compute_stream*: cint
    user_compute_stream*: pointer
    default_memory_arena_cfg*: ptr OrtArenaCfg_536871426
    enable_hip_graph*: cint
    tunable_op_enable*: cint
    tunable_op_tuning_enable*: cint
    tunable_op_max_tuning_duration_ms*: cint
  OrtROCMProviderOptions_536871497 = struct_OrtROCMProviderOptions_536871496 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:581:3
  struct_OrtTensorRTProviderOptions_536871499 {.pure, inheritable, bycopy.} = object
    device_id*: cint         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:587:16
    has_user_compute_stream*: cint
    user_compute_stream*: pointer
    trt_max_partition_iterations*: cint
    trt_min_subgraph_size*: cint
    trt_max_workspace_size*: csize_t
    trt_fp16_enable*: cint
    trt_int8_enable*: cint
    trt_int8_calibration_table_name*: cstring
    trt_int8_use_native_calibration_table*: cint
    trt_dla_enable*: cint
    trt_dla_core*: cint
    trt_dump_subgraphs*: cint
    trt_engine_cache_enable*: cint
    trt_engine_cache_path*: cstring
    trt_engine_decryption_enable*: cint
    trt_engine_decryption_lib_path*: cstring
    trt_force_sequential_engine_build*: cint
  OrtTensorRTProviderOptions_536871501 = struct_OrtTensorRTProviderOptions_536871500 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:609:3
  struct_OrtMIGraphXProviderOptions_536871503 {.pure, inheritable, bycopy.} = object
    device_id*: cint         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:615:16
    migraphx_fp16_enable*: cint
    migraphx_int8_enable*: cint
    migraphx_use_native_calibration_table*: cint
    migraphx_int8_calibration_table_name*: cstring
    migraphx_save_compiled_model*: cint
    migraphx_save_model_path*: cstring
    migraphx_load_compiled_model*: cint
    migraphx_load_model_path*: cstring
    migraphx_exhaustive_tune*: bool
  OrtMIGraphXProviderOptions_536871505 = struct_OrtMIGraphXProviderOptions_536871504 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:626:3
  struct_OrtOpenVINOProviderOptions_536871507 {.pure, inheritable, bycopy.} = object
    device_type*: cstring    ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:632:16
    enable_npu_fast_compile*: uint8
    device_id*: cstring
    num_of_threads*: csize_t
    cache_dir*: cstring
    context*: pointer
    enable_opencl_throttling*: uint8
    enable_dynamic_shapes*: uint8
  OrtOpenVINOProviderOptions_536871509 = struct_OrtOpenVINOProviderOptions_536871508 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:655:3
  OrtApi_536871511 = struct_OrtApi_536871514 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:658:23
  struct_OrtApi_536871513 {.pure, inheritable, bycopy.} = object
    CreateStatus*: proc (a0: OrtErrorCode_536871379; a1: cstring): ptr OrtStatus_536871387 {.
        cdecl.}              ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:737:8
    GetErrorCode*: proc (a0: ptr OrtStatus_536871387): OrtErrorCode_536871379 {.
        cdecl.}
    GetErrorMessage*: proc (a0: ptr OrtStatus_536871387): cstring {.cdecl.}
    CreateEnv*: proc (a0: OrtLoggingLevel_536871375; a1: cstring;
                      a2: ptr ptr OrtEnv_536871385): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateEnvWithCustomLogger*: proc (a0: OrtLoggingFunction_536871454;
                                      a1: pointer; a2: OrtLoggingLevel_536871375;
                                      a3: cstring; a4: ptr ptr OrtEnv_536871385): OrtStatusPtr_536871448 {.
        cdecl.}
    EnableTelemetryEvents*: proc (a0: ptr OrtEnv_536871385): OrtStatusPtr_536871448 {.
        cdecl.}
    DisableTelemetryEvents*: proc (a0: ptr OrtEnv_536871385): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateSession*: proc (a0: ptr OrtEnv_536871385; a1: cstring;
                          a2: ptr OrtSessionOptions_536871409;
                          a3: ptr ptr OrtSession_536871393): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateSessionFromArray*: proc (a0: ptr OrtEnv_536871385; a1: pointer;
                                   a2: csize_t; a3: ptr OrtSessionOptions_536871409;
                                   a4: ptr ptr OrtSession_536871393): OrtStatusPtr_536871448 {.
        cdecl.}
    Run*: proc (a0: ptr OrtSession_536871393; a1: ptr OrtRunOptions_536871397;
                a2: ptr cstring; a3: ptr ptr OrtValue_536871395; a4: csize_t;
                a5: ptr cstring; a6: csize_t; a7: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateSessionOptions*: proc (a0: ptr ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    SetOptimizedModelFilePath*: proc (a0: ptr OrtSessionOptions_536871409;
                                      a1: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    CloneSessionOptions*: proc (a0: ptr OrtSessionOptions_536871409;
                                a1: ptr ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    SetSessionExecutionMode*: proc (a0: ptr OrtSessionOptions_536871409;
                                    a1: ExecutionMode_536871462): OrtStatusPtr_536871448 {.
        cdecl.}
    EnableProfiling*: proc (a0: ptr OrtSessionOptions_536871409; a1: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    DisableProfiling*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    EnableMemPattern*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    DisableMemPattern*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    EnableCpuMemArena*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    DisableCpuMemArena*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    SetSessionLogId*: proc (a0: ptr OrtSessionOptions_536871409; a1: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    SetSessionLogVerbosityLevel*: proc (a0: ptr OrtSessionOptions_536871409;
                                        a1: cint): OrtStatusPtr_536871448 {.
        cdecl.}
    SetSessionLogSeverityLevel*: proc (a0: ptr OrtSessionOptions_536871409;
                                       a1: cint): OrtStatusPtr_536871448 {.cdecl.}
    SetSessionGraphOptimizationLevel*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: GraphOptimizationLevel_536871458): OrtStatusPtr_536871448 {.cdecl.}
    SetIntraOpNumThreads*: proc (a0: ptr OrtSessionOptions_536871409; a1: cint): OrtStatusPtr_536871448 {.
        cdecl.}
    SetInterOpNumThreads*: proc (a0: ptr OrtSessionOptions_536871409; a1: cint): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateCustomOpDomain*: proc (a0: cstring; a1: ptr ptr OrtCustomOpDomain_536871411): OrtStatusPtr_536871448 {.
        cdecl.}
    CustomOpDomain_Add*: proc (a0: ptr OrtCustomOpDomain_536871411;
                               a1: ptr OrtCustomOp_536871472): OrtStatusPtr_536871448 {.
        cdecl.}
    AddCustomOpDomain*: proc (a0: ptr OrtSessionOptions_536871409;
                              a1: ptr OrtCustomOpDomain_536871411): OrtStatusPtr_536871448 {.
        cdecl.}
    RegisterCustomOpsLibrary*: proc (a0: ptr OrtSessionOptions_536871409;
                                     a1: cstring; a2: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetInputCount*: proc (a0: ptr OrtSession_536871393; a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetOutputCount*: proc (a0: ptr OrtSession_536871393; a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetOverridableInitializerCount*: proc (a0: ptr OrtSession_536871393;
        a1: ptr csize_t): OrtStatusPtr_536871448 {.cdecl.}
    SessionGetInputTypeInfo*: proc (a0: ptr OrtSession_536871393; a1: csize_t;
                                    a2: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetOutputTypeInfo*: proc (a0: ptr OrtSession_536871393; a1: csize_t;
                                     a2: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetOverridableInitializerTypeInfo*: proc (a0: ptr OrtSession_536871393;
        a1: csize_t; a2: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetInputName*: proc (a0: ptr OrtSession_536871393; a1: csize_t;
                                a2: ptr OrtAllocator_536871452; a3: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetOutputName*: proc (a0: ptr OrtSession_536871393; a1: csize_t;
                                 a2: ptr OrtAllocator_536871452; a3: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetOverridableInitializerName*: proc (a0: ptr OrtSession_536871393;
        a1: csize_t; a2: ptr OrtAllocator_536871452; a3: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateRunOptions*: proc (a0: ptr ptr OrtRunOptions_536871397): OrtStatusPtr_536871448 {.
        cdecl.}
    RunOptionsSetRunLogVerbosityLevel*: proc (a0: ptr OrtRunOptions_536871397;
        a1: cint): OrtStatusPtr_536871448 {.cdecl.}
    RunOptionsSetRunLogSeverityLevel*: proc (a0: ptr OrtRunOptions_536871397;
        a1: cint): OrtStatusPtr_536871448 {.cdecl.}
    RunOptionsSetRunTag*: proc (a0: ptr OrtRunOptions_536871397; a1: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    RunOptionsGetRunLogVerbosityLevel*: proc (a0: ptr OrtRunOptions_536871397;
        a1: ptr cint): OrtStatusPtr_536871448 {.cdecl.}
    RunOptionsGetRunLogSeverityLevel*: proc (a0: ptr OrtRunOptions_536871397;
        a1: ptr cint): OrtStatusPtr_536871448 {.cdecl.}
    RunOptionsGetRunTag*: proc (a0: ptr OrtRunOptions_536871397; a1: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    RunOptionsSetTerminate*: proc (a0: ptr OrtRunOptions_536871397): OrtStatusPtr_536871448 {.
        cdecl.}
    RunOptionsUnsetTerminate*: proc (a0: ptr OrtRunOptions_536871397): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateTensorAsOrtValue*: proc (a0: ptr OrtAllocator_536871452;
                                   a1: ptr int64; a2: csize_t;
                                   a3: ONNXTensorElementDataType_536871361;
                                   a4: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateTensorWithDataAsOrtValue*: proc (a0: ptr OrtMemoryInfo_536871389;
        a1: pointer; a2: csize_t; a3: ptr int64; a4: csize_t;
        a5: ONNXTensorElementDataType_536871361; a6: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    IsTensor*: proc (a0: ptr OrtValue_536871395; a1: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTensorMutableData*: proc (a0: ptr OrtValue_536871395; a1: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    FillStringTensor*: proc (a0: ptr OrtValue_536871395; a1: ptr cstring;
                             a2: csize_t): OrtStatusPtr_536871448 {.cdecl.}
    GetStringTensorDataLength*: proc (a0: ptr OrtValue_536871395;
                                      a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetStringTensorContent*: proc (a0: ptr OrtValue_536871395; a1: pointer;
                                   a2: csize_t; a3: ptr csize_t; a4: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    CastTypeInfoToTensorInfo*: proc (a0: ptr OrtTypeInfo_536871399;
                                     a1: ptr ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    GetOnnxTypeFromTypeInfo*: proc (a0: ptr OrtTypeInfo_536871399;
                                    a1: ptr enum_ONNXType_536871363): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateTensorTypeAndShapeInfo*: proc (a0: ptr ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    SetTensorElementType*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                                 a1: enum_ONNXTensorElementDataType_536871359): OrtStatusPtr_536871448 {.
        cdecl.}
    SetDimensions*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                          a1: ptr int64; a2: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTensorElementType*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                                 a1: ptr enum_ONNXTensorElementDataType_536871359): OrtStatusPtr_536871448 {.
        cdecl.}
    GetDimensionsCount*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                               a1: ptr csize_t): OrtStatusPtr_536871448 {.cdecl.}
    GetDimensions*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                          a1: ptr int64; a2: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSymbolicDimensions*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                                  a1: ptr UncheckedArray[cstring]; a2: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTensorShapeElementCount*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                                       a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTensorTypeAndShape*: proc (a0: ptr OrtValue_536871395;
                                  a1: ptr ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTypeInfo*: proc (a0: ptr OrtValue_536871395; a1: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    GetValueType*: proc (a0: ptr OrtValue_536871395; a1: ptr enum_ONNXType_536871363): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateMemoryInfo*: proc (a0: cstring; a1: enum_OrtAllocatorType_536871476;
                             a2: cint; a3: enum_OrtMemType_536871480;
                             a4: ptr ptr OrtMemoryInfo_536871389): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateCpuMemoryInfo*: proc (a0: enum_OrtAllocatorType_536871476;
                                a1: enum_OrtMemType_536871480;
                                a2: ptr ptr OrtMemoryInfo_536871389): OrtStatusPtr_536871448 {.
        cdecl.}
    CompareMemoryInfo*: proc (a0: ptr OrtMemoryInfo_536871389;
                              a1: ptr OrtMemoryInfo_536871389; a2: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    MemoryInfoGetName*: proc (a0: ptr OrtMemoryInfo_536871389; a1: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    MemoryInfoGetId*: proc (a0: ptr OrtMemoryInfo_536871389; a1: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    MemoryInfoGetMemType*: proc (a0: ptr OrtMemoryInfo_536871389;
                                 a1: ptr OrtMemType_536871482): OrtStatusPtr_536871448 {.
        cdecl.}
    MemoryInfoGetType*: proc (a0: ptr OrtMemoryInfo_536871389;
                              a1: ptr OrtAllocatorType_536871478): OrtStatusPtr_536871448 {.
        cdecl.}
    AllocatorAlloc*: proc (a0: ptr OrtAllocator_536871452; a1: csize_t;
                           a2: ptr pointer): OrtStatusPtr_536871448 {.cdecl.}
    AllocatorFree*: proc (a0: ptr OrtAllocator_536871452; a1: pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    AllocatorGetInfo*: proc (a0: ptr OrtAllocator_536871452;
                             a1: ptr ptr struct_OrtMemoryInfo): OrtStatusPtr_536871448 {.
        cdecl.}
    GetAllocatorWithDefaultOptions*: proc (a0: ptr ptr OrtAllocator_536871452): OrtStatusPtr_536871448 {.
        cdecl.}
    AddFreeDimensionOverride*: proc (a0: ptr OrtSessionOptions_536871409;
                                     a1: cstring; a2: int64): OrtStatusPtr_536871448 {.
        cdecl.}
    GetValue*: proc (a0: ptr OrtValue_536871395; a1: cint; a2: ptr OrtAllocator_536871452;
                     a3: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    GetValueCount*: proc (a0: ptr OrtValue_536871395; a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateValue*: proc (a0: ptr ptr OrtValue_536871395; a1: csize_t;
                        a2: enum_ONNXType_536871363; a3: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateOpaqueValue*: proc (a0: cstring; a1: cstring; a2: pointer;
                              a3: csize_t; a4: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    GetOpaqueValue*: proc (a0: cstring; a1: cstring; a2: ptr OrtValue_536871395;
                           a3: pointer; a4: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfoGetAttribute_float*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: cstring; a2: ptr cfloat): OrtStatusPtr_536871448 {.cdecl.}
    KernelInfoGetAttribute_int64*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: cstring; a2: ptr int64): OrtStatusPtr_536871448 {.cdecl.}
    KernelInfoGetAttribute_string*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: cstring; a2: cstring; a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelContext_GetInputCount*: proc (a0: ptr OrtKernelContext_536871470;
                                        a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelContext_GetOutputCount*: proc (a0: ptr OrtKernelContext_536871470;
        a1: ptr csize_t): OrtStatusPtr_536871448 {.cdecl.}
    KernelContext_GetInput*: proc (a0: ptr OrtKernelContext_536871470;
                                   a1: csize_t; a2: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelContext_GetOutput*: proc (a0: ptr OrtKernelContext_536871470;
                                    a1: csize_t; a2: ptr int64; a3: csize_t;
                                    a4: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseEnv*: proc (a0: ptr OrtEnv_536871385): void {.cdecl.}
    ReleaseStatus*: proc (a0: ptr OrtStatus_536871387): void {.cdecl.}
    ReleaseMemoryInfo*: proc (a0: ptr OrtMemoryInfo_536871389): void {.cdecl.}
    ReleaseSession*: proc (a0: ptr OrtSession_536871393): void {.cdecl.}
    ReleaseValue*: proc (a0: ptr OrtValue_536871395): void {.cdecl.}
    ReleaseRunOptions*: proc (a0: ptr OrtRunOptions_536871397): void {.cdecl.}
    ReleaseTypeInfo*: proc (a0: ptr OrtTypeInfo_536871399): void {.cdecl.}
    ReleaseTensorTypeAndShapeInfo*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401): void {.
        cdecl.}
    ReleaseSessionOptions*: proc (a0: ptr OrtSessionOptions_536871409): void {.
        cdecl.}
    ReleaseCustomOpDomain*: proc (a0: ptr OrtCustomOpDomain_536871411): void {.
        cdecl.}
    GetDenotationFromTypeInfo*: proc (a0: ptr OrtTypeInfo_536871399;
                                      a1: ptr cstring; a2: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    CastTypeInfoToMapTypeInfo*: proc (a0: ptr OrtTypeInfo_536871399;
                                      a1: ptr ptr OrtMapTypeInfo_536871403): OrtStatusPtr_536871448 {.
        cdecl.}
    CastTypeInfoToSequenceTypeInfo*: proc (a0: ptr OrtTypeInfo_536871399;
        a1: ptr ptr OrtSequenceTypeInfo_536871405): OrtStatusPtr_536871448 {.
        cdecl.}
    GetMapKeyType*: proc (a0: ptr OrtMapTypeInfo_536871403;
                          a1: ptr enum_ONNXTensorElementDataType_536871359): OrtStatusPtr_536871448 {.
        cdecl.}
    GetMapValueType*: proc (a0: ptr OrtMapTypeInfo_536871403;
                            a1: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSequenceElementType*: proc (a0: ptr OrtSequenceTypeInfo_536871405;
                                   a1: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseMapTypeInfo*: proc (a0: ptr OrtMapTypeInfo_536871403): void {.cdecl.}
    ReleaseSequenceTypeInfo*: proc (a0: ptr OrtSequenceTypeInfo_536871405): void {.
        cdecl.}
    SessionEndProfiling*: proc (a0: ptr OrtSession_536871393;
                                a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetModelMetadata*: proc (a0: ptr OrtSession_536871393;
                                    a1: ptr ptr OrtModelMetadata_536871413): OrtStatusPtr_536871448 {.
        cdecl.}
    ModelMetadataGetProducerName*: proc (a0: ptr OrtModelMetadata_536871413;
        a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ModelMetadataGetGraphName*: proc (a0: ptr OrtModelMetadata_536871413;
                                      a1: ptr OrtAllocator_536871452;
                                      a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ModelMetadataGetDomain*: proc (a0: ptr OrtModelMetadata_536871413;
                                   a1: ptr OrtAllocator_536871452;
                                   a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ModelMetadataGetDescription*: proc (a0: ptr OrtModelMetadata_536871413;
                                        a1: ptr OrtAllocator_536871452;
                                        a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ModelMetadataLookupCustomMetadataMap*: proc (a0: ptr OrtModelMetadata_536871413;
        a1: ptr OrtAllocator_536871452; a2: cstring; a3: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ModelMetadataGetVersion*: proc (a0: ptr OrtModelMetadata_536871413;
                                    a1: ptr int64): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseModelMetadata*: proc (a0: ptr OrtModelMetadata_536871413): void {.
        cdecl.}
    CreateEnvWithGlobalThreadPools*: proc (a0: OrtLoggingLevel_536871375;
        a1: cstring; a2: ptr OrtThreadingOptions_536871424; a3: ptr ptr OrtEnv_536871385): OrtStatusPtr_536871448 {.
        cdecl.}
    DisablePerSessionThreads*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateThreadingOptions*: proc (a0: ptr ptr OrtThreadingOptions_536871424): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseThreadingOptions*: proc (a0: ptr OrtThreadingOptions_536871424): void {.
        cdecl.}
    ModelMetadataGetCustomMetadataMapKeys*: proc (a0: ptr OrtModelMetadata_536871413;
        a1: ptr OrtAllocator_536871452; a2: ptr ptr cstring; a3: ptr int64): OrtStatusPtr_536871448 {.
        cdecl.}
    AddFreeDimensionOverrideByName*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: cstring; a2: int64): OrtStatusPtr_536871448 {.cdecl.}
    GetAvailableProviders*: proc (a0: ptr ptr cstring; a1: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseAvailableProviders*: proc (a0: ptr cstring; a1: cint): OrtStatusPtr_536871448 {.
        cdecl.}
    GetStringTensorElementLength*: proc (a0: ptr OrtValue_536871395;
        a1: csize_t; a2: ptr csize_t): OrtStatusPtr_536871448 {.cdecl.}
    GetStringTensorElement*: proc (a0: ptr OrtValue_536871395; a1: csize_t;
                                   a2: csize_t; a3: pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    FillStringTensorElement*: proc (a0: ptr OrtValue_536871395; a1: cstring;
                                    a2: csize_t): OrtStatusPtr_536871448 {.cdecl.}
    AddSessionConfigEntry*: proc (a0: ptr OrtSessionOptions_536871409;
                                  a1: cstring; a2: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateAllocator*: proc (a0: ptr OrtSession_536871393; a1: ptr OrtMemoryInfo_536871389;
                            a2: ptr ptr OrtAllocator_536871452): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseAllocator*: proc (a0: ptr OrtAllocator_536871452): void {.cdecl.}
    RunWithBinding*: proc (a0: ptr OrtSession_536871393; a1: ptr OrtRunOptions_536871397;
                           a2: ptr OrtIoBinding_536871391): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateIoBinding*: proc (a0: ptr OrtSession_536871393;
                            a1: ptr ptr OrtIoBinding_536871391): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseIoBinding*: proc (a0: ptr OrtIoBinding_536871391): void {.cdecl.}
    BindInput*: proc (a0: ptr OrtIoBinding_536871391; a1: cstring;
                      a2: ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    BindOutput*: proc (a0: ptr OrtIoBinding_536871391; a1: cstring;
                       a2: ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    BindOutputToDevice*: proc (a0: ptr OrtIoBinding_536871391; a1: cstring;
                               a2: ptr OrtMemoryInfo_536871389): OrtStatusPtr_536871448 {.
        cdecl.}
    GetBoundOutputNames*: proc (a0: ptr OrtIoBinding_536871391;
                                a1: ptr OrtAllocator_536871452; a2: ptr cstring;
                                a3: ptr ptr csize_t; a4: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetBoundOutputValues*: proc (a0: ptr OrtIoBinding_536871391;
                                 a1: ptr OrtAllocator_536871452;
                                 a2: ptr ptr ptr OrtValue_536871395;
                                 a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    ClearBoundInputs*: proc (a0: ptr OrtIoBinding_536871391): void {.cdecl.}
    ClearBoundOutputs*: proc (a0: ptr OrtIoBinding_536871391): void {.cdecl.}
    TensorAt*: proc (a0: ptr OrtValue_536871395; a1: ptr int64; a2: csize_t;
                     a3: ptr pointer): OrtStatusPtr_536871448 {.cdecl.}
    CreateAndRegisterAllocator*: proc (a0: ptr OrtEnv_536871385;
                                       a1: ptr OrtMemoryInfo_536871389;
                                       a2: ptr OrtArenaCfg_536871426): OrtStatusPtr_536871448 {.
        cdecl.}
    SetLanguageProjection*: proc (a0: ptr OrtEnv_536871385;
                                  a1: OrtLanguageProjection_536871466): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionGetProfilingStartTimeNs*: proc (a0: ptr OrtSession_536871393;
        a1: ptr uint64): OrtStatusPtr_536871448 {.cdecl.}
    SetGlobalIntraOpNumThreads*: proc (a0: ptr OrtThreadingOptions_536871424;
                                       a1: cint): OrtStatusPtr_536871448 {.cdecl.}
    SetGlobalInterOpNumThreads*: proc (a0: ptr OrtThreadingOptions_536871424;
                                       a1: cint): OrtStatusPtr_536871448 {.cdecl.}
    SetGlobalSpinControl*: proc (a0: ptr OrtThreadingOptions_536871424; a1: cint): OrtStatusPtr_536871448 {.
        cdecl.}
    AddInitializer*: proc (a0: ptr OrtSessionOptions_536871409; a1: cstring;
                           a2: ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateEnvWithCustomLoggerAndGlobalThreadPools*: proc (
        a0: OrtLoggingFunction_536871454; a1: pointer; a2: OrtLoggingLevel_536871375;
        a3: cstring; a4: ptr struct_OrtThreadingOptions; a5: ptr ptr OrtEnv_536871385): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_CUDA*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtCUDAProviderOptions_536871494): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_ROCM*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtROCMProviderOptions_536871498): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_OpenVINO*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtOpenVINOProviderOptions_536871510): OrtStatusPtr_536871448 {.
        cdecl.}
    SetGlobalDenormalAsZero*: proc (a0: ptr OrtThreadingOptions_536871424): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateArenaCfg*: proc (a0: csize_t; a1: cint; a2: cint; a3: cint;
                           a4: ptr ptr OrtArenaCfg_536871426): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseArenaCfg*: proc (a0: ptr OrtArenaCfg_536871426): void {.cdecl.}
    ModelMetadataGetGraphDescription*: proc (a0: ptr OrtModelMetadata_536871413;
        a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_TensorRT*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtTensorRTProviderOptions_536871502): OrtStatusPtr_536871448 {.
        cdecl.}
    SetCurrentGpuDeviceId*: proc (a0: cint): OrtStatusPtr_536871448 {.cdecl.}
    GetCurrentGpuDeviceId*: proc (a0: ptr cint): OrtStatusPtr_536871448 {.cdecl.}
    KernelInfoGetAttributeArray_float*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: cstring; a2: ptr cfloat; a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfoGetAttributeArray_int64*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: cstring; a2: ptr int64; a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateArenaCfgV2*: proc (a0: ptr cstring; a1: ptr csize_t; a2: csize_t;
                             a3: ptr ptr OrtArenaCfg_536871426): OrtStatusPtr_536871448 {.
        cdecl.}
    AddRunConfigEntry*: proc (a0: ptr OrtRunOptions_536871397; a1: cstring;
                              a2: cstring): OrtStatusPtr_536871448 {.cdecl.}
    CreatePrepackedWeightsContainer*: proc (
        a0: ptr ptr OrtPrepackedWeightsContainer_536871428): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleasePrepackedWeightsContainer*: proc (
        a0: ptr OrtPrepackedWeightsContainer_536871428): void {.cdecl.}
    CreateSessionWithPrepackedWeightsContainer*: proc (a0: ptr OrtEnv_536871385;
        a1: cstring; a2: ptr OrtSessionOptions_536871409;
        a3: ptr OrtPrepackedWeightsContainer_536871428; a4: ptr ptr OrtSession_536871393): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateSessionFromArrayWithPrepackedWeightsContainer*: proc (a0: ptr OrtEnv_536871385;
        a1: pointer; a2: csize_t; a3: ptr OrtSessionOptions_536871409;
        a4: ptr OrtPrepackedWeightsContainer_536871428; a5: ptr ptr OrtSession_536871393): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_TensorRT_V2*: proc (
        a0: ptr OrtSessionOptions_536871409;
        a1: ptr OrtTensorRTProviderOptionsV2_536871430): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateTensorRTProviderOptions*: proc (
        a0: ptr ptr OrtTensorRTProviderOptionsV2_536871430): OrtStatusPtr_536871448 {.
        cdecl.}
    UpdateTensorRTProviderOptions*: proc (a0: ptr OrtTensorRTProviderOptionsV2_536871430;
        a1: ptr cstring; a2: ptr cstring; a3: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTensorRTProviderOptionsAsString*: proc (
        a0: ptr OrtTensorRTProviderOptionsV2_536871430; a1: ptr OrtAllocator_536871452;
        a2: ptr cstring): OrtStatusPtr_536871448 {.cdecl.}
    ReleaseTensorRTProviderOptions*: proc (a0: ptr OrtTensorRTProviderOptionsV2_536871430): void {.
        cdecl.}
    EnableOrtCustomOps*: proc (a0: ptr OrtSessionOptions_536871409): OrtStatusPtr_536871448 {.
        cdecl.}
    RegisterAllocator*: proc (a0: ptr OrtEnv_536871385; a1: ptr OrtAllocator_536871452): OrtStatusPtr_536871448 {.
        cdecl.}
    UnregisterAllocator*: proc (a0: ptr OrtEnv_536871385; a1: ptr OrtMemoryInfo_536871389): OrtStatusPtr_536871448 {.
        cdecl.}
    IsSparseTensor*: proc (a0: ptr OrtValue_536871395; a1: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateSparseTensorAsOrtValue*: proc (a0: ptr OrtAllocator_536871452;
        a1: ptr int64; a2: csize_t; a3: ONNXTensorElementDataType_536871361;
        a4: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.cdecl.}
    FillSparseTensorCoo*: proc (a0: ptr OrtValue_536871395;
                                a1: ptr OrtMemoryInfo_536871389; a2: ptr int64;
                                a3: csize_t; a4: pointer; a5: ptr int64;
                                a6: csize_t): OrtStatusPtr_536871448 {.cdecl.}
    FillSparseTensorCsr*: proc (a0: ptr OrtValue_536871395;
                                a1: ptr OrtMemoryInfo_536871389; a2: ptr int64;
                                a3: csize_t; a4: pointer; a5: ptr int64;
                                a6: csize_t; a7: ptr int64; a8: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    FillSparseTensorBlockSparse*: proc (a0: ptr OrtValue_536871395;
                                        a1: ptr OrtMemoryInfo_536871389;
                                        a2: ptr int64; a3: csize_t; a4: pointer;
                                        a5: ptr int64; a6: csize_t;
                                        a7: ptr int32): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateSparseTensorWithValuesAsOrtValue*: proc (a0: ptr OrtMemoryInfo_536871389;
        a1: pointer; a2: ptr int64; a3: csize_t; a4: ptr int64; a5: csize_t;
        a6: ONNXTensorElementDataType_536871361; a7: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    UseCooIndices*: proc (a0: ptr OrtValue_536871395; a1: ptr int64; a2: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    UseCsrIndices*: proc (a0: ptr OrtValue_536871395; a1: ptr int64;
                          a2: csize_t; a3: ptr int64; a4: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    UseBlockSparseIndices*: proc (a0: ptr OrtValue_536871395; a1: ptr int64;
                                  a2: csize_t; a3: ptr int32): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSparseTensorFormat*: proc (a0: ptr OrtValue_536871395;
                                  a1: ptr enum_OrtSparseFormat_536871367): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSparseTensorValuesTypeAndShape*: proc (a0: ptr OrtValue_536871395;
        a1: ptr ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSparseTensorValues*: proc (a0: ptr OrtValue_536871395; a1: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSparseTensorIndicesTypeShape*: proc (a0: ptr OrtValue_536871395;
        a1: enum_OrtSparseIndicesFormat_536871371;
        a2: ptr ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSparseTensorIndices*: proc (a0: ptr OrtValue_536871395;
                                   a1: enum_OrtSparseIndicesFormat_536871371;
                                   a2: ptr csize_t; a3: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    HasValue*: proc (a0: ptr OrtValue_536871395; a1: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelContext_GetGPUComputeStream*: proc (a0: ptr OrtKernelContext_536871470;
        a1: ptr pointer): OrtStatusPtr_536871448 {.cdecl.}
    GetTensorMemoryInfo*: proc (a0: ptr OrtValue_536871395;
                                a1: ptr ptr OrtMemoryInfo_536871389): OrtStatusPtr_536871448 {.
        cdecl.}
    GetExecutionProviderApi*: proc (a0: cstring; a1: uint32; a2: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsSetCustomCreateThreadFn*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: OrtCustomCreateThreadFn_536871528): OrtStatusPtr_536871448 {.cdecl.}
    SessionOptionsSetCustomThreadCreationOptions*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsSetCustomJoinThreadFn*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: OrtCustomJoinThreadFn_536871530): OrtStatusPtr_536871448 {.cdecl.}
    SetGlobalCustomCreateThreadFn*: proc (a0: ptr OrtThreadingOptions_536871424;
        a1: OrtCustomCreateThreadFn_536871528): OrtStatusPtr_536871448 {.cdecl.}
    SetGlobalCustomThreadCreationOptions*: proc (a0: ptr OrtThreadingOptions_536871424;
        a1: pointer): OrtStatusPtr_536871448 {.cdecl.}
    SetGlobalCustomJoinThreadFn*: proc (a0: ptr OrtThreadingOptions_536871424;
                                        a1: OrtCustomJoinThreadFn_536871530): OrtStatusPtr_536871448 {.
        cdecl.}
    SynchronizeBoundInputs*: proc (a0: ptr OrtIoBinding_536871391): OrtStatusPtr_536871448 {.
        cdecl.}
    SynchronizeBoundOutputs*: proc (a0: ptr OrtIoBinding_536871391): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_CUDA_V2*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtCUDAProviderOptionsV2_536871432): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateCUDAProviderOptions*: proc (a0: ptr ptr OrtCUDAProviderOptionsV2_536871432): OrtStatusPtr_536871448 {.
        cdecl.}
    UpdateCUDAProviderOptions*: proc (a0: ptr OrtCUDAProviderOptionsV2_536871432;
                                      a1: ptr cstring; a2: ptr cstring;
                                      a3: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetCUDAProviderOptionsAsString*: proc (a0: ptr OrtCUDAProviderOptionsV2_536871432;
        a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseCUDAProviderOptions*: proc (a0: ptr OrtCUDAProviderOptionsV2_536871432): void {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_MIGraphX*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtMIGraphXProviderOptions_536871506): OrtStatusPtr_536871448 {.
        cdecl.}
    AddExternalInitializers*: proc (a0: ptr OrtSessionOptions_536871409;
                                    a1: ptr cstring; a2: ptr ptr OrtValue_536871395;
                                    a3: csize_t): OrtStatusPtr_536871448 {.cdecl.}
    CreateOpAttr*: proc (a0: cstring; a1: pointer; a2: cint; a3: OrtOpAttrType_536871383;
                         a4: ptr ptr OrtOpAttr_536871440): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseOpAttr*: proc (a0: ptr OrtOpAttr_536871440): void {.cdecl.}
    CreateOp*: proc (a0: ptr OrtKernelInfo_536871468; a1: cstring; a2: cstring;
                     a3: cint; a4: ptr cstring;
                     a5: ptr ONNXTensorElementDataType_536871361; a6: cint;
                     a7: ptr ptr OrtOpAttr_536871440; a8: cint; a9: cint;
                     a10: cint; a11: ptr ptr OrtOp_536871438): OrtStatusPtr_536871448 {.
        cdecl.}
    InvokeOp*: proc (a0: ptr OrtKernelContext_536871470; a1: ptr OrtOp_536871438;
                     a2: ptr ptr OrtValue_536871395; a3: cint;
                     a4: ptr ptr OrtValue_536871395; a5: cint): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseOp*: proc (a0: ptr OrtOp_536871438): void {.cdecl.}
    SessionOptionsAppendExecutionProvider*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: cstring; a2: ptr cstring; a3: ptr cstring; a4: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    CopyKernelInfo*: proc (a0: ptr OrtKernelInfo_536871468;
                           a1: ptr ptr OrtKernelInfo_536871468): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseKernelInfo*: proc (a0: ptr OrtKernelInfo_536871468): void {.cdecl.}
    GetTrainingApi*: proc (a0: uint32): ptr OrtTrainingApi_536871516 {.cdecl.}
    SessionOptionsAppendExecutionProvider_CANN*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtCANNProviderOptions_536871434): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateCANNProviderOptions*: proc (a0: ptr ptr OrtCANNProviderOptions_536871434): OrtStatusPtr_536871448 {.
        cdecl.}
    UpdateCANNProviderOptions*: proc (a0: ptr OrtCANNProviderOptions_536871434;
                                      a1: ptr cstring; a2: ptr cstring;
                                      a3: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetCANNProviderOptionsAsString*: proc (a0: ptr OrtCANNProviderOptions_536871434;
        a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseCANNProviderOptions*: proc (a0: ptr OrtCANNProviderOptions_536871434): void {.
        cdecl.}
    MemoryInfoGetDeviceType*: proc (a0: ptr OrtMemoryInfo_536871389;
                                    a1: ptr OrtMemoryInfoDeviceType_536871486): void {.
        cdecl.}
    UpdateEnvWithCustomLogLevel*: proc (a0: ptr OrtEnv_536871385;
                                        a1: OrtLoggingLevel_536871375): OrtStatusPtr_536871448 {.
        cdecl.}
    SetGlobalIntraOpThreadAffinity*: proc (a0: ptr OrtThreadingOptions_536871424;
        a1: cstring): OrtStatusPtr_536871448 {.cdecl.}
    RegisterCustomOpsLibrary_V2*: proc (a0: ptr OrtSessionOptions_536871409;
                                        a1: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    RegisterCustomOpsUsingFunction*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: cstring): OrtStatusPtr_536871448 {.cdecl.}
    KernelInfo_GetInputCount*: proc (a0: ptr OrtKernelInfo_536871468;
                                     a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfo_GetOutputCount*: proc (a0: ptr OrtKernelInfo_536871468;
                                      a1: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfo_GetInputName*: proc (a0: ptr OrtKernelInfo_536871468;
                                    a1: csize_t; a2: cstring; a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfo_GetOutputName*: proc (a0: ptr OrtKernelInfo_536871468;
                                     a1: csize_t; a2: cstring; a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfo_GetInputTypeInfo*: proc (a0: ptr OrtKernelInfo_536871468;
                                        a1: csize_t; a2: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfo_GetOutputTypeInfo*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: csize_t; a2: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfoGetAttribute_tensor*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: cstring; a2: ptr OrtAllocator_536871452; a3: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    HasSessionConfigEntry*: proc (a0: ptr OrtSessionOptions_536871409;
                                  a1: cstring; a2: ptr cint): OrtStatusPtr_536871448 {.
        cdecl.}
    GetSessionConfigEntry*: proc (a0: ptr OrtSessionOptions_536871409;
                                  a1: cstring; a2: cstring; a3: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_Dnnl*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr OrtDnnlProviderOptions_536871436): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateDnnlProviderOptions*: proc (a0: ptr ptr OrtDnnlProviderOptions_536871436): OrtStatusPtr_536871448 {.
        cdecl.}
    UpdateDnnlProviderOptions*: proc (a0: ptr OrtDnnlProviderOptions_536871436;
                                      a1: ptr cstring; a2: ptr cstring;
                                      a3: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetDnnlProviderOptionsAsString*: proc (a0: ptr OrtDnnlProviderOptions_536871436;
        a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseDnnlProviderOptions*: proc (a0: ptr OrtDnnlProviderOptions_536871436): void {.
        cdecl.}
    KernelInfo_GetNodeName*: proc (a0: ptr OrtKernelInfo_536871468; a1: cstring;
                                   a2: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfo_GetLogger*: proc (a0: ptr OrtKernelInfo_536871468;
                                 a1: ptr ptr OrtLogger_536871442): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelContext_GetLogger*: proc (a0: ptr OrtKernelContext_536871470;
                                    a1: ptr ptr OrtLogger_536871442): OrtStatusPtr_536871448 {.
        cdecl.}
    Logger_LogMessage*: proc (a0: ptr OrtLogger_536871442; a1: OrtLoggingLevel_536871375;
                              a2: cstring; a3: cstring; a4: cint; a5: cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    Logger_GetLoggingSeverityLevel*: proc (a0: ptr OrtLogger_536871442;
        a1: ptr OrtLoggingLevel_536871375): OrtStatusPtr_536871448 {.cdecl.}
    KernelInfoGetConstantInput_tensor*: proc (a0: ptr OrtKernelInfo_536871468;
        a1: csize_t; a2: ptr cint; a3: ptr ptr OrtValue_536871395): OrtStatusPtr_536871448 {.
        cdecl.}
    CastTypeInfoToOptionalTypeInfo*: proc (a0: ptr OrtTypeInfo_536871399;
        a1: ptr ptr OrtOptionalTypeInfo_536871407): OrtStatusPtr_536871448 {.
        cdecl.}
    GetOptionalContainedTypeInfo*: proc (a0: ptr OrtOptionalTypeInfo_536871407;
        a1: ptr ptr OrtTypeInfo_536871399): OrtStatusPtr_536871448 {.cdecl.}
    GetResizedStringTensorElementBuffer*: proc (a0: ptr OrtValue_536871395;
        a1: csize_t; a2: csize_t; a3: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelContext_GetAllocator*: proc (a0: ptr OrtKernelContext_536871470;
                                       a1: ptr OrtMemoryInfo_536871389;
                                       a2: ptr ptr OrtAllocator_536871452): OrtStatusPtr_536871448 {.
        cdecl.}
    GetBuildInfoString*: proc (): cstring {.cdecl.}
    CreateROCMProviderOptions*: proc (a0: ptr ptr OrtROCMProviderOptions_536871498): OrtStatusPtr_536871448 {.
        cdecl.}
    UpdateROCMProviderOptions*: proc (a0: ptr OrtROCMProviderOptions_536871498;
                                      a1: ptr cstring; a2: ptr cstring;
                                      a3: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    GetROCMProviderOptionsAsString*: proc (a0: ptr OrtROCMProviderOptions_536871498;
        a1: ptr OrtAllocator_536871452; a2: ptr cstring): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseROCMProviderOptions*: proc (a0: ptr OrtROCMProviderOptions_536871498): void {.
        cdecl.}
    CreateAndRegisterAllocatorV2*: proc (a0: ptr OrtEnv_536871385; a1: cstring;
        a2: ptr OrtMemoryInfo_536871389; a3: ptr OrtArenaCfg_536871426;
        a4: ptr cstring; a5: ptr cstring; a6: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    RunAsync*: proc (a0: ptr OrtSession_536871393; a1: ptr OrtRunOptions_536871397;
                     a2: ptr cstring; a3: ptr ptr OrtValue_536871395;
                     a4: csize_t; a5: ptr cstring; a6: csize_t;
                     a7: ptr ptr OrtValue_536871395; a8: RunAsyncCallbackFn_536871534;
                     a9: pointer): OrtStatusPtr_536871448 {.cdecl.}
    UpdateTensorRTProviderOptionsWithValue*: proc (
        a0: ptr OrtTensorRTProviderOptionsV2_536871430; a1: cstring; a2: pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    GetTensorRTProviderOptionsByName*: proc (
        a0: ptr OrtTensorRTProviderOptionsV2_536871430; a1: cstring;
        a2: ptr pointer): OrtStatusPtr_536871448 {.cdecl.}
    UpdateCUDAProviderOptionsWithValue*: proc (a0: ptr OrtCUDAProviderOptionsV2_536871432;
        a1: cstring; a2: pointer): OrtStatusPtr_536871448 {.cdecl.}
    GetCUDAProviderOptionsByName*: proc (a0: ptr OrtCUDAProviderOptionsV2_536871432;
        a1: cstring; a2: ptr pointer): OrtStatusPtr_536871448 {.cdecl.}
    KernelContext_GetResource*: proc (a0: ptr OrtKernelContext_536871470;
                                      a1: cint; a2: cint; a3: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    SetUserLoggingFunction*: proc (a0: ptr OrtSessionOptions_536871409;
                                   a1: OrtLoggingFunction_536871454; a2: pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    ShapeInferContext_GetInputCount*: proc (a0: ptr OrtShapeInferContext_536871444;
        a1: ptr csize_t): OrtStatusPtr_536871448 {.cdecl.}
    ShapeInferContext_GetInputTypeShape*: proc (a0: ptr OrtShapeInferContext_536871444;
        a1: csize_t; a2: ptr ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    ShapeInferContext_GetAttribute*: proc (a0: ptr OrtShapeInferContext_536871444;
        a1: cstring; a2: ptr ptr OrtOpAttr_536871440): OrtStatusPtr_536871448 {.
        cdecl.}
    ShapeInferContext_SetOutputTypeShape*: proc (a0: ptr OrtShapeInferContext_536871444;
        a1: csize_t; a2: ptr OrtTensorTypeAndShapeInfo_536871401): OrtStatusPtr_536871448 {.
        cdecl.}
    SetSymbolicDimensions*: proc (a0: ptr OrtTensorTypeAndShapeInfo_536871401;
                                  a1: ptr UncheckedArray[cstring]; a2: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    ReadOpAttr*: proc (a0: ptr OrtOpAttr_536871440; a1: OrtOpAttrType_536871383;
                       a2: pointer; a3: csize_t; a4: ptr csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    SetDeterministicCompute*: proc (a0: ptr OrtSessionOptions_536871409;
                                    a1: bool): OrtStatusPtr_536871448 {.cdecl.}
    KernelContext_ParallelFor*: proc (a0: ptr OrtKernelContext_536871470; a1: proc (
        a0: pointer; a1: csize_t): void {.cdecl.}; a2: csize_t; a3: csize_t;
                                      a4: pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    SessionOptionsAppendExecutionProvider_OpenVINO_V2*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr cstring; a2: ptr cstring;
        a3: csize_t): OrtStatusPtr_536871448 {.cdecl.}
    SessionOptionsAppendExecutionProvider_VitisAI*: proc (
        a0: ptr OrtSessionOptions_536871409; a1: ptr cstring; a2: ptr cstring;
        a3: csize_t): OrtStatusPtr_536871448 {.cdecl.}
    KernelContext_GetScratchBuffer*: proc (a0: ptr OrtKernelContext_536871470;
        a1: ptr OrtMemoryInfo_536871389; a2: csize_t; a3: ptr pointer): OrtStatusPtr_536871448 {.
        cdecl.}
    KernelInfoGetAllocator*: proc (a0: ptr OrtKernelInfo_536871468;
                                   a1: OrtMemType_536871482;
                                   a2: ptr ptr OrtAllocator_536871452): OrtStatusPtr_536871448 {.
        cdecl.}
    AddExternalInitializersFromFilesInMemory*: proc (a0: ptr OrtSessionOptions_536871409;
        a1: ptr cstring; a2: ptr cstring; a3: ptr csize_t; a4: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateLoraAdapter*: proc (a0: cstring; a1: ptr OrtAllocator_536871452;
                              a2: ptr ptr OrtLoraAdapter_536871446): OrtStatusPtr_536871448 {.
        cdecl.}
    CreateLoraAdapterFromArray*: proc (a0: pointer; a1: csize_t;
                                       a2: ptr OrtAllocator_536871452;
                                       a3: ptr ptr OrtLoraAdapter_536871446): OrtStatusPtr_536871448 {.
        cdecl.}
    ReleaseLoraAdapter*: proc (a0: ptr OrtLoraAdapter_536871446): void {.cdecl.}
    RunOptionsAddActiveLoraAdapter*: proc (a0: ptr OrtRunOptions_536871397;
        a1: ptr OrtLoraAdapter_536871446): OrtStatusPtr_536871448 {.cdecl.}
    SetEpDynamicOptions*: proc (a0: ptr OrtSession_536871393; a1: ptr cstring;
                                a2: ptr cstring; a3: csize_t): OrtStatusPtr_536871448 {.
        cdecl.}
  OrtTrainingApi_536871515 = struct_OrtTrainingApi ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:661:31
  struct_OrtApiBase_536871517 {.pure, inheritable, bycopy.} = object
    GetApi*: proc (a0: uint32): ptr OrtApi_536871512 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:667:8
    GetVersionString*: proc (): cstring {.cdecl.}
  OrtApiBase_536871519 = struct_OrtApiBase_536871518 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:686:27
  OrtThreadWorkerFn_536871521 = proc (a0: pointer): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:699:16
  struct_OrtCustomHandleType_536871523 {.pure, inheritable, bycopy.} = object
    compiler_place_holder*: cschar ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:701:22
  OrtCustomThreadHandle_536871525 = ptr struct_OrtCustomHandleType_536871524 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:703:4
  OrtCustomCreateThreadFn_536871527 = proc (a0: pointer; a1: OrtThreadWorkerFn_536871522;
      a2: pointer): OrtCustomThreadHandle_536871526 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:710:33
  OrtCustomJoinThreadFn_536871529 = proc (a0: OrtCustomThreadHandle_536871526): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:717:16
  RegisterCustomOpsFn_536871531 = proc (a0: ptr OrtSessionOptions_536871409;
                                        a1: ptr OrtApiBase_536871520): ptr OrtStatus_536871387 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:719:34
  RunAsyncCallbackFn_536871533 = proc (a0: pointer; a1: ptr ptr OrtValue_536871395;
                                       a2: csize_t; a3: OrtStatusPtr_536871448): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:728:16
  OrtCustomOpInputOutputCharacteristic_536871537 = enum_OrtCustomOpInputOutputCharacteristic_536871536 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:4775:3
  OrtKernelContext_536871470 = (when declared(OrtKernelContext):
    when ownSizeof(OrtKernelContext) != ownSizeof(OrtKernelContext_536871469):
      static :
        warning("Declaration of " & "OrtKernelContext" &
            " exists but with different size")
    OrtKernelContext
   else:
    OrtKernelContext_536871469)
  OrtMIGraphXProviderOptions_536871506 = (when declared(
      OrtMIGraphXProviderOptions):
    when ownSizeof(OrtMIGraphXProviderOptions) !=
        ownSizeof(OrtMIGraphXProviderOptions_536871505):
      static :
        warning("Declaration of " & "OrtMIGraphXProviderOptions" &
            " exists but with different size")
    OrtMIGraphXProviderOptions
   else:
    OrtMIGraphXProviderOptions_536871505)
  OrtAllocator_536871452 = (when declared(OrtAllocator):
    when ownSizeof(OrtAllocator) != ownSizeof(OrtAllocator_536871451):
      static :
        warning("Declaration of " & "OrtAllocator" &
            " exists but with different size")
    OrtAllocator
   else:
    OrtAllocator_536871451)
  struct_OrtAllocator_536871450 = (when declared(struct_OrtAllocator):
    when ownSizeof(struct_OrtAllocator) != ownSizeof(struct_OrtAllocator_536871449):
      static :
        warning("Declaration of " & "struct_OrtAllocator" &
            " exists but with different size")
    struct_OrtAllocator
   else:
    struct_OrtAllocator_536871449)
  OrtLoraAdapter_536871446 = (when declared(OrtLoraAdapter):
    when ownSizeof(OrtLoraAdapter) != ownSizeof(OrtLoraAdapter_536871445):
      static :
        warning("Declaration of " & "OrtLoraAdapter" &
            " exists but with different size")
    OrtLoraAdapter
   else:
    OrtLoraAdapter_536871445)
  enum_OrtCudnnConvAlgoSearch_536871488 = (when declared(
      enum_OrtCudnnConvAlgoSearch):
    when ownSizeof(enum_OrtCudnnConvAlgoSearch) !=
        ownSizeof(enum_OrtCudnnConvAlgoSearch_536871487):
      static :
        warning("Declaration of " & "enum_OrtCudnnConvAlgoSearch" &
            " exists but with different size")
    enum_OrtCudnnConvAlgoSearch
   else:
    enum_OrtCudnnConvAlgoSearch_536871487)
  struct_OrtOpenVINOProviderOptions_536871508 = (when declared(
      struct_OrtOpenVINOProviderOptions):
    when ownSizeof(struct_OrtOpenVINOProviderOptions) !=
        ownSizeof(struct_OrtOpenVINOProviderOptions_536871507):
      static :
        warning("Declaration of " & "struct_OrtOpenVINOProviderOptions" &
            " exists but with different size")
    struct_OrtOpenVINOProviderOptions
   else:
    struct_OrtOpenVINOProviderOptions_536871507)
  enum_OrtMemType_536871480 = (when declared(enum_OrtMemType):
    when ownSizeof(enum_OrtMemType) != ownSizeof(enum_OrtMemType_536871479):
      static :
        warning("Declaration of " & "enum_OrtMemType" &
            " exists but with different size")
    enum_OrtMemType
   else:
    enum_OrtMemType_536871479)
  OrtROCMProviderOptions_536871498 = (when declared(OrtROCMProviderOptions):
    when ownSizeof(OrtROCMProviderOptions) != ownSizeof(OrtROCMProviderOptions_536871497):
      static :
        warning("Declaration of " & "OrtROCMProviderOptions" &
            " exists but with different size")
    OrtROCMProviderOptions
   else:
    OrtROCMProviderOptions_536871497)
  OrtStatusPtr_536871448 = (when declared(OrtStatusPtr):
    when ownSizeof(OrtStatusPtr) != ownSizeof(OrtStatusPtr_536871447):
      static :
        warning("Declaration of " & "OrtStatusPtr" &
            " exists but with different size")
    OrtStatusPtr
   else:
    OrtStatusPtr_536871447)
  RunAsyncCallbackFn_536871534 = (when declared(RunAsyncCallbackFn):
    when ownSizeof(RunAsyncCallbackFn) != ownSizeof(RunAsyncCallbackFn_536871533):
      static :
        warning("Declaration of " & "RunAsyncCallbackFn" &
            " exists but with different size")
    RunAsyncCallbackFn
   else:
    RunAsyncCallbackFn_536871533)
  ExecutionMode_536871462 = (when declared(ExecutionMode):
    when ownSizeof(ExecutionMode) != ownSizeof(ExecutionMode_536871461):
      static :
        warning("Declaration of " & "ExecutionMode" &
            " exists but with different size")
    ExecutionMode
   else:
    ExecutionMode_536871461)
  OrtLogger_536871442 = (when declared(OrtLogger):
    when ownSizeof(OrtLogger) != ownSizeof(OrtLogger_536871441):
      static :
        warning("Declaration of " & "OrtLogger" &
            " exists but with different size")
    OrtLogger
   else:
    OrtLogger_536871441)
  OrtCUDAProviderOptions_536871494 = (when declared(OrtCUDAProviderOptions):
    when ownSizeof(OrtCUDAProviderOptions) != ownSizeof(OrtCUDAProviderOptions_536871493):
      static :
        warning("Declaration of " & "OrtCUDAProviderOptions" &
            " exists but with different size")
    OrtCUDAProviderOptions
   else:
    OrtCUDAProviderOptions_536871493)
  OrtCustomJoinThreadFn_536871530 = (when declared(OrtCustomJoinThreadFn):
    when ownSizeof(OrtCustomJoinThreadFn) != ownSizeof(OrtCustomJoinThreadFn_536871529):
      static :
        warning("Declaration of " & "OrtCustomJoinThreadFn" &
            " exists but with different size")
    OrtCustomJoinThreadFn
   else:
    OrtCustomJoinThreadFn_536871529)
  OrtValue_536871395 = (when declared(OrtValue):
    when ownSizeof(OrtValue) != ownSizeof(OrtValue_536871394):
      static :
        warning("Declaration of " & "OrtValue" &
            " exists but with different size")
    OrtValue
   else:
    OrtValue_536871394)
  OrtCUDAProviderOptionsV2_536871432 = (when declared(OrtCUDAProviderOptionsV2):
    when ownSizeof(OrtCUDAProviderOptionsV2) !=
        ownSizeof(OrtCUDAProviderOptionsV2_536871431):
      static :
        warning("Declaration of " & "OrtCUDAProviderOptionsV2" &
            " exists but with different size")
    OrtCUDAProviderOptionsV2
   else:
    OrtCUDAProviderOptionsV2_536871431)
  enum_OrtCustomOpInputOutputCharacteristic_536871536 = (when declared(
      enum_OrtCustomOpInputOutputCharacteristic):
    when ownSizeof(enum_OrtCustomOpInputOutputCharacteristic) !=
        ownSizeof(enum_OrtCustomOpInputOutputCharacteristic_536871535):
      static :
        warning("Declaration of " & "enum_OrtCustomOpInputOutputCharacteristic" &
            " exists but with different size")
    enum_OrtCustomOpInputOutputCharacteristic
   else:
    enum_OrtCustomOpInputOutputCharacteristic_536871535)
  OrtApiBase_536871520 = (when declared(OrtApiBase):
    when ownSizeof(OrtApiBase) != ownSizeof(OrtApiBase_536871519):
      static :
        warning("Declaration of " & "OrtApiBase" &
            " exists but with different size")
    OrtApiBase
   else:
    OrtApiBase_536871519)
  OrtMapTypeInfo_536871403 = (when declared(OrtMapTypeInfo):
    when ownSizeof(OrtMapTypeInfo) != ownSizeof(OrtMapTypeInfo_536871402):
      static :
        warning("Declaration of " & "OrtMapTypeInfo" &
            " exists but with different size")
    OrtMapTypeInfo
   else:
    OrtMapTypeInfo_536871402)
  enum_OrtSparseFormat_536871367 = (when declared(enum_OrtSparseFormat):
    when ownSizeof(enum_OrtSparseFormat) != ownSizeof(enum_OrtSparseFormat_536871366):
      static :
        warning("Declaration of " & "enum_OrtSparseFormat" &
            " exists but with different size")
    enum_OrtSparseFormat
   else:
    enum_OrtSparseFormat_536871366)
  ONNXType_536871365 = (when declared(ONNXType):
    when ownSizeof(ONNXType) != ownSizeof(ONNXType_536871364):
      static :
        warning("Declaration of " & "ONNXType" &
            " exists but with different size")
    ONNXType
   else:
    ONNXType_536871364)
  OrtOpAttrType_536871383 = (when declared(OrtOpAttrType):
    when ownSizeof(OrtOpAttrType) != ownSizeof(OrtOpAttrType_536871382):
      static :
        warning("Declaration of " & "OrtOpAttrType" &
            " exists but with different size")
    OrtOpAttrType
   else:
    OrtOpAttrType_536871382)
  struct_OrtTensorRTProviderOptions_536871500 = (when declared(
      struct_OrtTensorRTProviderOptions):
    when ownSizeof(struct_OrtTensorRTProviderOptions) !=
        ownSizeof(struct_OrtTensorRTProviderOptions_536871499):
      static :
        warning("Declaration of " & "struct_OrtTensorRTProviderOptions" &
            " exists but with different size")
    struct_OrtTensorRTProviderOptions
   else:
    struct_OrtTensorRTProviderOptions_536871499)
  OrtOpenVINOProviderOptions_536871510 = (when declared(
      OrtOpenVINOProviderOptions):
    when ownSizeof(OrtOpenVINOProviderOptions) !=
        ownSizeof(OrtOpenVINOProviderOptions_536871509):
      static :
        warning("Declaration of " & "OrtOpenVINOProviderOptions" &
            " exists but with different size")
    OrtOpenVINOProviderOptions
   else:
    OrtOpenVINOProviderOptions_536871509)
  OrtSparseFormat_536871369 = (when declared(OrtSparseFormat):
    when ownSizeof(OrtSparseFormat) != ownSizeof(OrtSparseFormat_536871368):
      static :
        warning("Declaration of " & "OrtSparseFormat" &
            " exists but with different size")
    OrtSparseFormat
   else:
    OrtSparseFormat_536871368)
  OrtOp_536871438 = (when declared(OrtOp):
    when ownSizeof(OrtOp) != ownSizeof(OrtOp_536871437):
      static :
        warning("Declaration of " & "OrtOp" & " exists but with different size")
    OrtOp
   else:
    OrtOp_536871437)
  OrtPrepackedWeightsContainer_536871428 = (when declared(
      OrtPrepackedWeightsContainer):
    when ownSizeof(OrtPrepackedWeightsContainer) !=
        ownSizeof(OrtPrepackedWeightsContainer_536871427):
      static :
        warning("Declaration of " & "OrtPrepackedWeightsContainer" &
            " exists but with different size")
    OrtPrepackedWeightsContainer
   else:
    OrtPrepackedWeightsContainer_536871427)
  OrtCustomOpDomain_536871411 = (when declared(OrtCustomOpDomain):
    when ownSizeof(OrtCustomOpDomain) != ownSizeof(OrtCustomOpDomain_536871410):
      static :
        warning("Declaration of " & "OrtCustomOpDomain" &
            " exists but with different size")
    OrtCustomOpDomain
   else:
    OrtCustomOpDomain_536871410)
  OrtArenaCfg_536871426 = (when declared(OrtArenaCfg):
    when ownSizeof(OrtArenaCfg) != ownSizeof(OrtArenaCfg_536871425):
      static :
        warning("Declaration of " & "OrtArenaCfg" &
            " exists but with different size")
    OrtArenaCfg
   else:
    OrtArenaCfg_536871425)
  OrtCANNProviderOptions_536871434 = (when declared(OrtCANNProviderOptions):
    when ownSizeof(OrtCANNProviderOptions) != ownSizeof(OrtCANNProviderOptions_536871433):
      static :
        warning("Declaration of " & "OrtCANNProviderOptions" &
            " exists but with different size")
    OrtCANNProviderOptions
   else:
    OrtCANNProviderOptions_536871433)
  OrtCudnnConvAlgoSearch_536871490 = (when declared(OrtCudnnConvAlgoSearch):
    when ownSizeof(OrtCudnnConvAlgoSearch) != ownSizeof(OrtCudnnConvAlgoSearch_536871489):
      static :
        warning("Declaration of " & "OrtCudnnConvAlgoSearch" &
            " exists but with different size")
    OrtCudnnConvAlgoSearch
   else:
    OrtCudnnConvAlgoSearch_536871489)
  OrtApi_536871512 = (when declared(OrtApi):
    when ownSizeof(OrtApi) != ownSizeof(OrtApi_536871511):
      static :
        warning("Declaration of " & "OrtApi" & " exists but with different size")
    OrtApi
   else:
    OrtApi_536871511)
  OrtSessionOptions_536871409 = (when declared(OrtSessionOptions):
    when ownSizeof(OrtSessionOptions) != ownSizeof(OrtSessionOptions_536871408):
      static :
        warning("Declaration of " & "OrtSessionOptions" &
            " exists but with different size")
    OrtSessionOptions
   else:
    OrtSessionOptions_536871408)
  OrtSequenceTypeInfo_536871405 = (when declared(OrtSequenceTypeInfo):
    when ownSizeof(OrtSequenceTypeInfo) != ownSizeof(OrtSequenceTypeInfo_536871404):
      static :
        warning("Declaration of " & "OrtSequenceTypeInfo" &
            " exists but with different size")
    OrtSequenceTypeInfo
   else:
    OrtSequenceTypeInfo_536871404)
  enum_ONNXType_536871363 = (when declared(enum_ONNXType):
    when ownSizeof(enum_ONNXType) != ownSizeof(enum_ONNXType_536871362):
      static :
        warning("Declaration of " & "enum_ONNXType" &
            " exists but with different size")
    enum_ONNXType
   else:
    enum_ONNXType_536871362)
  OrtSession_536871393 = (when declared(OrtSession):
    when ownSizeof(OrtSession) != ownSizeof(OrtSession_536871392):
      static :
        warning("Declaration of " & "OrtSession" &
            " exists but with different size")
    OrtSession
   else:
    OrtSession_536871392)
  struct_OrtApiBase_536871518 = (when declared(struct_OrtApiBase):
    when ownSizeof(struct_OrtApiBase) != ownSizeof(struct_OrtApiBase_536871517):
      static :
        warning("Declaration of " & "struct_OrtApiBase" &
            " exists but with different size")
    struct_OrtApiBase
   else:
    struct_OrtApiBase_536871517)
  OrtOptionalTypeInfo_536871407 = (when declared(OrtOptionalTypeInfo):
    when ownSizeof(OrtOptionalTypeInfo) != ownSizeof(OrtOptionalTypeInfo_536871406):
      static :
        warning("Declaration of " & "OrtOptionalTypeInfo" &
            " exists but with different size")
    OrtOptionalTypeInfo
   else:
    OrtOptionalTypeInfo_536871406)
  OrtThreadingOptions_536871424 = (when declared(OrtThreadingOptions):
    when ownSizeof(OrtThreadingOptions) != ownSizeof(OrtThreadingOptions_536871423):
      static :
        warning("Declaration of " & "OrtThreadingOptions" &
            " exists but with different size")
    OrtThreadingOptions
   else:
    OrtThreadingOptions_536871423)
  enum_OrtAllocatorType_536871476 = (when declared(enum_OrtAllocatorType):
    when ownSizeof(enum_OrtAllocatorType) != ownSizeof(enum_OrtAllocatorType_536871475):
      static :
        warning("Declaration of " & "enum_OrtAllocatorType" &
            " exists but with different size")
    enum_OrtAllocatorType
   else:
    enum_OrtAllocatorType_536871475)
  enum_ONNXTensorElementDataType_536871359 = (when declared(
      enum_ONNXTensorElementDataType):
    when ownSizeof(enum_ONNXTensorElementDataType) !=
        ownSizeof(enum_ONNXTensorElementDataType_536871358):
      static :
        warning("Declaration of " & "enum_ONNXTensorElementDataType" &
            " exists but with different size")
    enum_ONNXTensorElementDataType
   else:
    enum_ONNXTensorElementDataType_536871358)
  ONNXTensorElementDataType_536871361 = (when declared(ONNXTensorElementDataType):
    when ownSizeof(ONNXTensorElementDataType) !=
        ownSizeof(ONNXTensorElementDataType_536871360):
      static :
        warning("Declaration of " & "ONNXTensorElementDataType" &
            " exists but with different size")
    ONNXTensorElementDataType
   else:
    ONNXTensorElementDataType_536871360)
  OrtIoBinding_536871391 = (when declared(OrtIoBinding):
    when ownSizeof(OrtIoBinding) != ownSizeof(OrtIoBinding_536871390):
      static :
        warning("Declaration of " & "OrtIoBinding" &
            " exists but with different size")
    OrtIoBinding
   else:
    OrtIoBinding_536871390)
  OrtKernelInfo_536871468 = (when declared(OrtKernelInfo):
    when ownSizeof(OrtKernelInfo) != ownSizeof(OrtKernelInfo_536871467):
      static :
        warning("Declaration of " & "OrtKernelInfo" &
            " exists but with different size")
    OrtKernelInfo
   else:
    OrtKernelInfo_536871467)
  OrtRunOptions_536871397 = (when declared(OrtRunOptions):
    when ownSizeof(OrtRunOptions) != ownSizeof(OrtRunOptions_536871396):
      static :
        warning("Declaration of " & "OrtRunOptions" &
            " exists but with different size")
    OrtRunOptions
   else:
    OrtRunOptions_536871396)
  struct_OrtCUDAProviderOptions_536871492 = (when declared(
      struct_OrtCUDAProviderOptions):
    when ownSizeof(struct_OrtCUDAProviderOptions) !=
        ownSizeof(struct_OrtCUDAProviderOptions_536871491):
      static :
        warning("Declaration of " & "struct_OrtCUDAProviderOptions" &
            " exists but with different size")
    struct_OrtCUDAProviderOptions
   else:
    struct_OrtCUDAProviderOptions_536871491)
  OrtLanguageProjection_536871466 = (when declared(OrtLanguageProjection):
    when ownSizeof(OrtLanguageProjection) != ownSizeof(OrtLanguageProjection_536871465):
      static :
        warning("Declaration of " & "OrtLanguageProjection" &
            " exists but with different size")
    OrtLanguageProjection
   else:
    OrtLanguageProjection_536871465)
  OrtMemoryInfo_536871389 = (when declared(OrtMemoryInfo):
    when ownSizeof(OrtMemoryInfo) != ownSizeof(OrtMemoryInfo_536871388):
      static :
        warning("Declaration of " & "OrtMemoryInfo" &
            " exists but with different size")
    OrtMemoryInfo
   else:
    OrtMemoryInfo_536871388)
  OrtOpAttr_536871440 = (when declared(OrtOpAttr):
    when ownSizeof(OrtOpAttr) != ownSizeof(OrtOpAttr_536871439):
      static :
        warning("Declaration of " & "OrtOpAttr" &
            " exists but with different size")
    OrtOpAttr
   else:
    OrtOpAttr_536871439)
  OrtCustomThreadHandle_536871526 = (when declared(OrtCustomThreadHandle):
    when ownSizeof(OrtCustomThreadHandle) != ownSizeof(OrtCustomThreadHandle_536871525):
      static :
        warning("Declaration of " & "OrtCustomThreadHandle" &
            " exists but with different size")
    OrtCustomThreadHandle
   else:
    OrtCustomThreadHandle_536871525)
  OrtAllocatorType_536871478 = (when declared(OrtAllocatorType):
    when ownSizeof(OrtAllocatorType) != ownSizeof(OrtAllocatorType_536871477):
      static :
        warning("Declaration of " & "OrtAllocatorType" &
            " exists but with different size")
    OrtAllocatorType
   else:
    OrtAllocatorType_536871477)
  OrtTypeInfo_536871399 = (when declared(OrtTypeInfo):
    when ownSizeof(OrtTypeInfo) != ownSizeof(OrtTypeInfo_536871398):
      static :
        warning("Declaration of " & "OrtTypeInfo" &
            " exists but with different size")
    OrtTypeInfo
   else:
    OrtTypeInfo_536871398)
  OrtLoggingLevel_536871375 = (when declared(OrtLoggingLevel):
    when ownSizeof(OrtLoggingLevel) != ownSizeof(OrtLoggingLevel_536871374):
      static :
        warning("Declaration of " & "OrtLoggingLevel" &
            " exists but with different size")
    OrtLoggingLevel
   else:
    OrtLoggingLevel_536871374)
  enum_OrtOpAttrType_536871381 = (when declared(enum_OrtOpAttrType):
    when ownSizeof(enum_OrtOpAttrType) != ownSizeof(enum_OrtOpAttrType_536871380):
      static :
        warning("Declaration of " & "enum_OrtOpAttrType" &
            " exists but with different size")
    enum_OrtOpAttrType
   else:
    enum_OrtOpAttrType_536871380)
  enum_GraphOptimizationLevel_536871456 = (when declared(
      enum_GraphOptimizationLevel):
    when ownSizeof(enum_GraphOptimizationLevel) !=
        ownSizeof(enum_GraphOptimizationLevel_536871455):
      static :
        warning("Declaration of " & "enum_GraphOptimizationLevel" &
            " exists but with different size")
    enum_GraphOptimizationLevel
   else:
    enum_GraphOptimizationLevel_536871455)
  OrtMemoryInfoDeviceType_536871486 = (when declared(OrtMemoryInfoDeviceType):
    when ownSizeof(OrtMemoryInfoDeviceType) !=
        ownSizeof(OrtMemoryInfoDeviceType_536871485):
      static :
        warning("Declaration of " & "OrtMemoryInfoDeviceType" &
            " exists but with different size")
    OrtMemoryInfoDeviceType
   else:
    OrtMemoryInfoDeviceType_536871485)
  OrtModelMetadata_536871413 = (when declared(OrtModelMetadata):
    when ownSizeof(OrtModelMetadata) != ownSizeof(OrtModelMetadata_536871412):
      static :
        warning("Declaration of " & "OrtModelMetadata" &
            " exists but with different size")
    OrtModelMetadata
   else:
    OrtModelMetadata_536871412)
  OrtErrorCode_536871379 = (when declared(OrtErrorCode):
    when ownSizeof(OrtErrorCode) != ownSizeof(OrtErrorCode_536871378):
      static :
        warning("Declaration of " & "OrtErrorCode" &
            " exists but with different size")
    OrtErrorCode
   else:
    OrtErrorCode_536871378)
  enum_OrtLoggingLevel_536871373 = (when declared(enum_OrtLoggingLevel):
    when ownSizeof(enum_OrtLoggingLevel) != ownSizeof(enum_OrtLoggingLevel_536871372):
      static :
        warning("Declaration of " & "enum_OrtLoggingLevel" &
            " exists but with different size")
    enum_OrtLoggingLevel
   else:
    enum_OrtLoggingLevel_536871372)
  OrtLoggingFunction_536871454 = (when declared(OrtLoggingFunction):
    when ownSizeof(OrtLoggingFunction) != ownSizeof(OrtLoggingFunction_536871453):
      static :
        warning("Declaration of " & "OrtLoggingFunction" &
            " exists but with different size")
    OrtLoggingFunction
   else:
    OrtLoggingFunction_536871453)
  RegisterCustomOpsFn_536871532 = (when declared(RegisterCustomOpsFn):
    when ownSizeof(RegisterCustomOpsFn) != ownSizeof(RegisterCustomOpsFn_536871531):
      static :
        warning("Declaration of " & "RegisterCustomOpsFn" &
            " exists but with different size")
    RegisterCustomOpsFn
   else:
    RegisterCustomOpsFn_536871531)
  GraphOptimizationLevel_536871458 = (when declared(GraphOptimizationLevel):
    when ownSizeof(GraphOptimizationLevel) != ownSizeof(GraphOptimizationLevel_536871457):
      static :
        warning("Declaration of " & "GraphOptimizationLevel" &
            " exists but with different size")
    GraphOptimizationLevel
   else:
    GraphOptimizationLevel_536871457)
  struct_OrtMIGraphXProviderOptions_536871504 = (when declared(
      struct_OrtMIGraphXProviderOptions):
    when ownSizeof(struct_OrtMIGraphXProviderOptions) !=
        ownSizeof(struct_OrtMIGraphXProviderOptions_536871503):
      static :
        warning("Declaration of " & "struct_OrtMIGraphXProviderOptions" &
            " exists but with different size")
    struct_OrtMIGraphXProviderOptions
   else:
    struct_OrtMIGraphXProviderOptions_536871503)
  OrtTensorRTProviderOptionsV2_536871430 = (when declared(
      OrtTensorRTProviderOptionsV2):
    when ownSizeof(OrtTensorRTProviderOptionsV2) !=
        ownSizeof(OrtTensorRTProviderOptionsV2_536871429):
      static :
        warning("Declaration of " & "OrtTensorRTProviderOptionsV2" &
            " exists but with different size")
    OrtTensorRTProviderOptionsV2
   else:
    OrtTensorRTProviderOptionsV2_536871429)
  OrtTensorRTProviderOptions_536871502 = (when declared(
      OrtTensorRTProviderOptions):
    when ownSizeof(OrtTensorRTProviderOptions) !=
        ownSizeof(OrtTensorRTProviderOptions_536871501):
      static :
        warning("Declaration of " & "OrtTensorRTProviderOptions" &
            " exists but with different size")
    OrtTensorRTProviderOptions
   else:
    OrtTensorRTProviderOptions_536871501)
  struct_OrtCustomOp_536871474 = (when declared(struct_OrtCustomOp):
    when ownSizeof(struct_OrtCustomOp) != ownSizeof(struct_OrtCustomOp_536871473):
      static :
        warning("Declaration of " & "struct_OrtCustomOp" &
            " exists but with different size")
    struct_OrtCustomOp
   else:
    struct_OrtCustomOp_536871473)
  struct_OrtApi_536871514 = (when declared(struct_OrtApi):
    when ownSizeof(struct_OrtApi) != ownSizeof(struct_OrtApi_536871513):
      static :
        warning("Declaration of " & "struct_OrtApi" &
            " exists but with different size")
    struct_OrtApi
   else:
    struct_OrtApi_536871513)
  OrtEnv_536871385 = (when declared(OrtEnv):
    when ownSizeof(OrtEnv) != ownSizeof(OrtEnv_536871384):
      static :
        warning("Declaration of " & "OrtEnv" & " exists but with different size")
    OrtEnv
   else:
    OrtEnv_536871384)
  OrtCustomCreateThreadFn_536871528 = (when declared(OrtCustomCreateThreadFn):
    when ownSizeof(OrtCustomCreateThreadFn) !=
        ownSizeof(OrtCustomCreateThreadFn_536871527):
      static :
        warning("Declaration of " & "OrtCustomCreateThreadFn" &
            " exists but with different size")
    OrtCustomCreateThreadFn
   else:
    OrtCustomCreateThreadFn_536871527)
  OrtDnnlProviderOptions_536871436 = (when declared(OrtDnnlProviderOptions):
    when ownSizeof(OrtDnnlProviderOptions) != ownSizeof(OrtDnnlProviderOptions_536871435):
      static :
        warning("Declaration of " & "OrtDnnlProviderOptions" &
            " exists but with different size")
    OrtDnnlProviderOptions
   else:
    OrtDnnlProviderOptions_536871435)
  enum_OrtErrorCode_536871377 = (when declared(enum_OrtErrorCode):
    when ownSizeof(enum_OrtErrorCode) != ownSizeof(enum_OrtErrorCode_536871376):
      static :
        warning("Declaration of " & "enum_OrtErrorCode" &
            " exists but with different size")
    enum_OrtErrorCode
   else:
    enum_OrtErrorCode_536871376)
  struct_OrtCustomHandleType_536871524 = (when declared(
      struct_OrtCustomHandleType):
    when ownSizeof(struct_OrtCustomHandleType) !=
        ownSizeof(struct_OrtCustomHandleType_536871523):
      static :
        warning("Declaration of " & "struct_OrtCustomHandleType" &
            " exists but with different size")
    struct_OrtCustomHandleType
   else:
    struct_OrtCustomHandleType_536871523)
  enum_OrtMemoryInfoDeviceType_536871484 = (when declared(
      enum_OrtMemoryInfoDeviceType):
    when ownSizeof(enum_OrtMemoryInfoDeviceType) !=
        ownSizeof(enum_OrtMemoryInfoDeviceType_536871483):
      static :
        warning("Declaration of " & "enum_OrtMemoryInfoDeviceType" &
            " exists but with different size")
    enum_OrtMemoryInfoDeviceType
   else:
    enum_OrtMemoryInfoDeviceType_536871483)
  enum_OrtLanguageProjection_536871464 = (when declared(
      enum_OrtLanguageProjection):
    when ownSizeof(enum_OrtLanguageProjection) !=
        ownSizeof(enum_OrtLanguageProjection_536871463):
      static :
        warning("Declaration of " & "enum_OrtLanguageProjection" &
            " exists but with different size")
    enum_OrtLanguageProjection
   else:
    enum_OrtLanguageProjection_536871463)
  OrtCustomOp_536871472 = (when declared(OrtCustomOp):
    when ownSizeof(OrtCustomOp) != ownSizeof(OrtCustomOp_536871471):
      static :
        warning("Declaration of " & "OrtCustomOp" &
            " exists but with different size")
    OrtCustomOp
   else:
    OrtCustomOp_536871471)
  OrtShapeInferContext_536871444 = (when declared(OrtShapeInferContext):
    when ownSizeof(OrtShapeInferContext) != ownSizeof(OrtShapeInferContext_536871443):
      static :
        warning("Declaration of " & "OrtShapeInferContext" &
            " exists but with different size")
    OrtShapeInferContext
   else:
    OrtShapeInferContext_536871443)
  struct_OrtROCMProviderOptions_536871496 = (when declared(
      struct_OrtROCMProviderOptions):
    when ownSizeof(struct_OrtROCMProviderOptions) !=
        ownSizeof(struct_OrtROCMProviderOptions_536871495):
      static :
        warning("Declaration of " & "struct_OrtROCMProviderOptions" &
            " exists but with different size")
    struct_OrtROCMProviderOptions
   else:
    struct_OrtROCMProviderOptions_536871495)
  OrtMemType_536871482 = (when declared(OrtMemType):
    when ownSizeof(OrtMemType) != ownSizeof(OrtMemType_536871481):
      static :
        warning("Declaration of " & "OrtMemType" &
            " exists but with different size")
    OrtMemType
   else:
    OrtMemType_536871481)
  enum_OrtSparseIndicesFormat_536871371 = (when declared(
      enum_OrtSparseIndicesFormat):
    when ownSizeof(enum_OrtSparseIndicesFormat) !=
        ownSizeof(enum_OrtSparseIndicesFormat_536871370):
      static :
        warning("Declaration of " & "enum_OrtSparseIndicesFormat" &
            " exists but with different size")
    enum_OrtSparseIndicesFormat
   else:
    enum_OrtSparseIndicesFormat_536871370)
  OrtThreadWorkerFn_536871522 = (when declared(OrtThreadWorkerFn):
    when ownSizeof(OrtThreadWorkerFn) != ownSizeof(OrtThreadWorkerFn_536871521):
      static :
        warning("Declaration of " & "OrtThreadWorkerFn" &
            " exists but with different size")
    OrtThreadWorkerFn
   else:
    OrtThreadWorkerFn_536871521)
  OrtTrainingApi_536871516 = (when declared(OrtTrainingApi):
    when ownSizeof(OrtTrainingApi) != ownSizeof(OrtTrainingApi_536871515):
      static :
        warning("Declaration of " & "OrtTrainingApi" &
            " exists but with different size")
    OrtTrainingApi
   else:
    OrtTrainingApi_536871515)
  OrtTensorTypeAndShapeInfo_536871401 = (when declared(OrtTensorTypeAndShapeInfo):
    when ownSizeof(OrtTensorTypeAndShapeInfo) !=
        ownSizeof(OrtTensorTypeAndShapeInfo_536871400):
      static :
        warning("Declaration of " & "OrtTensorTypeAndShapeInfo" &
            " exists but with different size")
    OrtTensorTypeAndShapeInfo
   else:
    OrtTensorTypeAndShapeInfo_536871400)
  OrtThreadPoolParams_536871415 = (when declared(OrtThreadPoolParams):
    when ownSizeof(OrtThreadPoolParams) != ownSizeof(OrtThreadPoolParams_536871414):
      static :
        warning("Declaration of " & "OrtThreadPoolParams" &
            " exists but with different size")
    OrtThreadPoolParams
   else:
    OrtThreadPoolParams_536871414)
  enum_ExecutionMode_536871460 = (when declared(enum_ExecutionMode):
    when ownSizeof(enum_ExecutionMode) != ownSizeof(enum_ExecutionMode_536871459):
      static :
        warning("Declaration of " & "enum_ExecutionMode" &
            " exists but with different size")
    enum_ExecutionMode
   else:
    enum_ExecutionMode_536871459)
  OrtCustomOpInputOutputCharacteristic_536871538 = (when declared(
      OrtCustomOpInputOutputCharacteristic):
    when ownSizeof(OrtCustomOpInputOutputCharacteristic) !=
        ownSizeof(OrtCustomOpInputOutputCharacteristic_536871537):
      static :
        warning("Declaration of " & "OrtCustomOpInputOutputCharacteristic" &
            " exists but with different size")
    OrtCustomOpInputOutputCharacteristic
   else:
    OrtCustomOpInputOutputCharacteristic_536871537)
  OrtStatus_536871387 = (when declared(OrtStatus):
    when ownSizeof(OrtStatus) != ownSizeof(OrtStatus_536871386):
      static :
        warning("Declaration of " & "OrtStatus" &
            " exists but with different size")
    OrtStatus
   else:
    OrtStatus_536871386)
when not declared(OrtKernelContext):
  type
    OrtKernelContext* = OrtKernelContext_536871469
else:
  static :
    hint("Declaration of " & "OrtKernelContext" &
        " already exists, not redeclaring")
when not declared(OrtMIGraphXProviderOptions):
  type
    OrtMIGraphXProviderOptions* = OrtMIGraphXProviderOptions_536871505
else:
  static :
    hint("Declaration of " & "OrtMIGraphXProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtAllocator):
  type
    OrtAllocator* = OrtAllocator_536871451
else:
  static :
    hint("Declaration of " & "OrtAllocator" & " already exists, not redeclaring")
when not declared(struct_OrtAllocator):
  type
    struct_OrtAllocator* = struct_OrtAllocator_536871449
else:
  static :
    hint("Declaration of " & "struct_OrtAllocator" &
        " already exists, not redeclaring")
when not declared(OrtLoraAdapter):
  type
    OrtLoraAdapter* = OrtLoraAdapter_536871445
else:
  static :
    hint("Declaration of " & "OrtLoraAdapter" &
        " already exists, not redeclaring")
when not declared(enum_OrtCudnnConvAlgoSearch):
  type
    enum_OrtCudnnConvAlgoSearch* = enum_OrtCudnnConvAlgoSearch_536871487
else:
  static :
    hint("Declaration of " & "enum_OrtCudnnConvAlgoSearch" &
        " already exists, not redeclaring")
when not declared(struct_OrtOpenVINOProviderOptions):
  type
    struct_OrtOpenVINOProviderOptions* = struct_OrtOpenVINOProviderOptions_536871507
else:
  static :
    hint("Declaration of " & "struct_OrtOpenVINOProviderOptions" &
        " already exists, not redeclaring")
when not declared(enum_OrtMemType):
  type
    enum_OrtMemType* = enum_OrtMemType_536871479
else:
  static :
    hint("Declaration of " & "enum_OrtMemType" &
        " already exists, not redeclaring")
when not declared(OrtROCMProviderOptions):
  type
    OrtROCMProviderOptions* = OrtROCMProviderOptions_536871497
else:
  static :
    hint("Declaration of " & "OrtROCMProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtStatusPtr):
  type
    OrtStatusPtr* = OrtStatusPtr_536871447
else:
  static :
    hint("Declaration of " & "OrtStatusPtr" & " already exists, not redeclaring")
when not declared(RunAsyncCallbackFn):
  type
    RunAsyncCallbackFn* = RunAsyncCallbackFn_536871533
else:
  static :
    hint("Declaration of " & "RunAsyncCallbackFn" &
        " already exists, not redeclaring")
when not declared(ExecutionMode):
  type
    ExecutionMode* = ExecutionMode_536871461
else:
  static :
    hint("Declaration of " & "ExecutionMode" &
        " already exists, not redeclaring")
when not declared(OrtLogger):
  type
    OrtLogger* = OrtLogger_536871441
else:
  static :
    hint("Declaration of " & "OrtLogger" & " already exists, not redeclaring")
when not declared(OrtCUDAProviderOptions):
  type
    OrtCUDAProviderOptions* = OrtCUDAProviderOptions_536871493
else:
  static :
    hint("Declaration of " & "OrtCUDAProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtCustomJoinThreadFn):
  type
    OrtCustomJoinThreadFn* = OrtCustomJoinThreadFn_536871529
else:
  static :
    hint("Declaration of " & "OrtCustomJoinThreadFn" &
        " already exists, not redeclaring")
when not declared(OrtValue):
  type
    OrtValue* = OrtValue_536871394
else:
  static :
    hint("Declaration of " & "OrtValue" & " already exists, not redeclaring")
when not declared(OrtCUDAProviderOptionsV2):
  type
    OrtCUDAProviderOptionsV2* = OrtCUDAProviderOptionsV2_536871431
else:
  static :
    hint("Declaration of " & "OrtCUDAProviderOptionsV2" &
        " already exists, not redeclaring")
when not declared(enum_OrtCustomOpInputOutputCharacteristic):
  type
    enum_OrtCustomOpInputOutputCharacteristic* = enum_OrtCustomOpInputOutputCharacteristic_536871535
else:
  static :
    hint("Declaration of " & "enum_OrtCustomOpInputOutputCharacteristic" &
        " already exists, not redeclaring")
when not declared(OrtApiBase):
  type
    OrtApiBase* = OrtApiBase_536871519
else:
  static :
    hint("Declaration of " & "OrtApiBase" & " already exists, not redeclaring")
when not declared(OrtMapTypeInfo):
  type
    OrtMapTypeInfo* = OrtMapTypeInfo_536871402
else:
  static :
    hint("Declaration of " & "OrtMapTypeInfo" &
        " already exists, not redeclaring")
when not declared(enum_OrtSparseFormat):
  type
    enum_OrtSparseFormat* = enum_OrtSparseFormat_536871366
else:
  static :
    hint("Declaration of " & "enum_OrtSparseFormat" &
        " already exists, not redeclaring")
when not declared(ONNXType):
  type
    ONNXType* = ONNXType_536871364
else:
  static :
    hint("Declaration of " & "ONNXType" & " already exists, not redeclaring")
when not declared(OrtOpAttrType):
  type
    OrtOpAttrType* = OrtOpAttrType_536871382
else:
  static :
    hint("Declaration of " & "OrtOpAttrType" &
        " already exists, not redeclaring")
when not declared(struct_OrtTensorRTProviderOptions):
  type
    struct_OrtTensorRTProviderOptions* = struct_OrtTensorRTProviderOptions_536871499
else:
  static :
    hint("Declaration of " & "struct_OrtTensorRTProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtOpenVINOProviderOptions):
  type
    OrtOpenVINOProviderOptions* = OrtOpenVINOProviderOptions_536871509
else:
  static :
    hint("Declaration of " & "OrtOpenVINOProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtSparseFormat):
  type
    OrtSparseFormat* = OrtSparseFormat_536871368
else:
  static :
    hint("Declaration of " & "OrtSparseFormat" &
        " already exists, not redeclaring")
when not declared(OrtOp):
  type
    OrtOp* = OrtOp_536871437
else:
  static :
    hint("Declaration of " & "OrtOp" & " already exists, not redeclaring")
when not declared(OrtPrepackedWeightsContainer):
  type
    OrtPrepackedWeightsContainer* = OrtPrepackedWeightsContainer_536871427
else:
  static :
    hint("Declaration of " & "OrtPrepackedWeightsContainer" &
        " already exists, not redeclaring")
when not declared(OrtCustomOpDomain):
  type
    OrtCustomOpDomain* = OrtCustomOpDomain_536871410
else:
  static :
    hint("Declaration of " & "OrtCustomOpDomain" &
        " already exists, not redeclaring")
when not declared(OrtArenaCfg):
  type
    OrtArenaCfg* = OrtArenaCfg_536871425
else:
  static :
    hint("Declaration of " & "OrtArenaCfg" & " already exists, not redeclaring")
when not declared(OrtCANNProviderOptions):
  type
    OrtCANNProviderOptions* = OrtCANNProviderOptions_536871433
else:
  static :
    hint("Declaration of " & "OrtCANNProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtCudnnConvAlgoSearch):
  type
    OrtCudnnConvAlgoSearch* = OrtCudnnConvAlgoSearch_536871489
else:
  static :
    hint("Declaration of " & "OrtCudnnConvAlgoSearch" &
        " already exists, not redeclaring")
when not declared(OrtApi):
  type
    OrtApi* = OrtApi_536871511
else:
  static :
    hint("Declaration of " & "OrtApi" & " already exists, not redeclaring")
when not declared(OrtSessionOptions):
  type
    OrtSessionOptions* = OrtSessionOptions_536871408
else:
  static :
    hint("Declaration of " & "OrtSessionOptions" &
        " already exists, not redeclaring")
when not declared(OrtSequenceTypeInfo):
  type
    OrtSequenceTypeInfo* = OrtSequenceTypeInfo_536871404
else:
  static :
    hint("Declaration of " & "OrtSequenceTypeInfo" &
        " already exists, not redeclaring")
when not declared(enum_ONNXType):
  type
    enum_ONNXType* = enum_ONNXType_536871362
else:
  static :
    hint("Declaration of " & "enum_ONNXType" &
        " already exists, not redeclaring")
when not declared(OrtSession):
  type
    OrtSession* = OrtSession_536871392
else:
  static :
    hint("Declaration of " & "OrtSession" & " already exists, not redeclaring")
when not declared(struct_OrtApiBase):
  type
    struct_OrtApiBase* = struct_OrtApiBase_536871517
else:
  static :
    hint("Declaration of " & "struct_OrtApiBase" &
        " already exists, not redeclaring")
when not declared(OrtOptionalTypeInfo):
  type
    OrtOptionalTypeInfo* = OrtOptionalTypeInfo_536871406
else:
  static :
    hint("Declaration of " & "OrtOptionalTypeInfo" &
        " already exists, not redeclaring")
when not declared(OrtThreadingOptions):
  type
    OrtThreadingOptions* = OrtThreadingOptions_536871423
else:
  static :
    hint("Declaration of " & "OrtThreadingOptions" &
        " already exists, not redeclaring")
when not declared(enum_OrtAllocatorType):
  type
    enum_OrtAllocatorType* = enum_OrtAllocatorType_536871475
else:
  static :
    hint("Declaration of " & "enum_OrtAllocatorType" &
        " already exists, not redeclaring")
when not declared(enum_ONNXTensorElementDataType):
  type
    enum_ONNXTensorElementDataType* = enum_ONNXTensorElementDataType_536871358
else:
  static :
    hint("Declaration of " & "enum_ONNXTensorElementDataType" &
        " already exists, not redeclaring")
when not declared(ONNXTensorElementDataType):
  type
    ONNXTensorElementDataType* = ONNXTensorElementDataType_536871360
else:
  static :
    hint("Declaration of " & "ONNXTensorElementDataType" &
        " already exists, not redeclaring")
when not declared(OrtIoBinding):
  type
    OrtIoBinding* = OrtIoBinding_536871390
else:
  static :
    hint("Declaration of " & "OrtIoBinding" & " already exists, not redeclaring")
when not declared(OrtKernelInfo):
  type
    OrtKernelInfo* = OrtKernelInfo_536871467
else:
  static :
    hint("Declaration of " & "OrtKernelInfo" &
        " already exists, not redeclaring")
when not declared(OrtRunOptions):
  type
    OrtRunOptions* = OrtRunOptions_536871396
else:
  static :
    hint("Declaration of " & "OrtRunOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtCUDAProviderOptions):
  type
    struct_OrtCUDAProviderOptions* = struct_OrtCUDAProviderOptions_536871491
else:
  static :
    hint("Declaration of " & "struct_OrtCUDAProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtLanguageProjection):
  type
    OrtLanguageProjection* = OrtLanguageProjection_536871465
else:
  static :
    hint("Declaration of " & "OrtLanguageProjection" &
        " already exists, not redeclaring")
when not declared(OrtMemoryInfo):
  type
    OrtMemoryInfo* = OrtMemoryInfo_536871388
else:
  static :
    hint("Declaration of " & "OrtMemoryInfo" &
        " already exists, not redeclaring")
when not declared(OrtOpAttr):
  type
    OrtOpAttr* = OrtOpAttr_536871439
else:
  static :
    hint("Declaration of " & "OrtOpAttr" & " already exists, not redeclaring")
when not declared(OrtCustomThreadHandle):
  type
    OrtCustomThreadHandle* = OrtCustomThreadHandle_536871525
else:
  static :
    hint("Declaration of " & "OrtCustomThreadHandle" &
        " already exists, not redeclaring")
when not declared(OrtAllocatorType):
  type
    OrtAllocatorType* = OrtAllocatorType_536871477
else:
  static :
    hint("Declaration of " & "OrtAllocatorType" &
        " already exists, not redeclaring")
when not declared(OrtTypeInfo):
  type
    OrtTypeInfo* = OrtTypeInfo_536871398
else:
  static :
    hint("Declaration of " & "OrtTypeInfo" & " already exists, not redeclaring")
when not declared(OrtLoggingLevel):
  type
    OrtLoggingLevel* = OrtLoggingLevel_536871374
else:
  static :
    hint("Declaration of " & "OrtLoggingLevel" &
        " already exists, not redeclaring")
when not declared(enum_OrtOpAttrType):
  type
    enum_OrtOpAttrType* = enum_OrtOpAttrType_536871380
else:
  static :
    hint("Declaration of " & "enum_OrtOpAttrType" &
        " already exists, not redeclaring")
when not declared(enum_GraphOptimizationLevel):
  type
    enum_GraphOptimizationLevel* = enum_GraphOptimizationLevel_536871455
else:
  static :
    hint("Declaration of " & "enum_GraphOptimizationLevel" &
        " already exists, not redeclaring")
when not declared(OrtMemoryInfoDeviceType):
  type
    OrtMemoryInfoDeviceType* = OrtMemoryInfoDeviceType_536871485
else:
  static :
    hint("Declaration of " & "OrtMemoryInfoDeviceType" &
        " already exists, not redeclaring")
when not declared(OrtModelMetadata):
  type
    OrtModelMetadata* = OrtModelMetadata_536871412
else:
  static :
    hint("Declaration of " & "OrtModelMetadata" &
        " already exists, not redeclaring")
when not declared(OrtErrorCode):
  type
    OrtErrorCode* = OrtErrorCode_536871378
else:
  static :
    hint("Declaration of " & "OrtErrorCode" & " already exists, not redeclaring")
when not declared(enum_OrtLoggingLevel):
  type
    enum_OrtLoggingLevel* = enum_OrtLoggingLevel_536871372
else:
  static :
    hint("Declaration of " & "enum_OrtLoggingLevel" &
        " already exists, not redeclaring")
when not declared(OrtLoggingFunction):
  type
    OrtLoggingFunction* = OrtLoggingFunction_536871453
else:
  static :
    hint("Declaration of " & "OrtLoggingFunction" &
        " already exists, not redeclaring")
when not declared(RegisterCustomOpsFn):
  type
    RegisterCustomOpsFn* = RegisterCustomOpsFn_536871531
else:
  static :
    hint("Declaration of " & "RegisterCustomOpsFn" &
        " already exists, not redeclaring")
when not declared(GraphOptimizationLevel):
  type
    GraphOptimizationLevel* = GraphOptimizationLevel_536871457
else:
  static :
    hint("Declaration of " & "GraphOptimizationLevel" &
        " already exists, not redeclaring")
when not declared(struct_OrtMIGraphXProviderOptions):
  type
    struct_OrtMIGraphXProviderOptions* = struct_OrtMIGraphXProviderOptions_536871503
else:
  static :
    hint("Declaration of " & "struct_OrtMIGraphXProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtTensorRTProviderOptionsV2):
  type
    OrtTensorRTProviderOptionsV2* = OrtTensorRTProviderOptionsV2_536871429
else:
  static :
    hint("Declaration of " & "OrtTensorRTProviderOptionsV2" &
        " already exists, not redeclaring")
when not declared(OrtTensorRTProviderOptions):
  type
    OrtTensorRTProviderOptions* = OrtTensorRTProviderOptions_536871501
else:
  static :
    hint("Declaration of " & "OrtTensorRTProviderOptions" &
        " already exists, not redeclaring")
when not declared(struct_OrtCustomOp):
  type
    struct_OrtCustomOp* = struct_OrtCustomOp_536871473
else:
  static :
    hint("Declaration of " & "struct_OrtCustomOp" &
        " already exists, not redeclaring")
when not declared(struct_OrtApi):
  type
    struct_OrtApi* = struct_OrtApi_536871513
else:
  static :
    hint("Declaration of " & "struct_OrtApi" &
        " already exists, not redeclaring")
when not declared(OrtEnv):
  type
    OrtEnv* = OrtEnv_536871384
else:
  static :
    hint("Declaration of " & "OrtEnv" & " already exists, not redeclaring")
when not declared(OrtCustomCreateThreadFn):
  type
    OrtCustomCreateThreadFn* = OrtCustomCreateThreadFn_536871527
else:
  static :
    hint("Declaration of " & "OrtCustomCreateThreadFn" &
        " already exists, not redeclaring")
when not declared(OrtDnnlProviderOptions):
  type
    OrtDnnlProviderOptions* = OrtDnnlProviderOptions_536871435
else:
  static :
    hint("Declaration of " & "OrtDnnlProviderOptions" &
        " already exists, not redeclaring")
when not declared(enum_OrtErrorCode):
  type
    enum_OrtErrorCode* = enum_OrtErrorCode_536871376
else:
  static :
    hint("Declaration of " & "enum_OrtErrorCode" &
        " already exists, not redeclaring")
when not declared(struct_OrtCustomHandleType):
  type
    struct_OrtCustomHandleType* = struct_OrtCustomHandleType_536871523
else:
  static :
    hint("Declaration of " & "struct_OrtCustomHandleType" &
        " already exists, not redeclaring")
when not declared(enum_OrtMemoryInfoDeviceType):
  type
    enum_OrtMemoryInfoDeviceType* = enum_OrtMemoryInfoDeviceType_536871483
else:
  static :
    hint("Declaration of " & "enum_OrtMemoryInfoDeviceType" &
        " already exists, not redeclaring")
when not declared(enum_OrtLanguageProjection):
  type
    enum_OrtLanguageProjection* = enum_OrtLanguageProjection_536871463
else:
  static :
    hint("Declaration of " & "enum_OrtLanguageProjection" &
        " already exists, not redeclaring")
when not declared(OrtCustomOp):
  type
    OrtCustomOp* = OrtCustomOp_536871471
else:
  static :
    hint("Declaration of " & "OrtCustomOp" & " already exists, not redeclaring")
when not declared(OrtShapeInferContext):
  type
    OrtShapeInferContext* = OrtShapeInferContext_536871443
else:
  static :
    hint("Declaration of " & "OrtShapeInferContext" &
        " already exists, not redeclaring")
when not declared(struct_OrtROCMProviderOptions):
  type
    struct_OrtROCMProviderOptions* = struct_OrtROCMProviderOptions_536871495
else:
  static :
    hint("Declaration of " & "struct_OrtROCMProviderOptions" &
        " already exists, not redeclaring")
when not declared(OrtMemType):
  type
    OrtMemType* = OrtMemType_536871481
else:
  static :
    hint("Declaration of " & "OrtMemType" & " already exists, not redeclaring")
when not declared(enum_OrtSparseIndicesFormat):
  type
    enum_OrtSparseIndicesFormat* = enum_OrtSparseIndicesFormat_536871370
else:
  static :
    hint("Declaration of " & "enum_OrtSparseIndicesFormat" &
        " already exists, not redeclaring")
when not declared(OrtThreadWorkerFn):
  type
    OrtThreadWorkerFn* = OrtThreadWorkerFn_536871521
else:
  static :
    hint("Declaration of " & "OrtThreadWorkerFn" &
        " already exists, not redeclaring")
when not declared(OrtTrainingApi):
  type
    OrtTrainingApi* = OrtTrainingApi_536871515
else:
  static :
    hint("Declaration of " & "OrtTrainingApi" &
        " already exists, not redeclaring")
when not declared(OrtTensorTypeAndShapeInfo):
  type
    OrtTensorTypeAndShapeInfo* = OrtTensorTypeAndShapeInfo_536871400
else:
  static :
    hint("Declaration of " & "OrtTensorTypeAndShapeInfo" &
        " already exists, not redeclaring")
when not declared(OrtThreadPoolParams):
  type
    OrtThreadPoolParams* = OrtThreadPoolParams_536871414
else:
  static :
    hint("Declaration of " & "OrtThreadPoolParams" &
        " already exists, not redeclaring")
when not declared(enum_ExecutionMode):
  type
    enum_ExecutionMode* = enum_ExecutionMode_536871459
else:
  static :
    hint("Declaration of " & "enum_ExecutionMode" &
        " already exists, not redeclaring")
when not declared(OrtCustomOpInputOutputCharacteristic):
  type
    OrtCustomOpInputOutputCharacteristic* = OrtCustomOpInputOutputCharacteristic_536871537
else:
  static :
    hint("Declaration of " & "OrtCustomOpInputOutputCharacteristic" &
        " already exists, not redeclaring")
when not declared(OrtStatus):
  type
    OrtStatus* = OrtStatus_536871386
else:
  static :
    hint("Declaration of " & "OrtStatus" & " already exists, not redeclaring")
when not declared(ORT_API_VERSION):
  when 20 is static:
    const
      ORT_API_VERSION* = 20  ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:41:9
  else:
    let ORT_API_VERSION* = 20 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/onnxruntime/onnxruntime_c_api.h:41:9
else:
  static :
    hint("Declaration of " & "ORT_API_VERSION" &
        " already exists, not redeclaring")
when not declared(OrtGetApiBase):
  proc OrtGetApiBase*(): ptr OrtApiBase_536871520 {.cdecl,
      importc: "OrtGetApiBase".}
else:
  static :
    hint("Declaration of " & "OrtGetApiBase" &
        " already exists, not redeclaring")
when not declared(OrtSessionOptionsAppendExecutionProvider_CUDA):
  proc OrtSessionOptionsAppendExecutionProvider_CUDA*(
      options: ptr OrtSessionOptions_536871409; device_id: cint): OrtStatusPtr_536871448 {.
      cdecl, importc: "OrtSessionOptionsAppendExecutionProvider_CUDA".}
else:
  static :
    hint("Declaration of " & "OrtSessionOptionsAppendExecutionProvider_CUDA" &
        " already exists, not redeclaring")
when not declared(OrtSessionOptionsAppendExecutionProvider_ROCM):
  proc OrtSessionOptionsAppendExecutionProvider_ROCM*(
      options: ptr OrtSessionOptions_536871409; device_id: cint): OrtStatusPtr_536871448 {.
      cdecl, importc: "OrtSessionOptionsAppendExecutionProvider_ROCM".}
else:
  static :
    hint("Declaration of " & "OrtSessionOptionsAppendExecutionProvider_ROCM" &
        " already exists, not redeclaring")
when not declared(OrtSessionOptionsAppendExecutionProvider_MIGraphX):
  proc OrtSessionOptionsAppendExecutionProvider_MIGraphX*(
      options: ptr OrtSessionOptions_536871409; device_id: cint): OrtStatusPtr_536871448 {.
      cdecl, importc: "OrtSessionOptionsAppendExecutionProvider_MIGraphX".}
else:
  static :
    hint("Declaration of " & "OrtSessionOptionsAppendExecutionProvider_MIGraphX" &
        " already exists, not redeclaring")
when not declared(OrtSessionOptionsAppendExecutionProvider_Dnnl):
  proc OrtSessionOptionsAppendExecutionProvider_Dnnl*(
      options: ptr OrtSessionOptions_536871409; use_arena: cint): OrtStatusPtr_536871448 {.
      cdecl, importc: "OrtSessionOptionsAppendExecutionProvider_Dnnl".}
else:
  static :
    hint("Declaration of " & "OrtSessionOptionsAppendExecutionProvider_Dnnl" &
        " already exists, not redeclaring")
when not declared(OrtSessionOptionsAppendExecutionProvider_Tensorrt):
  proc OrtSessionOptionsAppendExecutionProvider_Tensorrt*(
      options: ptr OrtSessionOptions_536871409; device_id: cint): OrtStatusPtr_536871448 {.
      cdecl, importc: "OrtSessionOptionsAppendExecutionProvider_Tensorrt".}
else:
  static :
    hint("Declaration of " & "OrtSessionOptionsAppendExecutionProvider_Tensorrt" &
        " already exists, not redeclaring")