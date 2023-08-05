---
title: WasmDecoder
---

## Types

Type declarations included in the WasmDecoder module.

### WasmDecoder.**WasmType**

```grain
enum WasmType {
  WasmI32,
  WasmI64,
  WasmF32,
  WasmF64,
  WasmFuncType(List<WasmType>, List<WasmType>),
}
```

### WasmDecoder.**WasmImportDescription**

```grain
enum WasmImportDescription {
  FunctionImport(Number),
  MemoryImport(Number, Option<Number>),
  GlobalImport(Bool, WasmType),
}
```

### WasmDecoder.**ExternKind**

```grain
enum ExternKind {
  FuncKind,
  TableKind,
  MemoryKind,
  GlobalKind,
}
```

### WasmDecoder.**WasmImport**

```grain
record WasmImport {
  importModule: String,
  importName: String,
  importKind: ExternKind,
  briskImport: Bool,
  localIndex: Option<Number>,
  importDescription: WasmImportDescription,
}
```

### WasmDecoder.**WasmExport**

```grain
record WasmExport {
  exportName: String,
  exportKind: ExternKind,
  briskExport: Bool,
  exportIndex: Number,
}
```

## Values

Functions and constants included in the WasmDecoder module.

### WasmDecoder.**decodeWasmType**

```grain
decodeWasmType : (stream: Stream.Stream) => WasmType
```

### WasmDecoder.**decodeTypeReference**

```grain
decodeTypeReference : (wasmTypes: List<a>, typeIndex: Number) => a
```

### WasmDecoder.**decodeWasmImport**

```grain
decodeWasmImport : (wasmStream: Stream.Stream) => WasmImport
```

### WasmDecoder.**decodeWasmExport**

```grain
decodeWasmExport : (wasmStream: Stream.Stream) => WasmExport
```

