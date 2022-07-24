(module
  (import "env" "globalI32" (global i32))
  (import "env" "globalI64Mut" (global (mut i64)))
  (import "env" "bar" (func (param f32)))
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i64 i64) (result i64)))
  (type (;2;) (func (param) (result)))
  (func (;0;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (;1;) (type 1) (param i64 i64) (result i64)
    local.get 0
    local.get 1
    i64.add)
  (func (;2;) (type 2) (param)
    (drop (i32.add (i32.const 1) (i32.const 1)))
  )
  (start 3)
  (export "addI32" (func 0))
  (export "addI64" (func 1))
)
