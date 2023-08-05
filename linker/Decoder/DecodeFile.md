---
title: DecodeFile
---

## Types

Type declarations included in the DecodeFile module.

### DecodeFile.**OffsetData**

```grain
record OffsetData {
  functionTableOffset: Number,
  importGlobalCount: Number,
  importFunctionCount: Number,
  globalMap: Map.Map<Number, Number>,
  funcMap: Map.Map<Number, Number>,
  typeMap: Map.Map<Number, Number>,
}
```

### DecodeFile.**FileData**

```grain
record FileData {
  modulePath: String,
  importIdentifier: String,
  isEntry: Bool,
  wasmSections: List<DecodeSection.WasmSection>,
  wasmBinary: Bytes,
  wasmImports: List<WasmDecoder.WasmImport>,
  wasmExports: List<WasmDecoder.WasmExport>,
  codeReferences: List<List<DecodeSection.CodeReference>>,
  dependencies: Map.Map<String, String>,
  offsetData: OffsetData,
}
```

## Values

Functions and constants included in the DecodeFile module.

### DecodeFile.**decodeFile**

```grain
decodeFile : (modulePath: String, wasmBinary: Bytes) => FileData
```

