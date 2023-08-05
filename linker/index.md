---
title: Linker
---

## Values

Functions and constants included in the Linker module.

### Linker.**link**

```grain
link :
  (entryFile: String, fileReader: (String => Result<Bytes, String>),
   pathAbsolute: ((String, String) => String)) => Bytes
```

