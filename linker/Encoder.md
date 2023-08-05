---
title: Encoder
---

## Values

Functions and constants included in the Encoder module.

### Encoder.**encodeUIntLeb128**

```grain
encodeUIntLeb128 : (value: Number) => List<Number>
```

### Encoder.**_encodeString**

```grain
_encodeString : (str: String) => List<Number>
```

### Encoder.**encodeString**

```grain
encodeString : (str: String) => List<Number>
```

### Encoder.**encodeWasmType**

```grain
encodeWasmType : (wasmType: WasmDecoder.WasmType) => List<Number>
```

### Encoder.**encodeImport**

```grain
encodeImport :
  (importModule: String, importName: String,
   importDescription: WasmDecoder.WasmImportDescription) => List<Number>
```

