# Brisk Linker
The Linker is a general purpose wasm linker built for the Brisk programming language it is designed to be fast while still keeping a simple api.
# How To Run
currently while in development just run `grain index.gr` in the future it will be `grain index.gr <entryFile>` 




# Linking Spec
The New Proposal Still suggests that we use imports and exports to represent brisk imports and export but instead of parsing through the code section we have a custom section that contains the positions in the binary that need to be recompiled and relevant information on their remapping.
# What Needs To Be Done To Link
File Decoding
  -> Split Wasm Binary Into Sections
Linking
  -> Create File Map
    -> Decode File
      -> Split Wasm Binary Into Sections
      -> Find Realloc Section
        -> If Section Exists
          -> Parse Section
          -> Add To File Data
        -> Else
          -> Throw Exception
      -> Find Import Section If Their Is An Import Section
      -> Parse Each Import Name
        -> If The Import Name Contains The Linking Identifier
        -> Parse The Import Module
        -> Read The File
        -> Decode File
        -> Add File To Parse Map
  -> Link Files
    -> Map Function Calls From Realloc Section
    -> Map Global Calls From Realloc Section
    -> Place Functions In Out Binary
    -> Place Other Sections In Binary
    -> Remap Name Section
    -> Set Import Values To Export Values
    -> Combine Start Sections
Parse Imports -> Replace Any Imports With References To Their Exported Elements
# What Needs To Be Done Compiler Side
# Data Required In This Section
LinkingSection
  -> Import Identifier
  -> Function Call Locations
  -> Global Reference Locations
  -> Type References
# Section Layout
The Linking Info Section Is A Custom Section With The Id Of LinkingInfo

# Still TODO
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