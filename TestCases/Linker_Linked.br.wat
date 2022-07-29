(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param f32) (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func))
  (import "brisk:LinkingConstant" "$Brisk$Constant:moduleFunctionOffset" (global (;0;) i32))
  (import "env" "print" (func (;0;) (type 0)))
  (import "env" "print" (func (;1;) (type 2)))
  (func (;2;) (type 1)
    (local i32)
    global.get 2
    global.get 3
    call_indirect (type 0)
    drop
    i32.const 1
    local.set 0)
  (func (;3;) (type 3) (param i32) (result i32)
    i32.const 1
    return)
  (func (;4;) (type 4)
    (local i32)
    i32.const 1
    local.set 0
    f32.const 0x1p+0 (;=1;)
    global.get 1
    call_indirect (type 0)
    drop
    i32.const 1
    global.set 2))
