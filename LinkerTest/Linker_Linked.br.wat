(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param f32) (result i32)))
  (type (;4;) (func))
  (import "brisk:LinkingConstant" "$Brisk$Constant:moduleFunctionOffset" (global (;0;) i32))
  (import "env" "print" (func (;0;) (type 0)))
  (import "env" "print" (func (;1;) (type 3)))
  (func (;2;) (type 1) (result i32)
    global.set 2
    global.set 3
    call_indirect (type 0)
    drop
    i32.const 3
    return)
  (func (;3;) (type 2)
    (local i32)
    global.set 2
    global.set 3
    call_indirect (type 0)
    drop
    global.set 1
    i32.const 1
    i32.add
    local.set 0)
  (func (;4;) (type 4)
    f32.const 0x1p+0 (;=1;)
    global.get 1
    call_indirect (type 0)
    drop
    i32.const 1
    global.set 2))
