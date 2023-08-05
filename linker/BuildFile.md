---
title: Builder
---

## Types

Type declarations included in the Builder module.

### Builder.**WasmBinary**

```grain
record WasmBinary {
  moduleName: String,
  funcNames: List<(Number, String)>,
  globalNames: List<(Number, String)>,
  localNames: List<(Number, Number, List<(Number, String)>)>,
  hasMemoryImport: Bool,
  customSections: List<Buffer.Buffer>,
  typeSection: List<(Number, Bytes)>,
  importSection: List<Buffer.Buffer>,
  funcSection: List<(Buffer.Buffer, Buffer.Buffer)>,
  tableSection: List<Buffer.Buffer>,
  memorySection: List<Buffer.Buffer>,
  globalSection: List<(Number, Bytes)>,
  exportSection: List<Buffer.Buffer>,
  startSection: Buffer.Buffer,
  elementSection: List<Buffer.Buffer>,
  dataSection: List<Buffer.Buffer>,
}
```

### Builder.**WasmData**

```grain
record WasmData {
  globalCount: Number,
  typeCount: Number,
  funcCount: Number,
}
```

## Values

Functions and constants included in the Builder module.

### Builder.**createCustomSection**

```grain
createCustomSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: a) => Void
```

### Builder.**createTypeSection**

```grain
createTypeSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: WasmData) => Void
```

### Builder.**createImportSection**

```grain
createImportSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: WasmData) => Void
```

### Builder.**createFuncSection**

```grain
createFuncSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: WasmData) => Void
```

### Builder.**createTableSection**

```grain
createTableSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: a) => Void
```

### Builder.**createMemorySection**

```grain
createMemorySection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: a) => Void
```

### Builder.**createGlobalSection**

```grain
createGlobalSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: WasmData) => Void
```

### Builder.**createExportSection**

```grain
createExportSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: a) => Void
```

### Builder.**createStartSection**

```grain
createStartSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: WasmData) => Void
```

### Builder.**createElementSection**

```grain
createElementSection :
  (wasmBinary: WasmBinary, dependencyChain: List<DecodeFile.FileData>,
   wasmData: a) => Void
```

### Builder.**createDataSection**

```grain
createDataSection : (wasmBinary: a, dependencyChain: b, wasmData: c) => a
```

### Builder.**buildBinary**

```grain
buildBinary : (wasmBinaryContent: WasmBinary) => Buffer.Buffer
```

### Builder.**buildFile**

```grain
buildFile : (dependencyChain: List<DecodeFile.FileData>) => Bytes
```

