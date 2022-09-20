(module $./Resources/LinkTest/index.br
  (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func))
  (type (;6;) (func))
  (import "wasi_snapshot_preview1" "fd_write" (func $./print32.br0.fd_write (type 0)))
  (func $./print32.br0.writeCharacterCode (type 1) (param $pointer4 i32) (param $character5 i32) (result i32)
    local.get $pointer4
    local.get $character5
    i32.store align=1
    local.get $pointer4
    i32.const 1
    i32.add
    local.set $pointer4
    local.get $pointer4
    return)
  (func $./print32.br0.print32 (type 2) (param $value2 i32) (result i32)
    (local $writeCharacterCode3 i32) (local $basePointer6 i32) (local $pointer7 i32) (local $length8 i32)
    i32.const 1
    local.set $writeCharacterCode3
    i32.const 0
    local.set $basePointer6
    local.get $basePointer6
    i32.const 8
    i32.add
    local.set $pointer7
    i32.const 0
    local.set $length8
    local.get $value2
    i32.eqz
    if  ;; label = @1
      local.get $pointer7
      i32.const 48
      local.get $writeCharacterCode3
      call_indirect (type 1)
      local.set $pointer7
      local.get $length8
      i32.const 1
      i32.add
      local.set $length8
    end
    local.get $pointer7
    i32.const 10
    local.get $writeCharacterCode3
    call_indirect (type 1)
    local.set $pointer7
    local.get $length8
    i32.const 1
    i32.add
    local.set $length8
    local.get $basePointer6
    i32.const 8
    i32.store align=1
    local.get $basePointer6
    i32.const 4
    i32.add
    local.get $length8
    i32.store align=1
    i32.const 1
    i32.const 0
    i32.const 1
    i32.const 40
    global.get 0
    call_indirect (type 0)
    drop
    i32.const 3
    return)
  (func $./print32.br0._start (type 3)
    i32.const 2
    global.set 1)
  (func $./Resources/LinkTest/index.br1._start (type 5)
    i32.const 0
    global.get 4
    call_indirect (type 4)
    drop
    i32.const 1
    global.get 4
    call_indirect (type 4)
    drop)
  (func $_start (type 6)
    call $./print32.br0._start
    global.get 1
    global.set 4
    call $./Resources/LinkTest/index.br1._start)
  (table (;0;) 3 funcref)
  (memory (;0;) 2)
  (global (;0;) i32 (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) i32 (i32.const 0))
  (global (;3;) i32 (i32.const 0))
  (global (;4;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (start $_start)
  (elem (;0;) (i32.const 0) func $./print32.br0.fd_write)
  (elem (;1;) (i32.const 1) func $./print32.br0.writeCharacterCode)
  (elem (;2;) (i32.const 2) func $./print32.br0.print32))
