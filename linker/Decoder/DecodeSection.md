---
title: DecodeSection
---

## Types

Type declarations included in the DecodeSection module.

### DecodeSection.**WasmSection**

```grain
enum WasmSection {
  CustomSection(Stream.Stream),
  TypeSection(Stream.Stream),
  ImportSection(Stream.Stream),
  FunctionSection(Stream.Stream),
  TableSection(Stream.Stream),
  MemorySection(Stream.Stream),
  GlobalSection(Stream.Stream),
  ExportSection(Stream.Stream),
  StartSection(Stream.Stream),
  ElementSection(Stream.Stream),
  CodeSection(Stream.Stream),
  DataSection(Stream.Stream),
  DataCountSection(Stream.Stream),
}
```

### DecodeSection.**CodeReference**

```grain
enum CodeReference {
  FuncRef(Number),
  TypeRef(Number),
  GlobalRef(Number),
}
```

### DecodeSection.**LinkingInfo**

```grain
record LinkingInfo {
  importIdentifier: String,
  functionOffsetGlobal: Number,
  codeReferences: List<List<CodeReference>>,
}
```

## Values

Functions and constants included in the DecodeSection module.

### DecodeSection.**getSectionStream**

```grain
getSectionStream :
  (wasmSectionID: Number, wasmSections: List<WasmSection>) => Stream.Stream
```

### DecodeSection.**getLinkingInfoStream**

```grain
getLinkingInfoStream : (wasmSections: List<WasmSection>) => Stream.Stream
```

### DecodeSection.**decodeSection**

```grain
decodeSection : (wasmStream: Stream.Stream) => WasmSection
```

### DecodeSection.**decodeFile**

```grain
decodeFile : (wasmStream: Stream.Stream) => List<WasmSection>
```

### DecodeSection.**decodeLinkingSection**

```grain
decodeLinkingSection : (wasmSections: List<WasmSection>) => LinkingInfo
```

### DecodeSection.**decodeImportSection**

```grain
decodeImportSection :
  (wasmSections: List<WasmSection>) => List<WasmDecoder.WasmImport>
```

### DecodeSection.**decodeExportSection**

```grain
decodeExportSection :
  (wasmSections: List<WasmSection>) => List<WasmDecoder.WasmExport>
```

