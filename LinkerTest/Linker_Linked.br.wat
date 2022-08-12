(module
  (type (;0;) (func (param f32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func))
  (type (;5;) (func))
  (import "env" "print" (func (;0;) (type 0)))
  (import "brisk:LinkingConstant" "$Brisk$Constant:moduleFunctionOffset" (global (;0;) i32))
  (import "$Brisk$./constants.br.wasm" "True0" (global (;1;) i32))
  (import "env" "print" (func (;1;) (type 2)))
  (func (;2;) (type 1)
    f32.const 0x1p+0 (;=1;)
    global.get 3
    call_indirect (type 0)
    drop
    i32.const 1
    global.set 4)
  (func (;3;) (type 3) (result i32)
    global.get 5
    global.get 6
    call_indirect (type 2)
    drop
    i32.const 3
    return)
  (func (;4;) (type 4)
    (local i32)
    global.get 5
    global.get 6
    call_indirect (type 2)
    drop
    global.get 1
    i32.const 1
    i32.add
    local.set 0)
  (func (;5;) (type 5)
    call 2
    call 4)
  (table (;0;) 3 funcref)
  (memory (;0;) 2)
  (global (;2;) i32 (i32.const 0))
  (global (;3;) i32 (i32.const 0))
  (global (;4;) (mut i32) (i32.const 0))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 0))
  (start 5))
