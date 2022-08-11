(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param f32) (result i32)))
  (type (;4;) (func))
  (import "brisk:LinkingConstant" "$Brisk$Constant:moduleFunctionOffset" (global (;0;) i32))
  (import "$Brisk$./constants.br.wasm" "True0" (global (;1;) i32))
  (import "env" "print" (func (;0;) (type 0)))
  (import "env" "print" (func (;1;) (type 3)))
  (func (;2;) (type 1) (result i32)
    global.get 2
    global.get 3
    call_indirect (type 0)
    drop
    i32.const 3
    return)
  (func (;3;) (type 2)
    (local i32)
    global.get 2
    global.get 3
    call_indirect (type 0)
    drop
    global.get 1
    i32.const 1
    i32.add
    local.set 0)
  (func (;4;) (type 4)
    f32.const 0x1p+0 (;=1;)
    global.get 5
    call_indirect (type 3)
    drop
    i32.const 1
    global.set 6)
  (table (;0;) 3 funcref)
  (global (;2;) i32 (i32.const 0))
  (global (;3;) i32 (i32.const 0))
  (global (;4;) i32 (i32.const 0))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) (mut i32) (i32.const 0)))
