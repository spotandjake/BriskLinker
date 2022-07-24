(module $./Resources/Linker.br
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (import "brisk:LinkingConstant" "$Brisk$Constant:moduleFunctionOffset" (global (;0;) i32))
  (import "$Brisk$./runtime/constants.br" "True0" (global (;1;) i32))
  (import "env" "print" (func $print (type 0)))
  (func $_start (type 1)
    (local $test2 i32)
    global.get 2
    global.get 3
    call_indirect (type 0)
    drop
    i32.const 1
    local.set $test2)
  (table (;0;) 1 funcref)
  (memory (;0;) 1)
  (global (;2;) i32 (i32.const 0))
  (global (;3;) i32 (i32.const 0))
  (export "memory" (memory 0))
  (start $_start)
  (elem (;0;) (i32.const 0) func $print))
