---
title: Stream
---

## Types

Type declarations included in the Stream module.

### Stream.**Stream**

```grain
record Stream {
  data: Bytes,
  position: Number,
}
```

## Values

Functions and constants included in the Stream module.

### Stream.**empty**

```grain
empty : () => Stream
```

### Stream.**fromBytes**

```grain
fromBytes : (data: Bytes) => Stream
```

### Stream.**isEmpty**

```grain
isEmpty : (stream: Stream) => Bool
```

### Stream.**nextByte**

```grain
nextByte : (stream: Stream) => Number
```

### Stream.**nextUIntLEB128**

```grain
nextUIntLEB128 : (stream: Stream) => Number
```

### Stream.**nextString**

```grain
nextString : (stream: Stream) => String
```

### Stream.**length**

```grain
length : (stream: Stream) => Number
```

### Stream.**remainingLength**

```grain
remainingLength : (stream: Stream) => Number
```

### Stream.**nextSliceBytes**

```grain
nextSliceBytes : (stream: Stream, length: Number) => Bytes
```

### Stream.**nextStreamSlice**

```grain
nextStreamSlice : (stream: Stream, length: Number) => Stream
```

### Stream.**nextSliceList**

```grain
nextSliceList : (stream: Stream, length: Number) => List<Number>
```

### Stream.**remainingBytes**

```grain
remainingBytes : (stream: Stream) => Bytes
```

### Stream.**advance**

```grain
advance : (stream: Stream, length: Number) => Void
```

### Stream.**resetPointer**

```grain
resetPointer : (stream: Stream) => Stream
```

