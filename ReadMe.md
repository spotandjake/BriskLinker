# Brisk Linker
This program is a general purpose wasm linker built for the Brisk programming language but open enough to be used by other languages compiled to wasm.

# Current development state
Currently the linker works and is being used for Brisk but may not support all valid wasm files. The linker is not currently mature and may contain bugs so I wouldn't use it in production environments unless you are willing to accept the risk of it possibly breaking.

## TODO
+ [ ] Build Export Section
  + [ ] Only re-export the exports from main, but we do need to consider what todo with exports from other modules
+ [ ] Map Brisk Imports To Exports
+ [ ] Build Linking Info Section
  + [ ] Can almost just merge and order the Linking Info Sections from the incoming files, we do need to order and map the refs
+ [ ] Build Data Sections
+ [ ] Build Element Section
  + [x] Handle FuncRef ELements
  + [ ] Handle Other Element Types
+ [ ] Get A Path Library so we can properly absolutePaths
+ [ ] Get A Graph library and handle sorting dependencies
+ [ ] Create a Program that can be used to take a binary without linking info and apply linking info, this is useful for linking with other languages that do not have native support for the brisk linking standard, issues with that still come with managing memory and cross language data types, this also allows for linking to generic wat programs
+ [ ] Sort the dependencies using a dependency graph
+ [ ] Build data section
+ [ ] Build Linking Info Section
+ [ ] Write Tests
+ [ ] Merge Duplicate Types
+ [ ] When wasm gets multiple memories and tables give each module its own memory and table
+ [ ] Consider using features from the component module system
+ [ ] Table Imports, Memory Imports
+ [ ] Use Path, File, Graph, ArgumentParser library from grain - This should help a lot with stability and edge cases

# API
Using the linker requires including a few things in your wasm file.

Language imports - Files to be linked require using a format of `<MODULE_IDENTIFIER>Path`
Language Exports - Files to be linked require using a format of `<MODULE_IDENTIFIER>Path`
Offset Global - You must have an int32 global for storing the module table offset


The binary format is
```md
Bytes: [
  0x00, // Custom Section ID
  ...encodedString("LinkingInfo"), // Custom Section ID
  ...encodeString(<MODULE_IDENTIFIER>), // The Module Identifier
  ...encodeInt32(<TableOffsetGlobal>), // The Global Index of the TableOffsetGlobal
  ...codeReferences // References To The Places In Code which Need To Be Modified A Definition Of This is Below
]
```

The Format for `codeReferences` is shown below codeReferences include `funcRefs`, `typeRefs`, `globalRefs` relative to the function they relate to you only need references for these if they are in the functionSection

```
codeReferences: [
  ...encodeInt32(funcCount),
  ...functionReferences
]
```
functionReferences are layed out as follows below
```
functionReferences: [
  ...encodeInt32(funcRefsCount),
  ...encodeInt32(funcRefs), // encoded list of func refs
  ...encodeInt32(typeRefsCount),
  ...encodeInt32(typeRefs), // encoded list of type refs
  ...encodeInt32(globalRefsCount),
  ...encodeInt32(globalRefs), // encoded list of global refs
]
```
# Build
To build the program make sure you have [grain](https://grain-lang.org/) installed and run:
```
grain compile index.gr --release
```

# Using
The linker can be used with most wasm runtimes supporting [WASI](https://wasi.dev/), to use the grain runtime when you are compiling run:
```
grain index.gr "<fileIn>" "<fileOut>"
```
to use wasmTime run
```
wasmtime index.gr.wasm "<fileIn>" "<fileOut>"
```