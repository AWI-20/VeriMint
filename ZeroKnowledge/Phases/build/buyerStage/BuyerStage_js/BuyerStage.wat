(module(import "runtime" "exceptionHandler" (func $exceptionHandler (type $_t_i32)))
(import "runtime" "printErrorMessage" (func $printErrorMessage (type $_t_void)))
(import "runtime" "writeBufferMessage" (func $writeBufferMessage (type $_t_void)))
(import "runtime" "showSharedRWMemory" (func $showSharedRWMemory (type $_t_void)))
(memory 16)
(type $_sig_i32i32 (func  (param i32 i32)))
(type $_sig_i32 (func  (param i32)))
(type $_sig_i32ri32 (func  (param i32) (result i32)))
(type $_sig_i32i32ri32 (func  (param i32 i32) (result i32)))
(type $_sig_i32i32i32ri32 (func  (param i32 i32 i32) (result i32)))
(type $_sig_i32i32i32 (func  (param i32 i32 i32)))
(type $_sig_i32i64i32 (func  (param i32 i64 i32)))
(type $_sig_i32i64 (func  (param i32 i64)))
(type $_sig_i32i32i32i32 (func  (param i32 i32 i32 i32)))
(type $_sig_i64i64ri64 (func  (param i64 i64) (result i64)))
(type $_sig_i32i32ri64 (func  (param i32 i32) (result i64)))
(type $_t_void (func ))
(type $_t_ri32 (func  (result i32)))
(type $_t_i32 (func  (param i32)))
(type $_t_i32ri32 (func  (param i32) (result i32)))
(type $_t_i64ri32 (func  (param i64) (result i32)))
(type $_t_i32i32 (func  (param i32 i32)))
(type $_t_i32i32ri32 (func  (param i32 i32) (result i32)))
(type $_t_i32i32i32  (func  (param i32 i32 i32)))
(export "memory" (memory 0))
(export "getVersion" (func $getVersion))
(export "getMinorVersion" (func $getMinorVersion))
(export "getPatchVersion" (func $getPatchVersion))
(export "getSharedRWMemoryStart" (func $getSharedRWMemoryStart))
(export "readSharedRWMemory" (func $readSharedRWMemory))
(export "writeSharedRWMemory" (func $writeSharedRWMemory))
(export "init" (func $init))
(export "setInputSignal" (func $setInputSignal))
(export "getInputSignalSize" (func $getInputSignalSize))
(export "getRawPrime" (func $getRawPrime))
(export "getFieldNumLen32" (func $getFieldNumLen32))
(export "getWitnessSize" (func $getWitnessSize))
(export "getInputSize" (func $getInputSize))
(export "getWitness" (func $getWitness))
(export "getMessageChar" (func $getMessageChar))
(func $Fr_int_copy (type $_sig_i32i32)
 (param $px i32)
 (param $pr i32)
get_local $pr
get_local $px
i64.load
i64.store
get_local $pr
get_local $px
i64.load offset=8
i64.store offset=8
get_local $pr
get_local $px
i64.load offset=16
i64.store offset=16
get_local $pr
get_local $px
i64.load offset=24
i64.store offset=24
)
(func $Fr_int_zero (type $_sig_i32)
 (param $pr i32)
get_local $pr
i64.const 0
i64.store
get_local $pr
i64.const 0
i64.store offset=8
get_local $pr
i64.const 0
i64.store offset=16
get_local $pr
i64.const 0
i64.store offset=24
)
(func $Fr_int_isZero (type $_sig_i32ri32)
 (param $px i32)
(result i32)
get_local $px
i64.load offset=24
i64.eqz
if
get_local $px
i64.load offset=16
i64.eqz
if
get_local $px
i64.load offset=8
i64.eqz
if
get_local $px
i64.load
i64.eqz
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
i32.const 0
return
end
i32.const 0
return
)
(func $Fr_int_one (type $_sig_i32)
 (param $pr i32)
get_local $pr
i64.const 1
i64.store
get_local $pr
i64.const 0
i64.store offset=8
get_local $pr
i64.const 0
i64.store offset=16
get_local $pr
i64.const 0
i64.store offset=24
)
(func $Fr_int_eq (type $_sig_i32i32ri32)
 (param $px i32)
 (param $py i32)
(result i32)
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.eq
if
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.eq
if
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.eq
if
get_local $px
i64.load
get_local $py
i64.load
i64.eq
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
i32.const 0
return
end
i32.const 0
return
)
(func $Fr_int_gt (type $_sig_i32i32ri32)
 (param $px i32)
 (param $py i32)
(result i32)
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load
get_local $py
i64.load
i64.gt_u
return
end
end
end
end
end
end
i32.const 0
return
)
(func $Fr_int_gte (type $_sig_i32i32ri32)
 (param $px i32)
 (param $py i32)
(result i32)
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=24
get_local $py
i64.load offset=24
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=16
get_local $py
i64.load offset=16
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.lt_u
if
i32.const 0
return
else
get_local $px
i64.load offset=8
get_local $py
i64.load offset=8
i64.gt_u
if
i32.const 1
return
else
get_local $px
i64.load
get_local $py
i64.load
i64.ge_u
return
end
end
end
end
end
end
i32.const 0
return
)
(func $Fr_int_add (type $_sig_i32i32i32ri32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
(result i32)
 (local $c i64)
get_local $x
i64.load32_u
get_local $y
i64.load32_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32
get_local $x
i64.load32_u offset=4
get_local $y
i64.load32_u offset=4
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=4
get_local $x
i64.load32_u offset=8
get_local $y
i64.load32_u offset=8
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=8
get_local $x
i64.load32_u offset=12
get_local $y
i64.load32_u offset=12
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=12
get_local $x
i64.load32_u offset=16
get_local $y
i64.load32_u offset=16
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=16
get_local $x
i64.load32_u offset=20
get_local $y
i64.load32_u offset=20
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=20
get_local $x
i64.load32_u offset=24
get_local $y
i64.load32_u offset=24
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=24
get_local $x
i64.load32_u offset=28
get_local $y
i64.load32_u offset=28
i64.add
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $r
get_local $c
i64.store32 offset=28
get_local $c
i64.const 32
i64.shr_u
i32.wrap/i64
)
(func $Fr_int_sub (type $_sig_i32i32i32ri32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
(result i32)
 (local $c i64)
get_local $x
i64.load32_u
get_local $y
i64.load32_u
i64.sub
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32
get_local $x
i64.load32_u offset=4
get_local $y
i64.load32_u offset=4
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=4
get_local $x
i64.load32_u offset=8
get_local $y
i64.load32_u offset=8
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=8
get_local $x
i64.load32_u offset=12
get_local $y
i64.load32_u offset=12
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=12
get_local $x
i64.load32_u offset=16
get_local $y
i64.load32_u offset=16
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=16
get_local $x
i64.load32_u offset=20
get_local $y
i64.load32_u offset=20
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=20
get_local $x
i64.load32_u offset=24
get_local $y
i64.load32_u offset=24
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=24
get_local $x
i64.load32_u offset=28
get_local $y
i64.load32_u offset=28
i64.sub
get_local $c
i64.const 32
i64.shr_s
i64.add
set_local $c
get_local $r
get_local $c
i64.const 0xFFFFFFFF
i64.and
i64.store32 offset=28
get_local $c
i64.const 32
i64.shr_s
i32.wrap/i64
)
(func $Fr_int_mul (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $x0 i64)
 (local $y0 i64)
 (local $x1 i64)
 (local $y1 i64)
 (local $x2 i64)
 (local $y2 i64)
 (local $x3 i64)
 (local $y3 i64)
 (local $x4 i64)
 (local $y4 i64)
 (local $x5 i64)
 (local $y5 i64)
 (local $x6 i64)
 (local $y6 i64)
 (local $x7 i64)
 (local $y7 i64)
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $y
i64.load32_u
tee_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=4
tee_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=4
tee_local $x1
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=4
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=8
tee_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=8
tee_local $x2
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=12
tee_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=12
tee_local $x3
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=12
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=16
tee_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=16
tee_local $x4
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=20
tee_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=20
tee_local $x5
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=20
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=24
tee_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=24
tee_local $x6
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=28
tee_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=28
tee_local $x7
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=28
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=32
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=36
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=40
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=44
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=48
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=52
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=56
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=60
)
(func $Fr_int_square (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $c0_old i64)
 (local $c1_old i64)
 (local $x0 i64)
 (local $x1 i64)
 (local $x2 i64)
 (local $x3 i64)
 (local $x4 i64)
 (local $x5 i64)
 (local $x6 i64)
 (local $x7 i64)
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $x0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=4
tee_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=4
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=8
tee_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=12
tee_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=12
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=16
tee_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=20
tee_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=20
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=24
tee_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=28
tee_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=28
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=32
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=36
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=40
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=44
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=48
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=52
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=56
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
get_local $r
get_local $c0_old
i64.store32 offset=60
)
(func $Fr_int_squareOld (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
get_local $x
get_local $r
call $Fr_int_mul
)
(func $Fr_int__mul1 (type $_sig_i32i64i32)
 (param $px i32)
 (param $y i64)
 (param $pr i32)
 (local $c i64)
get_local $px
i64.load32_u align=1
get_local $y
i64.mul
set_local $c
get_local $pr
get_local $c
i64.store32 align=1
get_local $px
i64.load32_u offset=4 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=4 align=1
get_local $px
i64.load32_u offset=8 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=8 align=1
get_local $px
i64.load32_u offset=12 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=12 align=1
get_local $px
i64.load32_u offset=16 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=16 align=1
get_local $px
i64.load32_u offset=20 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=20 align=1
get_local $px
i64.load32_u offset=24 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=24 align=1
get_local $px
i64.load32_u offset=28 align=1
get_local $y
i64.mul
get_local $c
i64.const 32
i64.shr_u
i64.add
set_local $c
get_local $pr
get_local $c
i64.store32 offset=28 align=1
)
(func $Fr_int__add1 (type $_sig_i32i64)
 (param $x i32)
 (param $y i64)
 (local $c i64)
 (local $px i32)
get_local $x
set_local $px
get_local $px
i64.load32_u align=1
get_local $y
i64.add
set_local $c
get_local $px
get_local $c
i64.store32 align=1
get_local $c
i64.const 32
i64.shr_u
set_local $c
block
loop
get_local $c
i64.eqz
br_if 1
get_local $px
i32.const 4
i32.add
set_local $px
get_local $px
i64.load32_u align=1
get_local $c
i64.add
set_local $c
get_local $px
get_local $c
i64.store32 align=1
get_local $c
i64.const 32
i64.shr_u
set_local $c
br 0
end
end
)
(func $Fr_int_div (type $_sig_i32i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $c i32)
 (param $r i32)
 (local $rr i32)
 (local $cc i32)
 (local $eX i32)
 (local $eY i32)
 (local $sy i64)
 (local $sx i64)
 (local $ec i32)
get_local $c
if
get_local $c
set_local $cc
else
i32.const 192
set_local $cc
end
get_local $r
if
get_local $r
set_local $rr
else
i32.const 224
set_local $rr
end
get_local $x
get_local $rr
call $Fr_int_copy
get_local $y
i32.const 160
call $Fr_int_copy
get_local $cc
call $Fr_int_zero
i32.const 256
call $Fr_int_zero
i32.const 31
set_local $eX
i32.const 31
set_local $eY
block
loop
i32.const 160
get_local $eY
i32.add
i32.load8_u
get_local $eY
i32.const 3
i32.eq
i32.or
br_if 1
get_local $eY
i32.const 1
i32.sub
set_local $eY
br 0
end
end
i32.const 160
get_local $eY
i32.add
i32.const 3
i32.sub
i64.load32_u align=1
i64.const 1
i64.add
set_local $sy
get_local $sy
i64.const 1
i64.eq
if
i64.const 0
i64.const 0
i64.div_u
drop
end
block
loop
block
loop
get_local $rr
get_local $eX
i32.add
i32.load8_u
get_local $eX
i32.const 7
i32.eq
i32.or
br_if 1
get_local $eX
i32.const 1
i32.sub
set_local $eX
br 0
end
end
get_local $rr
get_local $eX
i32.add
i32.const 7
i32.sub
i64.load align=1
set_local $sx
get_local $sx
get_local $sy
i64.div_u
set_local $sx
get_local $eX
get_local $eY
i32.sub
i32.const 4
i32.sub
set_local $ec
block
loop
get_local $sx
i64.const 0xFFFFFFFF00000000
i64.and
i64.eqz
get_local $ec
i32.const 0
i32.ge_s
i32.and
br_if 1
get_local $sx
i64.const 8
i64.shr_u
set_local $sx
get_local $ec
i32.const 1
i32.add
set_local $ec
br 0
end
end
get_local $sx
i64.eqz
if
get_local $rr
i32.const 160
call $Fr_int_gte
i32.eqz
br_if 2
i64.const 1
set_local $sx
i32.const 0
set_local $ec
end
i32.const 160
get_local $sx
i32.const 288
call $Fr_int__mul1
get_local $rr
i32.const 288
get_local $ec
i32.sub
get_local $rr
call $Fr_int_sub
drop
get_local $cc
get_local $ec
i32.add
get_local $sx
call $Fr_int__add1
br 0
end
end
)
(func $Fr_int_inverseMod (type $_sig_i32i32i32)
 (param $px i32)
 (param $pm i32)
 (param $pr i32)
 (local $t i32)
 (local $newt i32)
 (local $r i32)
 (local $qq i32)
 (local $qr i32)
 (local $newr i32)
 (local $swp i32)
 (local $x i32)
 (local $signt i32)
 (local $signnewt i32)
 (local $signx i32)
i32.const 320
set_local $t
i32.const 320
call $Fr_int_zero
i32.const 0
set_local $signt
i32.const 352
set_local $r
get_local $pm
i32.const 352
call $Fr_int_copy
i32.const 384
set_local $newt
i32.const 384
call $Fr_int_one
i32.const 0
set_local $signnewt
i32.const 416
set_local $newr
get_local $px
i32.const 416
call $Fr_int_copy
i32.const 448
set_local $qq
i32.const 480
set_local $qr
i32.const 576
set_local $x
block
loop
get_local $newr
call $Fr_int_isZero
br_if 1
get_local $r
get_local $newr
get_local $qq
get_local $qr
call $Fr_int_div
get_local $qq
get_local $newt
i32.const 512
call $Fr_int_mul
get_local $signt
if
get_local $signnewt
if
i32.const 512
get_local $t
call $Fr_int_gte
if
i32.const 512
get_local $t
get_local $x
call $Fr_int_sub
drop
i32.const 0
set_local $signx
else
get_local $t
i32.const 512
get_local $x
call $Fr_int_sub
drop
i32.const 1
set_local $signx
end
else
i32.const 512
get_local $t
get_local $x
call $Fr_int_add
drop
i32.const 1
set_local $signx
end
else
get_local $signnewt
if
i32.const 512
get_local $t
get_local $x
call $Fr_int_add
drop
i32.const 0
set_local $signx
else
get_local $t
i32.const 512
call $Fr_int_gte
if
get_local $t
i32.const 512
get_local $x
call $Fr_int_sub
drop
i32.const 0
set_local $signx
else
i32.const 512
get_local $t
get_local $x
call $Fr_int_sub
drop
i32.const 1
set_local $signx
end
end
end
get_local $t
set_local $swp
get_local $newt
set_local $t
get_local $x
set_local $newt
get_local $swp
set_local $x
get_local $signnewt
set_local $signt
get_local $signx
set_local $signnewt
get_local $r
set_local $swp
get_local $newr
set_local $r
get_local $qr
set_local $newr
get_local $swp
set_local $qr
br 0
end
end
get_local $signt
if
get_local $pm
get_local $t
get_local $pr
call $Fr_int_sub
drop
else
get_local $t
get_local $pr
call $Fr_int_copy
end
)
(func $Fr_F1m_add (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
get_local $x
get_local $y
get_local $r
call $Fr_int_add
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
else
get_local $r
i32.const 608
call $Fr_int_gte
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
end
end
)
(func $Fr_F1m_sub (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
get_local $x
get_local $y
get_local $r
call $Fr_int_sub
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_add
drop
end
)
(func $Fr_F1m_neg (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
i32.const 768
get_local $x
get_local $r
call $Fr_F1m_sub
)
(func $Fr_F1m_mReduct (type $_sig_i32i32)
 (param $t i32)
 (param $r i32)
 (local $np32 i64)
 (local $c i64)
 (local $m i64)
i64.const 4026531839
set_local $np32
i64.const 0
set_local $c
get_local $t
i64.load32_u
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32
get_local $t
i64.load32_u offset=4
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=4
get_local $t
i64.load32_u offset=8
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=8
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=4
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=4
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=4
get_local $t
i64.load32_u offset=8
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=8
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=4
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=8
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=8
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=8
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=8
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=12
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=12
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=12
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=12
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=16
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=16
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=16
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=16
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=20
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=20
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=20
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
get_local $t
i64.load32_u offset=48
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=48
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=20
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=24
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=24
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=24
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
get_local $t
i64.load32_u offset=48
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=48
get_local $t
i64.load32_u offset=52
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=52
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=24
i64.const 0
set_local $c
get_local $t
i64.load32_u offset=28
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m
get_local $t
i64.load32_u offset=28
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=28
get_local $t
i64.load32_u offset=32
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=4
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=32
get_local $t
i64.load32_u offset=36
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=8
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=36
get_local $t
i64.load32_u offset=40
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=12
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=40
get_local $t
i64.load32_u offset=44
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=16
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=44
get_local $t
i64.load32_u offset=48
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=20
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=48
get_local $t
i64.load32_u offset=52
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=24
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=52
get_local $t
i64.load32_u offset=56
get_local $c
i64.const 32
i64.shr_u
i64.add
i32.const 608
i64.load32_u offset=28
get_local $m
i64.mul
i64.add
set_local $c
get_local $t
get_local $c
i64.store32 offset=56
i32.const 992
get_local $c
i64.const 32
i64.shr_u
i64.store32 offset=28
i32.const 992
get_local $t
i32.const 32
i32.add
get_local $r
call $Fr_F1m_add
)
(func $Fr_F1m_mul (type $_sig_i32i32i32)
 (param $x i32)
 (param $y i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $np32 i64)
 (local $x0 i64)
 (local $y0 i64)
 (local $m0 i64)
 (local $q0 i64)
 (local $x1 i64)
 (local $y1 i64)
 (local $m1 i64)
 (local $q1 i64)
 (local $x2 i64)
 (local $y2 i64)
 (local $m2 i64)
 (local $q2 i64)
 (local $x3 i64)
 (local $y3 i64)
 (local $m3 i64)
 (local $q3 i64)
 (local $x4 i64)
 (local $y4 i64)
 (local $m4 i64)
 (local $q4 i64)
 (local $x5 i64)
 (local $y5 i64)
 (local $m5 i64)
 (local $q5 i64)
 (local $x6 i64)
 (local $y6 i64)
 (local $m6 i64)
 (local $q6 i64)
 (local $x7 i64)
 (local $y7 i64)
 (local $m7 i64)
 (local $q7 i64)
i64.const 4026531839
set_local $np32
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $y
i64.load32_u
tee_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m0
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=608
tee_local $q0
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=4
tee_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=4
tee_local $x1
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=612
tee_local $q1
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m1
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=8
tee_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=8
tee_local $x2
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=616
tee_local $q2
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m2
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=12
tee_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=12
tee_local $x3
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q1
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=620
tee_local $q3
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m3
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=16
tee_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=16
tee_local $x4
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=624
tee_local $q4
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m4
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=20
tee_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=20
tee_local $x5
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q1
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q3
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=628
tee_local $q5
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m5
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=24
tee_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=24
tee_local $x6
get_local $y0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=632
tee_local $q6
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m6
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x0
get_local $y
i64.load32_u offset=28
tee_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x1
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x
i64.load32_u offset=28
tee_local $x7
get_local $y0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q1
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q3
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q5
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m1
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=636
tee_local $q7
get_local $m0
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m7
get_local $c1
i64.const 4294967295
i64.and
get_local $q0
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x2
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x3
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q2
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q3
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q5
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m3
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q7
get_local $m2
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=4
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x4
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x5
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q4
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q5
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m5
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q7
get_local $m4
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=12
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $y6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x6
get_local $y7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $x7
get_local $y6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q6
get_local $m7
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $c1
i64.const 4294967295
i64.and
get_local $q7
get_local $m6
i64.mul
i64.add
set_local $c1
get_local $c0
get_local $c1
i64.const 32
i64.shr_u
i64.add
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=20
get_local $c0
i64.const 32
i64.shr_u
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $y7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
i64.const 32
i64.shr_u
set_local $c0
get_local $r
get_local $c1
i64.store32 offset=28
get_local $c0
i32.wrap/i64
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
else
get_local $r
i32.const 608
call $Fr_int_gte
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
end
end
)
(func $Fr_F1m_square (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
 (local $c0 i64)
 (local $c1 i64)
 (local $c0_old i64)
 (local $c1_old i64)
 (local $np32 i64)
 (local $x0 i64)
 (local $m0 i64)
 (local $q0 i64)
 (local $x1 i64)
 (local $m1 i64)
 (local $q1 i64)
 (local $x2 i64)
 (local $m2 i64)
 (local $q2 i64)
 (local $x3 i64)
 (local $m3 i64)
 (local $q3 i64)
 (local $x4 i64)
 (local $m4 i64)
 (local $q4 i64)
 (local $x5 i64)
 (local $m5 i64)
 (local $q5 i64)
 (local $x6 i64)
 (local $m6 i64)
 (local $q6 i64)
 (local $x7 i64)
 (local $m7 i64)
 (local $q7 i64)
i64.const 4026531839
set_local $np32
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x
i64.load32_u
tee_local $x0
get_local $x0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m0
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=608
tee_local $q0
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=4
tee_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=612
tee_local $q1
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m1
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=8
tee_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=616
tee_local $q2
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m2
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=12
tee_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=620
tee_local $q3
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m3
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=16
tee_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=624
tee_local $q4
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m4
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=20
tee_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=628
tee_local $q5
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m5
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=24
tee_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=632
tee_local $q6
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m6
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x0
get_local $x
i64.load32_u offset=28
tee_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i32.const 0
i64.load32_u offset=636
tee_local $q7
get_local $m0
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $np32
i64.mul
i64.const 0xFFFFFFFF
i64.and
set_local $m7
get_local $c0
i64.const 4294967295
i64.and
get_local $q0
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x1
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q1
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m1
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x2
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q2
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m2
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=4
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x3
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q3
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m3
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=8
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x4
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q4
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m4
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=12
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x5
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q5
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m5
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=16
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x6
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q6
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m6
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=20
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
i64.const 0
set_local $c0
i64.const 0
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
i64.const 1
i64.shl
set_local $c0
get_local $c1
i64.const 1
i64.shl
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $x7
get_local $x7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $c0_old
i64.const 4294967295
i64.and
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
get_local $c1_old
i64.add
set_local $c1
get_local $c0
i64.const 4294967295
i64.and
get_local $q7
get_local $m7
i64.mul
i64.add
set_local $c0
get_local $c1
get_local $c0
i64.const 32
i64.shr_u
i64.add
set_local $c1
get_local $r
get_local $c0
i64.store32 offset=24
get_local $c1
set_local $c0_old
get_local $c0_old
i64.const 32
i64.shr_u
set_local $c1_old
get_local $r
get_local $c0_old
i64.store32 offset=28
get_local $c1_old
i32.wrap/i64
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
else
get_local $r
i32.const 608
call $Fr_int_gte
if
get_local $r
i32.const 608
get_local $r
call $Fr_int_sub
drop
end
end
)
(func $Fr_F1m_squareOld (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
get_local $x
get_local $r
call $Fr_F1m_mul
)
(func $Fr_F1m_toMontgomery (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
i32.const 672
get_local $r
call $Fr_F1m_mul
)
(func $Fr_F1m_fromMontgomery (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
i32.const 1504
call $Fr_int_copy
i32.const 1536
call $Fr_int_zero
i32.const 1504
get_local $r
call $Fr_F1m_mReduct
)
(func $Fr_F1m_isNegative (type $_sig_i32ri32)
 (param $x i32)
(result i32)
get_local $x
i32.const 1568
call $Fr_F1m_fromMontgomery
i32.const 1568
i32.load
i32.const 1
i32.and
)
(func $Fr_F1m_inverse (type $_sig_i32i32)
 (param $x i32)
 (param $r i32)
get_local $x
get_local $r
call $Fr_F1m_fromMontgomery
get_local $r
i32.const 608
get_local $r
call $Fr_int_inverseMod
get_local $r
get_local $r
call $Fr_F1m_toMontgomery
)
(func $Fr_F1m_one (type $_sig_i32)
 (param $pr i32)
i32.const 736
get_local $pr
call $Fr_int_copy
)
(func $Fr_F1m_load (type $_sig_i32i32i32)
 (param $scalar i32)
 (param $scalarLen i32)
 (param $r i32)
 (local $p i32)
 (local $l i32)
 (local $i i32)
 (local $j i32)
get_local $r
call $Fr_int_zero
i32.const 32
set_local $i
get_local $scalar
set_local $p
block
loop
get_local $i
get_local $scalarLen
i32.gt_u
br_if 1
get_local $i
i32.const 32
i32.eq
if
i32.const 1600
call $Fr_F1m_one
else
i32.const 1600
i32.const 672
i32.const 1600
call $Fr_F1m_mul
end
get_local $p
i32.const 1600
i32.const 1632
call $Fr_F1m_mul
get_local $r
i32.const 1632
get_local $r
call $Fr_F1m_add
get_local $p
i32.const 32
i32.add
set_local $p
get_local $i
i32.const 32
i32.add
set_local $i
br 0
end
end
get_local $scalarLen
i32.const 32
i32.rem_u
set_local $l
get_local $l
i32.eqz
if
return
end
i32.const 1632
call $Fr_int_zero
i32.const 0
set_local $j
block
loop
get_local $j
get_local $l
i32.eq
br_if 1
get_local $j
get_local $p
i32.load8_u
i32.store8 offset=1632
get_local $p
i32.const 1
i32.add
set_local $p
get_local $j
i32.const 1
i32.add
set_local $j
br 0
end
end
get_local $i
i32.const 32
i32.eq
if
i32.const 1600
call $Fr_F1m_one
else
i32.const 1600
i32.const 672
i32.const 1600
call $Fr_F1m_mul
end
i32.const 1632
i32.const 1600
i32.const 1632
call $Fr_F1m_mul
get_local $r
i32.const 1632
get_local $r
call $Fr_F1m_add
)
(func $Fr_F1m_timesScalar (type $_sig_i32i32i32i32)
 (param $x i32)
 (param $scalar i32)
 (param $scalarLen i32)
 (param $r i32)
get_local $scalar
get_local $scalarLen
i32.const 1664
call $Fr_F1m_load
i32.const 1664
i32.const 1664
call $Fr_F1m_toMontgomery
get_local $x
i32.const 1664
get_local $r
call $Fr_F1m_mul
)
(func $Fr_F1m_exp (type $_sig_i32i32i32i32)
 (param $base i32)
 (param $scalar i32)
 (param $scalarLength i32)
 (param $r i32)
 (local $i i32)
 (local $b i32)
get_local $base
i32.const 1696
call $Fr_int_copy
get_local $r
call $Fr_F1m_one
get_local $scalarLength
set_local $i
block
loop
get_local $i
i32.const 1
i32.sub
set_local $i
get_local $scalar
get_local $i
i32.add
i32.load8_u
set_local $b
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 128
i32.ge_u
if
get_local $b
i32.const 128
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 64
i32.ge_u
if
get_local $b
i32.const 64
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 32
i32.ge_u
if
get_local $b
i32.const 32
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 16
i32.ge_u
if
get_local $b
i32.const 16
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 8
i32.ge_u
if
get_local $b
i32.const 8
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 4
i32.ge_u
if
get_local $b
i32.const 4
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 2
i32.ge_u
if
get_local $b
i32.const 2
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $r
get_local $r
call $Fr_F1m_square
get_local $b
i32.const 1
i32.ge_u
if
get_local $b
i32.const 1
i32.sub
set_local $b
i32.const 1696
get_local $r
get_local $r
call $Fr_F1m_mul
end
get_local $i
i32.eqz
br_if 1
br 0
end
end
)
(func $Fr_F1m_sqrt (type $_sig_i32i32)
 (param $n i32)
 (param $r i32)
 (local $m i32)
 (local $i i32)
 (local $j i32)
get_local $n
call $Fr_int_isZero
if
get_local $r
call $Fr_int_zero
return
end
i32.const 28
set_local $m
i32.const 928
i32.const 1728
call $Fr_int_copy
get_local $n
i32.const 896
i32.const 32
i32.const 1760
call $Fr_F1m_exp
get_local $n
i32.const 960
i32.const 32
i32.const 1792
call $Fr_F1m_exp
block
loop
i32.const 1760
i32.const 736
call $Fr_int_eq
br_if 1
i32.const 1760
i32.const 1824
call $Fr_F1m_square
i32.const 1
set_local $i
block
loop
i32.const 1824
i32.const 736
call $Fr_int_eq
br_if 1
i32.const 1824
i32.const 1824
call $Fr_F1m_square
get_local $i
i32.const 1
i32.add
set_local $i
br 0
end
end
i32.const 1728
i32.const 1856
call $Fr_int_copy
get_local $m
get_local $i
i32.sub
i32.const 1
i32.sub
set_local $j
block
loop
get_local $j
i32.eqz
br_if 1
i32.const 1856
i32.const 1856
call $Fr_F1m_square
get_local $j
i32.const 1
i32.sub
set_local $j
br 0
end
end
get_local $i
set_local $m
i32.const 1856
i32.const 1728
call $Fr_F1m_square
i32.const 1760
i32.const 1728
i32.const 1760
call $Fr_F1m_mul
i32.const 1792
i32.const 1856
i32.const 1792
call $Fr_F1m_mul
br 0
end
end
i32.const 1792
call $Fr_F1m_isNegative
if
i32.const 1792
get_local $r
call $Fr_F1m_neg
else
i32.const 1792
get_local $r
call $Fr_int_copy
end
)
(func $Fr_F1m_isSquare (type $_sig_i32ri32)
 (param $n i32)
(result i32)
get_local $n
call $Fr_int_isZero
if
i32.const 1
return
end
get_local $n
i32.const 800
i32.const 32
i32.const 1888
call $Fr_F1m_exp
i32.const 1888
i32.const 736
call $Fr_int_eq
)
(func $Fr_copy (type $_sig_i32i32)
 (param $pr i32)
 (param $px i32)
get_local $pr
get_local $px
i64.load
i64.store
get_local $pr
get_local $px
i64.load offset=8
i64.store offset=8
get_local $pr
get_local $px
i64.load offset=16
i64.store offset=16
get_local $pr
get_local $px
i64.load offset=24
i64.store offset=24
get_local $pr
get_local $px
i64.load offset=32
i64.store offset=32
)
(func $Fr_copyn (type $_sig_i32i32i32)
 (param $pr i32)
 (param $px i32)
 (param $n i32)
 (local $s i32)
 (local $d i32)
 (local $slast i32)
get_local $px
set_local $s
get_local $pr
set_local $d
get_local $s
get_local $n
i32.const 40
i32.mul
i32.add
set_local $slast
block
loop
get_local $s
get_local $slast
i32.eq
br_if 1
get_local $d
get_local $s
i64.load
i64.store
get_local $d
i32.const 8
i32.add
set_local $d
get_local $s
i32.const 8
i32.add
set_local $s
br 0
end
end
)
(func $Fr_isTrue (type $_sig_i32ri32)
 (param $px i32)
(result i32)
get_local $px
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $px
i32.const 8
i32.add
call $Fr_int_isZero ;; it was $Fr_F1m_isZero, but it does not exists
i32.eqz
return
end
get_local $px
i32.load
i32.const 0
i32.ne
)
(func $Fr_rawCopyS2L (type $_sig_i32i64)
 (param $pR i32)
 (param $v i64)
get_local $v
i64.const 0
i64.gt_s
if
get_local $pR
get_local $v
i64.store
get_local $pR
i64.const 0
i64.store offset=8
get_local $pR
i64.const 0
i64.store offset=16
get_local $pR
i64.const 0
i64.store offset=24
else
i64.const 0
get_local $v
i64.sub
set_local $v
get_local $pR
get_local $v
i64.store
get_local $pR
i64.const 0
i64.store offset=8
get_local $pR
i64.const 0
i64.store offset=16
get_local $pR
i64.const 0
i64.store offset=24
get_local $pR
get_local $pR
call $Fr_F1m_neg
end
)
(func $Fr_toMontgomery (type $_sig_i32)
 (param $pR i32)
get_local $pR
i32.load8_u offset=7
i32.const 64
i32.and
if
return
else
get_local $pR
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_toMontgomery
else
get_local $pR
i32.const 8
i32.add
get_local $pR
i64.load32_s
call $Fr_rawCopyS2L
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_toMontgomery
get_local $pR
i32.const 1073741824
i32.store offset=4
end
end
)
(func $Fr_toNormal (type $_sig_i32)
 (param $pR i32)
get_local $pR
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_fromMontgomery
end
end
)
(func $Fr_toLongNormal (type $_sig_i32)
 (param $pR i32)
get_local $pR
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pR
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_fromMontgomery
end
else
get_local $pR
i32.const 8
i32.add
get_local $pR
i64.load32_s
call $Fr_rawCopyS2L
get_local $pR
i32.const -2147483648
i32.store offset=4
end
)
(func $Fr_isNegative (type $_sig_i32ri32)
 (param $pA i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
i32.const 1920
call $Fr_int_gt
return
end
get_local $pA
i32.load
i32.const 0
i32.lt_s
)
(func $Fr_neg (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_neg
else
i64.const 0
get_local $pA
i64.load32_s
i64.sub
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
)
(func $Fr_getLsb32 (type $_sig_i32ri32)
 (param $pA i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pA
i32.load offset=8
return
else
get_local $pA
i32.load
return
end
i32.const 0
)
(func $Fr_toInt (type $_sig_i32ri32)
 (param $pA i32)
(result i32)
get_local $pA
call $Fr_isNegative
if
i32.const 8
get_local $pA
call $Fr_neg
i32.const 0
i32.const 8
call $Fr_getLsb32
i32.sub
return
else
get_local $pA
call $Fr_getLsb32
return
end
i32.const 0
)
(func $Fr_add (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
end
else
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const 8
i32.add
i32.const 16
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
i32.const 16
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_add
end
else
get_local $pA
i64.load32_s
get_local $pB
i64.load32_s
i64.add
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
)
(func $Fr_sub (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
end
else
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const 8
i32.add
i32.const 16
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
else
get_local $pR
i32.const -2147483648
i32.store offset=4
i32.const 16
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
i32.const 16
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_sub
end
else
get_local $pA
i64.load32_s
get_local $pB
i64.load32_s
i64.sub
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
)
(func $Fr_eqR (type $_sig_i32i32ri32)
 (param $pA i32)
 (param $pB i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_eq
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pA
i32.load
get_local $pB
i32.load
i32.eq
if
i32.const 1
return
else
i32.const 0
return
end
end
end
i32.const 0
)
(func $Fr_gtR (type $_sig_i32i32ri32)
 (param $pA i32)
 (param $pB i32)
(result i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
call $Fr_toNormal
get_local $pA
call $Fr_isNegative
if
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
get_local $pB
call $Fr_isNegative
if
i32.const 1
return
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
call $Fr_toNormal
get_local $pA
call $Fr_isNegative
if
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
else
i32.const 0
return
end
else
get_local $pB
call $Fr_isNegative
if
i32.const 1
return
else
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
call $Fr_int_gt
if
i32.const 1
return
else
i32.const 0
return
end
end
end
else
get_local $pA
i32.load
get_local $pB
i32.load
i32.gt_s
if
i32.const 1
return
else
i32.const 0
return
end
end
end
i32.const 0
)
(func $Fr_eq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
)
(func $Fr_neq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
)
(func $Fr_gt (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
end
)
(func $Fr_geq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
end
)
(func $Fr_lt (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
end
)
(func $Fr_leq (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
get_local $pB
call $Fr_eqR
if
get_local $pR
i64.const 1
i64.store
else
get_local $pA
get_local $pB
call $Fr_gtR
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
end
)
(func $Fr_mul (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
else
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
i32.const 704
get_local $pR
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
end
else
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pB
call $Fr_toMontgomery
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
end
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pB
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pA
call $Fr_toMontgomery
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
end
else
get_local $pA
i64.load32_s
get_local $pB
i64.load32_s
i64.mul
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
)
(func $Fr_idiv (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
i32.const 16
call $Fr_int_div
)
(func $Fr_mod (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
i32.const 16
get_local $pR
i32.const 8
i32.add
call $Fr_int_div
)
(func $Fr_inv (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
i32.const 8
i32.add
i32.const 608
get_local $pR
i32.const 8
i32.add
call $Fr_int_inverseMod
get_local $pA
i32.load8_u offset=7
i32.const 64
i32.and
if
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pR
i32.const 8
i32.add
i32.const 704
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_mul
else
get_local $pR
i32.const -2147483648
i32.store offset=4
end
)
(func $Fr_div (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
 (local $r i64)
 (local $overflow i64)
get_local $pR
get_local $pB
call $Fr_inv
get_local $pR
get_local $pR
get_local $pA
call $Fr_mul
)
(func $Fr_pow (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
call $Fr_toMontgomery
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pR
i32.const -1073741824
i32.store offset=4
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
i32.const 32
get_local $pR
i32.const 8
i32.add
call $Fr_F1m_exp
)
(func $Fr_fixedShl (type $_sig_i64i64ri64)
 (param $a i64)
 (param $b i64)
(result i64)
get_local $b
i64.const 64
i64.ge_u
if
i64.const 0
return
end
get_local $a
get_local $b
i64.shl
)
(func $Fr_fixedShr (type $_sig_i64i64ri64)
 (param $a i64)
 (param $b i64)
(result i64)
get_local $b
i64.const 64
i64.ge_u
if
i64.const 0
return
end
get_local $a
get_local $b
i64.shr_u
)
(func $Fr_rawgetchunk (type $_sig_i32i32ri64)
 (param $pA i32)
 (param $i i32)
(result i64)
get_local $i
i32.const 4
i32.lt_u
if
get_local $pA
get_local $i
i32.const 8
i32.mul
i32.add
i64.load
return
end
i64.const 0
)
(func $Fr_rawshll (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
 (local $oWords1 i32)
 (local $oBits1 i64)
 (local $oWords2 i32)
 (local $oBits2 i64)
 (local $i i32)
i32.const 0
get_local $n
i32.const 6
i32.shr_u
i32.sub
set_local $oWords1
get_local $oWords1
i32.const 1
i32.sub
set_local $oWords2
get_local $n
i64.extend_u/i32
i64.const 63
i64.and
set_local $oBits1
i64.const 64
get_local $oBits1
i64.sub
set_local $oBits2
i32.const 0
set_local $i
block
loop
get_local $i
i32.const 4
i32.eq
br_if 1
get_local $pR
get_local $i
i32.const 8
i32.mul
i32.add
get_local $pA
get_local $oWords1
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits1
call $Fr_fixedShl
get_local $pA
get_local $oWords2
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits2
call $Fr_fixedShr
i64.or
i64.store
get_local $i
i32.const 1
i32.add
set_local $i
br 0
end
end
)
(func $Fr_rawshrl (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
 (local $oWords1 i32)
 (local $oBits1 i64)
 (local $oWords2 i32)
 (local $oBits2 i64)
 (local $i i32)
get_local $n
i32.const 6
i32.shr_u
set_local $oWords1
get_local $oWords1
i32.const 1
i32.add
set_local $oWords2
get_local $n
i64.extend_u/i32
i64.const 63
i64.and
set_local $oBits1
i64.const 64
get_local $oBits1
i64.sub
set_local $oBits2
i32.const 0
set_local $i
block
loop
get_local $i
i32.const 4
i32.eq
br_if 1
get_local $pR
get_local $i
i32.const 8
i32.mul
i32.add
get_local $pA
get_local $oWords1
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits1
call $Fr_fixedShr
get_local $pA
get_local $oWords2
get_local $i
i32.add
call $Fr_rawgetchunk
get_local $oBits2
call $Fr_fixedShl
i64.or
i64.store
get_local $i
i32.const 1
i32.add
set_local $i
br 0
end
end
)
(func $Fr_adjustBinResult (type $_sig_i32)
 (param $pA i32)
get_local $pA
get_local $pA
i64.load offset=32
i64.const 4611686018427387903
i64.and
i64.store offset=32
get_local $pA
i32.const 8
i32.add
i32.const 608
call $Fr_int_gte
if
get_local $pA
i32.const 8
i32.add
i32.const 608
get_local $pA
i32.const 8
i32.add
call $Fr_int_sub
drop
end
)
(func $Fr_rawshl (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
 (local $r i64)
 (local $overflow i64)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshll
get_local $pR
call $Fr_adjustBinResult
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshll
get_local $pR
call $Fr_adjustBinResult
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $n
i32.const 30
i32.gt_u
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshll
get_local $pR
call $Fr_adjustBinResult
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $pA
i64.load32_s
get_local $n
i64.extend_u/i32
i64.shl
set_local $r
get_local $r
i64.const 31
i64.shr_s
set_local $overflow
get_local $overflow
i64.eqz
get_local $overflow
i64.const 1
i64.add
i64.eqz
i32.or
if
get_local $pR
get_local $r
i64.store32
get_local $pR
i32.const 0
i32.store offset=4
else
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
i32.const 8
i32.add
get_local $r
call $Fr_rawCopyS2L
end
end
end
end
)
(func $Fr_rawshr (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $n i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
call $Fr_toNormal
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshrl
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pR
i32.const 8
i32.add
get_local $pA
i32.const 8
i32.add
get_local $n
call $Fr_rawshrl
get_local $pR
i32.const -2147483648
i32.store offset=4
else
get_local $n
i32.const 32
i32.lt_u
if
get_local $pR
get_local $pA
i32.load
get_local $n
i32.shr_u
i32.store
else
get_local $pR
i32.const 0
i32.store
end
get_local $pR
i32.const 0
i32.store offset=4
end
end
)
(func $Fr_shl (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pB
call $Fr_isNegative
if
i32.const 48
get_local $pB
call $Fr_neg
i32.const 8
i32.const 48
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
i32.const 48
call $Fr_toInt
call $Fr_rawshr
else
get_local $pR
call $Fr_int_zero
end
else
i32.const 8
get_local $pB
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
get_local $pB
call $Fr_toInt
call $Fr_rawshl
else
get_local $pR
call $Fr_int_zero
end
end
)
(func $Fr_shr (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pB
call $Fr_isNegative
if
i32.const 48
get_local $pB
call $Fr_neg
i32.const 8
i32.const 48
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
i32.const 48
call $Fr_toInt
call $Fr_rawshl
else
get_local $pR
call $Fr_int_zero
end
else
i32.const 8
get_local $pB
i32.const 88
call $Fr_lt
i32.const 8
i32.load
if
get_local $pR
get_local $pA
get_local $pB
call $Fr_toInt
call $Fr_rawshr
else
get_local $pR
call $Fr_int_zero
end
end
)
(func $Fr_rawbandl (type $_sig_i32i32i32)
 (param $pA i32)
 (param $pB i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
get_local $pB
i64.load
i64.and
i64.store
get_local $pR
get_local $pA
i64.load offset=8
get_local $pB
i64.load offset=8
i64.and
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
get_local $pB
i64.load offset=16
i64.and
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
get_local $pB
i64.load offset=24
i64.and
i64.store offset=24
)
(func $Fr_band (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbandl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pR
get_local $pA
i32.load
get_local $pB
i32.load
i32.and
i32.store
get_local $pR
i32.const 0
i32.store offset=4
end
end
end
end
)
(func $Fr_rawborl (type $_sig_i32i32i32)
 (param $pA i32)
 (param $pB i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
get_local $pB
i64.load
i64.or
i64.store
get_local $pR
get_local $pA
i64.load offset=8
get_local $pB
i64.load offset=8
i64.or
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
get_local $pB
i64.load offset=16
i64.or
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
get_local $pB
i64.load offset=24
i64.or
i64.store offset=24
)
(func $Fr_bor (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawborl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pR
get_local $pA
i32.load
get_local $pB
i32.load
i32.or
i32.store
get_local $pR
i32.const 0
i32.store offset=4
end
end
end
end
)
(func $Fr_rawbxorl (type $_sig_i32i32i32)
 (param $pA i32)
 (param $pB i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
get_local $pB
i64.load
i64.xor
i64.store
get_local $pR
get_local $pA
i64.load offset=8
get_local $pB
i64.load offset=8
i64.xor
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
get_local $pB
i64.load offset=16
i64.xor
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
get_local $pB
i64.load offset=24
i64.xor
i64.store offset=24
)
(func $Fr_bxor (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pA
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pB
call $Fr_isNegative
if
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pB
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pB
i32.const 8
i32.add
get_local $pB
i64.load32_s
call $Fr_rawCopyS2L
get_local $pB
i32.const -2147483648
i32.store offset=4
end
get_local $pB
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pB
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbxorl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
else
get_local $pR
get_local $pA
i32.load
get_local $pB
i32.load
i32.xor
i32.store
get_local $pR
i32.const 0
i32.store offset=4
end
end
end
end
)
(func $Fr_rawbnotl (type $_sig_i32i32)
 (param $pA i32)
 (param $pR i32)
get_local $pR
get_local $pA
i64.load
i64.const -1
i64.xor
i64.store
get_local $pR
get_local $pA
i64.load offset=8
i64.const -1
i64.xor
i64.store offset=8
get_local $pR
get_local $pA
i64.load offset=16
i64.const -1
i64.xor
i64.store offset=16
get_local $pR
get_local $pA
i64.load offset=24
i64.const -1
i64.xor
i64.store offset=24
)
(func $Fr_bnot (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
get_local $pA
i32.load8_u offset=7
i32.const 128
i32.and
if
else
get_local $pA
i32.const 8
i32.add
get_local $pA
i64.load32_s
call $Fr_rawCopyS2L
get_local $pA
i32.const -2147483648
i32.store offset=4
end
get_local $pA
call $Fr_toNormal
get_local $pA
i32.const 8
i32.add
get_local $pR
i32.const 8
i32.add
call $Fr_rawbnotl
get_local $pR
i32.const -2147483648
i32.store offset=4
get_local $pR
call $Fr_adjustBinResult
)
(func $Fr_land (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
call $Fr_isTrue
get_local $pB
call $Fr_isTrue
i32.and
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
)
(func $Fr_lor (type $_sig_i32i32i32)
 (param $pR i32)
 (param $pA i32)
 (param $pB i32)
get_local $pA
call $Fr_isTrue
get_local $pB
call $Fr_isTrue
i32.or
if
get_local $pR
i64.const 1
i64.store
else
get_local $pR
i64.const 0
i64.store
end
)
(func $Fr_lnot (type $_sig_i32i32)
 (param $pR i32)
 (param $pA i32)
get_local $pA
call $Fr_isTrue
if
get_local $pR
i64.const 0
i64.store
else
get_local $pR
i64.const 1
i64.store
end
)
(func $getOffsetIOSubComponet (type $_t_i32i32ri32)
 (param $comp i32)
 (param $ios i32)
(result i32)
i32.const 358560
local.get $comp
i32.add
i32.load
local.get $ios
i32.const 4
i32.mul
i32.add
i32.load
)
(func $getVersion (type $_t_ri32)
i32.const 2
)
(func $getMinorVersion (type $_t_ri32)
i32.const 1
)
(func $getPatchVersion (type $_t_ri32)
i32.const 6
)
(func $getSharedRWMemoryStart (type $_t_ri32)
(result i32)
i32.const 1992
)
(func $readSharedRWMemory (type $_t_i32ri32)
 (param $p i32)
(result i32)
i32.const 1992
local.get $p
i32.const 4
i32.mul
i32.add
i32.load
)
(func $writeSharedRWMemory (type $_t_i32i32)
 (param $p i32)
 (param $v i32)
i32.const 1992
local.get $p
i32.const 4
i32.mul
i32.add
local.get $v
i32.store
)
(func $reserveStackFr (type $_t_i32ri32)
 (param $nbytes i32)
(result i32)
 (local $inistack i32)
 (local $newbsize i32)
 (local $memorybsize i32)
i32.const 0
i32.load
local.set $inistack
local.get $inistack
local.get $nbytes
i32.add
local.set $newbsize
i32.const 0
local.get $newbsize
i32.store
memory.size
i32.const 16
i32.shl
local.set $memorybsize
local.get $newbsize
local.get $memorybsize
i32.gt_u
if
local.get $newbsize
local.get $memorybsize
i32.sub
i32.const 65535
i32.add
i32.const 16
i32.shr_u
memory.grow
i32.const -1
i32.eq
if
i32.const 5
call $exceptionHandler
end
end
local.get $inistack
)
(func $init (type $_t_i32)
 (param $t i32)
 (local $i i32)
 (local $merror i32)
i32.const 6128
;; Number of Main inputs
i32.const 7
i32.store
i32.const 6132
local.set $i
block
loop
local.get $i
i32.const 6160
i32.eq
br_if 1
local.get $i
i32.const 0
i32.store
local.get $i
i32.const 4
i32.add
local.set $i
br 0
end
end
i32.const 342208
i32.const 342212
i32.store
i32.const 16448
call $BuyerStageProof_13_create
drop
)
(func $getInputSignalMapPosition (type $_t_i64ri32)
 (param $hn i64)
(result i32)
 (local $ini i32)
 (local $i i32)
 (local $aux i32)
local.get $hn
i32.wrap_i64
i32.const 255
i32.and
local.set $ini
local.get $ini
local.set $i
block
loop
i32.const 2032
local.get $i
i32.const 16
i32.mul
i32.add
local.set $aux
local.get $aux
i64.load
local.get $hn
i64.eq
if
local.get $aux
return
end
local.get $aux
i64.load
i64.eqz
if
i32.const 0
return
end
local.get $i
i32.const 1
i32.add
i32.const 255
i32.and
local.set $i
local.get $i
local.get $ini
i32.eq
if
i32.const 0
return
end
br 0
end
end
i32.const 0
)
(func $checkIfInputSignalSet (type $_t_i32ri32)
 (param $sip i32)
(result i32)
i32.const 6132
local.get $sip
i32.add
i32.load
)
(func $setInputSignal (type $_t_i32i32i32)
 (param $hmsb i32)
 (param $hlsb i32)
 (param $pos i32)
 (local $ns i32) ;; number of signals to set
 (local $mp i32) ;; map position
 (local $sip i32) ;; signal+position number
 (local $sipm i32) ;; position in the signal memory
 (local $vint i32)
 (local $merror i32)
i32.const 6128
i32.load
local.set $ns
local.get $ns
i32.eqz
if
i32.const 2
call $exceptionHandler
else
local.get $hmsb
i64.extend_i32_u
i64.const 32
i64.shl
local.get $hlsb
i64.extend_i32_u
i64.or
call $getInputSignalMapPosition
local.tee $mp
i32.eqz
if
i32.const 1
call $exceptionHandler
else
local.get $pos
local.get $mp
i32.load offset=12
i32.ge_u
if
i32.const 6
call $exceptionHandler
else
local.get $mp
i32.load offset=8
local.get $pos
i32.add
local.tee $sip
i32.const 3
i32.sub
call $checkIfInputSignalSet
if
i32.const 3
call $exceptionHandler
else
local.get $sip
i32.const 40
i32.mul
i32.const 16408
i32.add
local.set $sipm
local.get $sipm
i32.const 1984
call $Fr_toInt
local.set $vint
local.get $vint
i32.store
local.get $sipm
i32.const 0
i32.store offset=4
local.get $sipm
i32.const 8
i32.add
call $Fr_int_zero
local.get $sipm
i32.const 1984
call $Fr_eqR
if
local.get $sipm
local.get $vint
i32.store
local.get $sipm
i32.const 0
i32.store offset=4
local.get $sipm
i32.const 8
i32.add
call $Fr_int_zero
else
local.get $sipm
i32.const 1984
call $Fr_copy
end
local.get $ns
i32.const -1
i32.add
local.set $ns
i32.const 6128
local.get $ns
i32.store
local.get $ns
i32.eqz
if
i32.const 342212
call $BuyerStageProof_13_run
local.tee $merror
if
local.get $merror
call $exceptionHandler
end
end
end
end
end
end
)
(func $getInputSignalSize (type $_t_i32i32ri32)
 (param $hmsb i32)
 (param $hlsb i32)
(result i32)
local.get $hmsb
i64.extend_i32_u
i64.const 32
i64.shl
local.get $hlsb
i64.extend_i32_u
i64.or
call $getInputSignalMapPosition
i32.load offset=12
)
(func $getRawPrime (type $_t_void)
i32.const 1952
i32.const 1992
call $Fr_int_copy
)
(func $getFieldNumLen32 (type $_t_ri32)
(result i32)
i32.const 8
)
(func $getInputSize (type $_t_ri32)
(result i32)
i32.const 7
)
(func $getWitnessSize (type $_t_ri32)
(result i32)
i32.const 2561
)
(func $getWitness (type $_t_i32)
 (param $p i32)
 (local $c i32)
i32.const 6160
local.get $p
i32.const 2
i32.shl
i32.add
i32.load
i32.const 40
i32.mul
i32.const 16408
i32.add
local.set $c
i32.const 1984
local.get $c
call $Fr_copy
i32.const 1984
call $Fr_toLongNormal
)
(func $copy32inSharedRWMemory (type $_t_i32)
 (param $p i32)
i32.const 1992
local.get $p
i32.store
i32.const 1992
i32.const 0
i32.store offset=4
i32.const 1992
i64.const 0
i64.store offset=8
i32.const 1992
i64.const 0
i64.store offset=16
i32.const 1992
i64.const 0
i64.store offset=24
)
(func $copyFr2SharedRWMemory (type $_t_i32)
 (param $p i32)
i32.const 1984
local.get $p
call $Fr_copy
i32.const 1984
call $Fr_toLongNormal
)
(func $getMessageChar (type $_t_ri32)
 (local $c i32)
i32.const 358680
i32.load
local.set $c
local.get $c
i32.const 256
i32.ge_u
if
i32.const 0
return
else
i32.const 358684
local.get $c
i32.add
i32.load8_u
i32.const 358680
local.get $c
i32.const 1
i32.add
i32.store
return
end
i32.const 0
)
(func $buildBufferMessage (type $_t_i32i32)
 (param $m i32)
 (param $l i32)
 (local $em i32)
 (local $bm i32)
 (local $mc i32)
 (local $p10 i32)
i32.const 358940
local.get $m
i32.const 240
i32.mul
i32.add
local.set $em
i32.const 358684
local.set $bm
block
loop
i32.const 358924
local.get $em
i32.eq
br_if 1
local.get $em
i32.load8_u
local.set $mc
local.get $mc
i32.eqz
br_if 1
local.get $bm
local.get $mc
i32.store8
local.get $em
i32.const 1
i32.add
local.set $em
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
local.get $bm
i32.const 0x20
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x6C
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x69
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x6E
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x65
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x3A
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $bm
i32.const 0x20
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
i32.const 1
local.set $p10
block
loop
local.get $p10
i32.const 10
i32.mul
local.get $l
i32.gt_u
br_if 1
local.get $p10
i32.const 10
i32.mul
local.set $p10
br 0
end
end
block
loop
local.get $p10
i32.eqz
br_if 1
local.get $bm
local.get $l
local.get $p10
i32.div_u
i32.const 0x30
i32.add
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
local.get $l
local.get $p10
i32.rem_u
local.set $l
local.get $p10
i32.const 10
i32.div_u
local.set $p10
br 0
end
end
block
loop
local.get $bm
i32.const 358940
i32.eq
br_if 1
local.get $bm
i32.const 0
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
i32.const 358680
i32.const 0
i32.store
)
(func $buildLogMessage (type $_t_i32)
 (param $m i32)
 (local $em i32)
 (local $bm i32)
 (local $mc i32)
local.get $m
local.set $em
i32.const 358684
local.set $bm
block
loop
i32.const 358924
local.get $em
i32.eq
br_if 1
local.get $em
i32.load8_u
local.set $mc
local.get $mc
i32.eqz
br_if 1
local.get $bm
local.get $mc
i32.store8
local.get $em
i32.const 1
i32.add
local.set $em
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
block
loop
local.get $bm
i32.const 358940
i32.eq
br_if 1
local.get $bm
i32.const 0
i32.store8
local.get $bm
i32.const 1
i32.add
local.set $bm
br 0
end
end
i32.const 358680
i32.const 0
i32.store
)
(func $Num2Bits_0_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 0
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Num2Bits_0_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 400
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362300
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 28
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362380
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 31
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362300
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 32
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(SHIFT_R)
call $Fr_shr
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(BITAND)
call $Fr_band
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 362340
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 0
i32.const 33
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 0
i32.const 38
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $IsZero_1_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 1
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 1
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $IsZero_1_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 160
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 362340
;; end of value bucket
;; OP(NOT_EQ)
call $Fr_neq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 32
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; value bucket
i32.const 362340
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 1
i32.const 33
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Edwards2Montgomery_2_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 2
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Edwards2Montgomery_2_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 34
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 35
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 2
i32.const 38
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 2
i32.const 39
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MontgomeryDouble_3_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 3
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $MontgomeryDouble_3_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 480
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362420
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 127
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362460
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 129
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362500
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 130
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362380
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 135
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 137
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362540
;; end of value bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362580
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362620
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362620
;; end of value bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362540
;; end of value bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; value bucket
i32.const 362580
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 3
i32.const 138
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 140
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; value bucket
i32.const 362500
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362620
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 141
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $MontgomeryAdd_4_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 4
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 4
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $MontgomeryAdd_4_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 160
i32.add
local.set $expaux
i32.const 440
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 94
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362420
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362460
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362500
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362380
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 102
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 4
i32.const 103
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 105
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; value bucket
i32.const 362500
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 106
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Multiplexor2_5_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 5
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 5
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Multiplexor2_5_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 200
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 30
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 31
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $BitElementMulAny_6_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 6
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 5
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 24
i32.add
i32.store
local.get $offset
)
(func $BitElementMulAny_6_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 80
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 640
local.get $signalstart
i32.add
call $MontgomeryDouble_3_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 360
local.get $signalstart
i32.add
call $MontgomeryAdd_4_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 880
local.get $signalstart
i32.add
call $Multiplexor2_5_create
i32.store
;; end create component bucket
;; store bucket. Line 46
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 6
i32.const 46
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_3_run
local.tee $merror
if
i32.const 6
i32.const 48
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 49
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_3_run
local.tee $merror
if
i32.const 6
i32.const 49
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 50
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_4_run
local.tee $merror
if
i32.const 6
i32.const 50
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 51
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_4_run
local.tee $merror
if
i32.const 6
i32.const 51
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 52
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_4_run
local.tee $merror
if
i32.const 6
i32.const 52
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 53
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryAdd_4_run
local.tee $merror
if
i32.const 6
i32.const 53
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 54
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 6
i32.const 54
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 55
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 6
i32.const 55
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 56
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 6
i32.const 56
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 57
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 6
i32.const 57
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 59
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 60
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 61
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 62
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Montgomery2Edwards_7_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 7
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 2
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $Montgomery2Edwards_7_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 53
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 54
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 7
i32.const 56
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 7
i32.const 57
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $BabyAdd_8_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 8
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 4
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 12
i32.add
i32.store
local.get $offset
)
(func $BabyAdd_8_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 400
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 37
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362420
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 38
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362460
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 40
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 41
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 42
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362660
;; end of value bucket
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 43
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 45
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362460
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362460
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 8
i32.const 46
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
;; store bucket. Line 48
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362420
;; end of value bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362460
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(DIV)
call $Fr_div
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; assert bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; compute bucket
local.get $expaux
i32.const 160
i32.add
;; value bucket
i32.const 362460
;; end of value bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 160
i32.add
;; end of compute bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 200
i32.add
;; value bucket
i32.const 362420
;; end of value bucket
;; load bucket
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 200
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
if
i32.const 8
i32.const 49
call $buildBufferMessage
call $printErrorMessage
i32.const 4
return
end
;; end of assert bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $SegmentMulAny_9_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 9
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 150
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 616
i32.add
i32.store
local.get $offset
)
(func $SegmentMulAny_9_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362700
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 6160
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 147
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $BitElementMulAny_6_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 1160
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 176680
local.get $signalstart
i32.add
call $Edwards2Montgomery_2_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 177520
local.get $signalstart
i32.add
call $Montgomery2Edwards_7_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 176840
local.get $signalstart
i32.add
call $BabyAdd_8_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 177240
local.get $signalstart
i32.add
call $Multiplexor2_5_create
i32.store
;; end create component bucket
;; store bucket. Line 80
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 152
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_2_run
local.tee $merror
if
i32.const 9
i32.const 80
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 81
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 153
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_2_run
local.tee $merror
if
i32.const 9
i32.const 81
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 83
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 86
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 86
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 87
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 87
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 88
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 88
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 89
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 147
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 89
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 90
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 90
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362380
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 92
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362740
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 95
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 96
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 96
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 97
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 98
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 99
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 9
i32.const 99
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 102
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 107
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_7_run
local.tee $merror
if
i32.const 9
i32.const 107
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 108
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 146
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_7_run
local.tee $merror
if
i32.const 9
i32.const 108
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 112
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 9
i32.const 112
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 113
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 9
i32.const 113
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 114
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 152
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 9
i32.const 114
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 115
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 153
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 9
i32.const 115
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 119
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 9
i32.const 119
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 120
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 9
i32.const 120
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 121
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 149
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 9
i32.const 121
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 122
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 9
i32.const 122
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 123
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 148
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 9
i32.const 123
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 125
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 150
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $SegmentMulAny_10_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 10
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 107
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 444
i32.add
i32.store
local.get $offset
)
(func $SegmentMulAny_10_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 80
i32.add
local.set $expaux
i32.const 240
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362820
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
local.set $createloopsubcmp
i32.const 4440
local.get $signalstart
i32.add
local.set $createloopoffset
i32.const 104
local.set $createloopcounter
block
loop
local.get $createloopsubcmp
local.get $createloopoffset
call $BitElementMulAny_6_create
i32.store
local.get $createloopcounter
i32.const 1
i32.sub
local.set $createloopcounter
local.get $createloopcounter
i32.eqz
br_if 1
local.get $createloopsubcmp
i32.const 4
i32.add
local.set $createloopsubcmp
local.get $createloopoffset
i32.const 1160
i32.add
local.set $createloopoffset
br 0
end
end
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 125080
local.get $signalstart
i32.add
call $Edwards2Montgomery_2_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 125920
local.get $signalstart
i32.add
call $Montgomery2Edwards_7_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 125240
local.get $signalstart
i32.add
call $BabyAdd_8_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 125640
local.get $signalstart
i32.add
call $Multiplexor2_5_create
i32.store
;; end create component bucket
;; store bucket. Line 80
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 109
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_2_run
local.tee $merror
if
i32.const 10
i32.const 80
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 81
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 110
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Edwards2Montgomery_2_run
local.tee $merror
if
i32.const 10
i32.const 81
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 83
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 86
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 86
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 87
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 87
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 88
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 88
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 89
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 104
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 89
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 90
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 90
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362380
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 92
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362860
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 95
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 95
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 96
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 96
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 97
;; getting dest
;; value bucket
i32.const 7
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 97
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 98
;; getting dest
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 98
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 99
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 4
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BitElementMulAny_6_run
local.tee $merror
if
i32.const 10
i32.const 99
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 92
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 102
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 103
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 103
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 103
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 107
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 103
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_7_run
local.tee $merror
if
i32.const 10
i32.const 107
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 108
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 103
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_7_run
local.tee $merror
if
i32.const 10
i32.const 108
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 112
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 10
i32.const 112
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 113
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 10
i32.const 113
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 114
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 109
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(PREFIX_SUB)
call $Fr_neg
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 10
i32.const 114
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 115
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 110
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 10
i32.const 115
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 119
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 10
i32.const 119
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 120
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 10
i32.const 120
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 121
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 106
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 10
i32.const 121
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 122
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 10
i32.const 122
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 123
;; getting dest
;; value bucket
i32.const 6
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 105
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Multiplexor2_5_run
local.tee $merror
if
i32.const 10
i32.const 123
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 125
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 126
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 107
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $EscalarMulAny_11_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 11
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 255
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 36
i32.add
i32.store
local.get $offset
)
(func $EscalarMulAny_11_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 240
i32.add
local.set $expaux
i32.const 520
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; store bucket. Line 0
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362300
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 11080
local.get $signalstart
i32.add
call $SegmentMulAny_9_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 188760
local.get $signalstart
i32.add
call $SegmentMulAny_10_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10680
local.get $signalstart
i32.add
call $MontgomeryDouble_3_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10920
local.get $signalstart
i32.add
call $Montgomery2Edwards_7_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 10280
local.get $signalstart
i32.add
call $BabyAdd_8_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 314840
local.get $signalstart
i32.add
call $IsZero_1_create
i32.store
;; end create component bucket
;; store bucket. Line 136
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362620
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 137
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362820
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 144
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 255
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $IsZero_1_run
local.tee $merror
if
i32.const 11
i32.const 144
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 146
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 147
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 148
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 150
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362620
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 152
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362700
;; end of value bucket
call $Fr_copy
;; end of store bucket
else
;; store bucket. Line 152
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362820
;; end of value bucket
call $Fr_copy
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 156
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 156
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 157
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=8
i32.load
;; compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; compute bucket
local.get $expaux
i32.const 40
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362700
;; end of value bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 40
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 11
i32.const 157
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 156
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; branch bucket
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362340
;; end of value bucket
;; OP(EQ(1))
call $Fr_eq
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
if
;; store bucket. Line 162
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=12
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 255
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362940
;; end of value bucket
;; load bucket
;; value bucket
i32.const 255
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 11
i32.const 162
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 163
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=12
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362980
;; end of value bucket
;; load bucket
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 11
i32.const 163
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
else
;; store bucket. Line 169
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=4
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_3_run
local.tee $merror
if
i32.const 11
i32.const 169
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 170
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=4
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $MontgomeryDouble_3_run
local.tee $merror
if
i32.const 11
i32.const 170
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 172
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_7_run
local.tee $merror
if
i32.const 11
i32.const 172
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 173
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 2
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Montgomery2Edwards_7_run
local.tee $merror
if
i32.const 11
i32.const 173
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 175
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=12
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 11
i32.const 175
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 176
;; getting dest
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=12
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 3
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
local.get $subcmp
i32.load
call_indirect $runsmap (type $_t_i32ri32)
local.tee $merror
if
i32.const 11
i32.const 176
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 179
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=0
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 11
i32.const 179
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 180
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=0
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 11
i32.const 180
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 185
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=0
i32.load
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 11
i32.const 185
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 186
;; getting dest
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmpload
local.get $subcmpload
i32.load
i32.const 4
i32.mul
i32.load offset=358560
i32.load offset=0
i32.load
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
i32.add
local.get $subcmpload
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $BabyAdd_8_run
local.tee $merror
if
i32.const 11
i32.const 186
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
end
;; end of branch bucket
;; store bucket. Line 150
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 194
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 195
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; compute bucket
local.get $expaux
i32.const 80
i32.add
;; compute bucket
local.get $expaux
i32.const 120
i32.add
;; value bucket
i32.const 362380
;; end of value bucket
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 4
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(SUB)
call $Fr_sub
local.get $expaux
i32.const 120
i32.add
;; end of compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 5
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
;; OP(MUL)
call $Fr_mul
local.get $expaux
i32.const 80
i32.add
;; end of compute bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $Ecdh_12_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 12
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 3
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 20
i32.add
i32.store
local.get $offset
)
(func $Ecdh_12_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 40
i32.add
local.set $expaux
i32.const 160
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 315160
local.get $signalstart
i32.add
call $Num2Bits_0_create
i32.store
;; end create component bucket
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 200
local.get $signalstart
i32.add
call $EscalarMulAny_11_create
i32.store
;; end create component bucket
;; store bucket. Line 12
;; getting dest
;; value bucket
i32.const 253
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Num2Bits_0_run
local.tee $merror
if
i32.const 12
i32.const 12
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 15
;; getting dest
;; value bucket
i32.const 255
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulAny_11_run
local.tee $merror
if
i32.const 12
i32.const 15
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 16
;; getting dest
;; value bucket
i32.const 256
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulAny_11_run
local.tee $merror
if
i32.const 12
i32.const 16
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 18
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; value bucket
i32.const 362340
;; end of value bucket
call $Fr_copy
;; end of store bucket
;; loop bucket. Line 18
block
loop
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362300
;; end of value bucket
;; OP(LESSER)
call $Fr_lt
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_isTrue
i32.eqz
br_if 1
;; store bucket. Line 19
;; getting dest
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 2
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; compute bucket
;; compute bucket
;; value bucket
i32.const 1
;; end of value bucket
;; compute bucket
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; OP(TO_ADDRESS)
call $Fr_toInt
;; end of compute bucket
;; OP(MUL_ADDRESS)
i32.mul
;; end of compute bucket
;; value bucket
i32.const 0
;; end of value bucket
;; OP(ADD_ADDRESS)
i32.add
;; end of compute bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $EscalarMulAny_11_run
local.tee $merror
if
i32.const 12
i32.const 19
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 18
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $lvar
i32.add
;; end of load bucket
;; value bucket
i32.const 362380
;; end of value bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
br 0
end
end
;; end of loop bucket
;; store bucket. Line 22
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 23
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 1
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(func $BuyerStageProof_13_create (type $_t_i32ri32)
 (param $signaloffset i32)
(result i32)
 (local $offset i32)
 (local $merror i32)
i32.const 342208
i32.load
local.set $offset
local.get $offset
i32.const 13
i32.store
local.get $offset
local.get $signaloffset
i32.store offset=4
local.get $offset
i32.const 7
i32.store offset=8
i32.const 342208
local.get $offset
i32.const 16
i32.add
i32.store
local.get $offset
)
(func $BuyerStageProof_13_run (type $_t_i32ri32)
 (param $offset i32)
(result i32)
 (local $cstack i32)
 (local $signalstart i32)
 (local $subcmp i32)
 (local $subcmpload i32)
 (local $ioinfo i32)
 (local $lvar i32)
 (local $expaux i32)
 (local $temp i32)
 (local $aux0 i32)
 (local $aux1 i32)
 (local $aux2 i32)
 (local $counter i32)
 (local $storeaux1 i32)
 (local $storeaux2 i32)
 (local $copycounter i32)
 (local $calllvar i32)
 (local $createloopsubcmp i32)
 (local $createloopoffset i32)
 (local $createloopcounter i32)
 (local $merror i32)
i32.const 0
i32.load
local.set $lvar
local.get $lvar
i32.const 0
i32.add
local.set $expaux
i32.const 120
call $reserveStackFr
local.set $cstack
;; start of the template code
local.get $offset
i32.const 4
i32.add
i32.load
local.set $signalstart
;; create component bucket
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.const 440
local.get $signalstart
i32.add
call $Ecdh_12_create
i32.store
;; end create component bucket
;; store bucket. Line 19
;; getting dest
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Ecdh_12_run
local.tee $merror
if
i32.const 13
i32.const 19
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 20
;; getting dest
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 3
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Ecdh_12_run
local.tee $merror
if
i32.const 13
i32.const 20
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 21
;; getting dest
;; value bucket
i32.const 2
;; end of value bucket
i32.const 40
i32.mul
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
local.set $subcmp
local.get $subcmp
i32.const 4
i32.add
i32.load
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 8
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
call $Fr_copy
;; decrease counter
local.get $subcmp
local.get $subcmp
i32.load offset=8
i32.const 1
i32.sub
i32.store offset=8
;; check if run is needed
local.get $subcmp
i32.load offset=8
i32.eqz
if
;; run sub component
local.get $subcmp
call $Ecdh_12_run
local.tee $merror
if
i32.const 13
i32.const 21
call $buildBufferMessage
call $printErrorMessage
local.get $merror
return
end
;; end run sub component
end
;; end of store bucket
;; store bucket. Line 23
;; getting dest
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 24
;; getting dest
;; value bucket
i32.const 10
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; load bucket
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
;; is subcomponent
local.get $offset
i32.const 12
i32.add
;; value bucket
i32.const 0
;; end of value bucket
i32.const 4
i32.mul
i32.add
i32.load
i32.const 4
i32.add
i32.load
i32.add
;; end of load bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 27
;; getting dest
;; value bucket
i32.const 0
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 4
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 9
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
;; store bucket. Line 28
;; getting dest
;; value bucket
i32.const 1
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; getting src
;; compute bucket
local.get $expaux
i32.const 0
i32.add
;; load bucket
;; value bucket
i32.const 5
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; load bucket
;; value bucket
i32.const 10
;; end of value bucket
i32.const 40
i32.mul
local.get $signalstart
i32.add
;; end of load bucket
;; OP(ADD)
call $Fr_add
local.get $expaux
i32.const 0
i32.add
;; end of compute bucket
call $Fr_copy
;; end of store bucket
i32.const 0
local.get $cstack
i32.store
i32.const 0
)
(table $runsmap 14 14 funcref)
(elem $runsmap (i32.const 0)
 $Num2Bits_0_run
 $IsZero_1_run
 $Edwards2Montgomery_2_run
 $MontgomeryDouble_3_run
 $MontgomeryAdd_4_run
 $Multiplexor2_5_run
 $BitElementMulAny_6_run
 $Montgomery2Edwards_7_run
 $BabyAdd_8_run
 $SegmentMulAny_9_run
 $SegmentMulAny_10_run
 $EscalarMulAny_11_run
 $Ecdh_12_run
 $BuyerStageProof_13_run
)
(data (i32.const 88) "\fe\00\00\00\00\00\00\00")
(data (i32.const 128) "\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 608) "\01\00\00\f0\93\f5\e1C\91p\b9yH\e83(]X\81\81\b6EP\b8)\a01\e1rNd0")
(data (i32.const 640) "\fb\ff\ffO\1c4\96\ac)\cd`\9f\95v\fc6.Fyxo\a3nf/\df\07\9a\c1w\0a\0e")
(data (i32.const 672) "\a7m!\aeE\e6\b8\1b\e3Y\5c\e3\b1:\feS\85\80\bbS=\83I\8c\a5DN\7f\b1\d0\16\02")
(data (i32.const 704) "@\00\bf\b4\e1\d8\94^\b8\b6\fb\1c\be\9cH*\ed\cf\9f\a1d\c6<\89|e\cc\7fKY\f8\0c")
(data (i32.const 736) "\fb\ff\ffO\1c4\96\ac)\cd`\9f\95v\fc6.Fyxo\a3nf/\df\07\9a\c1w\0a\0e")
(data (i32.const 768) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 800) "\00\00\00\f8\c9\fa\f0\a1H\b8\dc<$\f4\19\94.\ac\c0@\db\22(\dc\14\d0\98p9'2\18")
(data (i32.const 832) "\01\00\00\f8\c9\fa\f0\a1H\b8\dc<$\f4\19\94.\ac\c0@\db\22(\dc\14\d0\98p9'2\18")
(data (i32.const 864) "\e6\ff\ff\9f\f9\0e\0d\1b?\91*\a3\a3h\ba\ea\89\06\dd\d8v\eb\d8G\c3\bb\f5 U\08\d0\15")
(data (i32.const 896) "?Y\1f>\14\09\97\9b\87\84>\83\d2\85\15\18h[\04\85\9b\02\1a\13.\e7D\06\03\00\00\00")
(data (i32.const 928) "\9c=\d1\80Usnc\d6\ffE$t\f3+\a2\d8\03\b2\1e\c0*EV\e7\f9c)\94\ef`\18")
(data (i32.const 960) "\a0\ac\0f\1f\8a\84\cb\cdCB\9fA\e9\c2\0a\0c\b4-\82\c2M\01\8d\09\97s\22\83\01\00\00\00")
(data (i32.const 1920) "\00\00\00\f8\c9\fa\f0\a1H\b8\dc<$\f4\19\94.\ac\c0@\db\22(\dc\14\d0\98p9'2\18")
(data (i32.const 0) "\0c\8a\05\00")
(data (i32.const 1952) "\01\00\00\f0\93\f5\e1\43\91\70\b9\79\48\e8\33\28\5d\58\81\81\b6\45\50\b8\29\a0\31\e1\72\4e\64\30")
(data (i32.const 1984) "\00\00\00\00\00\00\00\80")
(data (i32.const 2032) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\40\46\0b\34\1a\73\f5\5d\05\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\70\1c\50\53\18\4c\17\8f\03\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d3\01\d2\11\94\5b\de\80\07\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\dc\8b\86\e2\4e\15\e7\91\09\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 6160) "\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\13\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\1f\00\00\00\20\00\00\00\21\00\00\00\22\00\00\00\23\00\00\00\24\00\00\00\25\00\00\00\26\00\00\00\27\00\00\00\28\00\00\00\29\00\00\00\2a\00\00\00\2b\00\00\00\2c\00\00\00\2d\00\00\00\2e\00\00\00\2f\00\00\00\30\00\00\00\31\00\00\00\32\00\00\00\33\00\00\00\34\00\00\00\35\00\00\00\36\00\00\00\37\00\00\00\38\00\00\00\39\00\00\00\3a\00\00\00\3b\00\00\00\3c\00\00\00\3d\00\00\00\3e\00\00\00\3f\00\00\00\40\00\00\00\41\00\00\00\42\00\00\00\43\00\00\00\44\00\00\00\45\00\00\00\46\00\00\00\47\00\00\00\48\00\00\00\49\00\00\00\4a\00\00\00\4b\00\00\00\4c\00\00\00\4d\00\00\00\4e\00\00\00\4f\00\00\00\50\00\00\00\51\00\00\00\52\00\00\00\53\00\00\00\54\00\00\00\55\00\00\00\56\00\00\00\57\00\00\00\58\00\00\00\59\00\00\00\5a\00\00\00\5b\00\00\00\5c\00\00\00\5d\00\00\00\5e\00\00\00\5f\00\00\00\60\00\00\00\61\00\00\00\62\00\00\00\63\00\00\00\64\00\00\00\65\00\00\00\66\00\00\00\67\00\00\00\68\00\00\00\69\00\00\00\6a\00\00\00\6b\00\00\00\6c\00\00\00\6d\00\00\00\6e\00\00\00\6f\00\00\00\70\00\00\00\71\00\00\00\72\00\00\00\73\00\00\00\74\00\00\00\75\00\00\00\76\00\00\00\77\00\00\00\78\00\00\00\79\00\00\00\7a\00\00\00\7b\00\00\00\7c\00\00\00\7d\00\00\00\7e\00\00\00\7f\00\00\00\80\00\00\00\81\00\00\00\82\00\00\00\83\00\00\00\84\00\00\00\85\00\00\00\86\00\00\00\87\00\00\00\88\00\00\00\89\00\00\00\8a\00\00\00\8b\00\00\00\8c\00\00\00\8d\00\00\00\8e\00\00\00\8f\00\00\00\90\00\00\00\91\00\00\00\92\00\00\00\93\00\00\00\94\00\00\00\95\00\00\00\96\00\00\00\97\00\00\00\98\00\00\00\99\00\00\00\9a\00\00\00\9b\00\00\00\9c\00\00\00\9d\00\00\00\9e\00\00\00\9f\00\00\00\a0\00\00\00\a1\00\00\00\a2\00\00\00\a3\00\00\00\a4\00\00\00\a5\00\00\00\a6\00\00\00\a7\00\00\00\a8\00\00\00\a9\00\00\00\aa\00\00\00\ab\00\00\00\ac\00\00\00\ad\00\00\00\ae\00\00\00\af\00\00\00\b0\00\00\00\b1\00\00\00\b2\00\00\00\b3\00\00\00\b4\00\00\00\b5\00\00\00\b6\00\00\00\b7\00\00\00\b8\00\00\00\b9\00\00\00\ba\00\00\00\bb\00\00\00\bc\00\00\00\bd\00\00\00\be\00\00\00\bf\00\00\00\c0\00\00\00\c1\00\00\00\c2\00\00\00\c3\00\00\00\c4\00\00\00\c5\00\00\00\c6\00\00\00\c7\00\00\00\c8\00\00\00\c9\00\00\00\ca\00\00\00\cb\00\00\00\cc\00\00\00\cd\00\00\00\ce\00\00\00\cf\00\00\00\d0\00\00\00\d1\00\00\00\d2\00\00\00\d3\00\00\00\d4\00\00\00\d5\00\00\00\d6\00\00\00\d7\00\00\00\d8\00\00\00\d9\00\00\00\da\00\00\00\db\00\00\00\dc\00\00\00\dd\00\00\00\de\00\00\00\df\00\00\00\e0\00\00\00\e1\00\00\00\e2\00\00\00\e3\00\00\00\e4\00\00\00\e5\00\00\00\e6\00\00\00\e7\00\00\00\e8\00\00\00\e9\00\00\00\ea\00\00\00\eb\00\00\00\ec\00\00\00\ed\00\00\00\ee\00\00\00\ef\00\00\00\f0\00\00\00\f1\00\00\00\f2\00\00\00\f3\00\00\00\f4\00\00\00\f5\00\00\00\f6\00\00\00\f7\00\00\00\f8\00\00\00\f9\00\00\00\fa\00\00\00\fb\00\00\00\fc\00\00\00\fd\00\00\00\fe\00\00\00\ff\00\00\00\00\01\00\00\01\01\00\00\02\01\00\00\03\01\00\00\04\01\00\00\05\01\00\00\06\01\00\00\07\01\00\00\08\01\00\00\09\01\00\00\0a\01\00\00\0b\01\00\00\0c\01\00\00\0d\01\00\00\0e\01\00\00\12\01\00\00\13\01\00\00\14\01\00\00\15\01\00\00\16\01\00\00\17\01\00\00\18\01\00\00\19\01\00\00\1a\01\00\00\1b\01\00\00\1c\01\00\00\1d\01\00\00\1e\01\00\00\1f\01\00\00\20\01\00\00\21\01\00\00\22\01\00\00\23\01\00\00\be\01\00\00\bf\01\00\00\c0\01\00\00\c1\01\00\00\c2\01\00\00\c3\01\00\00\c5\01\00\00\c6\01\00\00\c9\01\00\00\ca\01\00\00\cf\01\00\00\d4\01\00\00\d5\01\00\00\dd\01\00\00\de\01\00\00\df\01\00\00\e0\01\00\00\e6\01\00\00\e7\01\00\00\ec\01\00\00\f1\01\00\00\f2\01\00\00\fa\01\00\00\fb\01\00\00\fc\01\00\00\fd\01\00\00\03\02\00\00\04\02\00\00\09\02\00\00\0e\02\00\00\0f\02\00\00\17\02\00\00\18\02\00\00\19\02\00\00\1a\02\00\00\20\02\00\00\21\02\00\00\26\02\00\00\2b\02\00\00\2c\02\00\00\34\02\00\00\35\02\00\00\36\02\00\00\37\02\00\00\3d\02\00\00\3e\02\00\00\43\02\00\00\48\02\00\00\49\02\00\00\51\02\00\00\52\02\00\00\53\02\00\00\54\02\00\00\5a\02\00\00\5b\02\00\00\60\02\00\00\65\02\00\00\66\02\00\00\6e\02\00\00\6f\02\00\00\70\02\00\00\71\02\00\00\77\02\00\00\78\02\00\00\7d\02\00\00\82\02\00\00\83\02\00\00\8b\02\00\00\8c\02\00\00\8d\02\00\00\8e\02\00\00\94\02\00\00\95\02\00\00\9a\02\00\00\9f\02\00\00\a0\02\00\00\a8\02\00\00\a9\02\00\00\aa\02\00\00\ab\02\00\00\b1\02\00\00\b2\02\00\00\b7\02\00\00\bc\02\00\00\bd\02\00\00\c5\02\00\00\c6\02\00\00\c7\02\00\00\c8\02\00\00\ce\02\00\00\cf\02\00\00\d4\02\00\00\d9\02\00\00\da\02\00\00\e2\02\00\00\e3\02\00\00\e4\02\00\00\e5\02\00\00\eb\02\00\00\ec\02\00\00\f1\02\00\00\f6\02\00\00\f7\02\00\00\ff\02\00\00\00\03\00\00\01\03\00\00\02\03\00\00\08\03\00\00\09\03\00\00\0e\03\00\00\13\03\00\00\14\03\00\00\1c\03\00\00\1d\03\00\00\1e\03\00\00\1f\03\00\00\25\03\00\00\26\03\00\00\2b\03\00\00\30\03\00\00\31\03\00\00\39\03\00\00\3a\03\00\00\3b\03\00\00\3c\03\00\00\42\03\00\00\43\03\00\00\48\03\00\00\4d\03\00\00\4e\03\00\00\56\03\00\00\57\03\00\00\58\03\00\00\59\03\00\00\5f\03\00\00\60\03\00\00\65\03\00\00\6a\03\00\00\6b\03\00\00\73\03\00\00\74\03\00\00\75\03\00\00\76\03\00\00\7c\03\00\00\7d\03\00\00\82\03\00\00\87\03\00\00\88\03\00\00\90\03\00\00\91\03\00\00\92\03\00\00\93\03\00\00\99\03\00\00\9a\03\00\00\9f\03\00\00\a4\03\00\00\a5\03\00\00\ad\03\00\00\ae\03\00\00\af\03\00\00\b0\03\00\00\b6\03\00\00\b7\03\00\00\bc\03\00\00\c1\03\00\00\c2\03\00\00\ca\03\00\00\cb\03\00\00\cc\03\00\00\cd\03\00\00\d3\03\00\00\d4\03\00\00\d9\03\00\00\de\03\00\00\df\03\00\00\e7\03\00\00\e8\03\00\00\e9\03\00\00\ea\03\00\00\f0\03\00\00\f1\03\00\00\f6\03\00\00\fb\03\00\00\fc\03\00\00\04\04\00\00\05\04\00\00\06\04\00\00\07\04\00\00\0d\04\00\00\0e\04\00\00\13\04\00\00\18\04\00\00\19\04\00\00\21\04\00\00\22\04\00\00\23\04\00\00\24\04\00\00\2a\04\00\00\2b\04\00\00\30\04\00\00\35\04\00\00\36\04\00\00\3e\04\00\00\3f\04\00\00\40\04\00\00\41\04\00\00\47\04\00\00\48\04\00\00\4d\04\00\00\52\04\00\00\53\04\00\00\5b\04\00\00\5c\04\00\00\5d\04\00\00\5e\04\00\00\64\04\00\00\65\04\00\00\6a\04\00\00\6f\04\00\00\70\04\00\00\78\04\00\00\79\04\00\00\7a\04\00\00\7b\04\00\00\81\04\00\00\82\04\00\00\87\04\00\00\8c\04\00\00\8d\04\00\00\95\04\00\00\96\04\00\00\97\04\00\00\98\04\00\00\9e\04\00\00\9f\04\00\00\a4\04\00\00\a9\04\00\00\aa\04\00\00\b2\04\00\00\b3\04\00\00\b4\04\00\00\b5\04\00\00\bb\04\00\00\bc\04\00\00\c1\04\00\00\c6\04\00\00\c7\04\00\00\cf\04\00\00\d0\04\00\00\d1\04\00\00\d2\04\00\00\d8\04\00\00\d9\04\00\00\de\04\00\00\e3\04\00\00\e4\04\00\00\ec\04\00\00\ed\04\00\00\ee\04\00\00\ef\04\00\00\f5\04\00\00\f6\04\00\00\fb\04\00\00\00\05\00\00\01\05\00\00\09\05\00\00\0a\05\00\00\0b\05\00\00\0c\05\00\00\12\05\00\00\13\05\00\00\18\05\00\00\1d\05\00\00\1e\05\00\00\26\05\00\00\27\05\00\00\28\05\00\00\29\05\00\00\2f\05\00\00\30\05\00\00\35\05\00\00\3a\05\00\00\3b\05\00\00\43\05\00\00\44\05\00\00\45\05\00\00\46\05\00\00\4c\05\00\00\4d\05\00\00\52\05\00\00\57\05\00\00\58\05\00\00\60\05\00\00\61\05\00\00\62\05\00\00\63\05\00\00\69\05\00\00\6a\05\00\00\6f\05\00\00\74\05\00\00\75\05\00\00\7d\05\00\00\7e\05\00\00\7f\05\00\00\80\05\00\00\86\05\00\00\87\05\00\00\8c\05\00\00\91\05\00\00\92\05\00\00\9a\05\00\00\9b\05\00\00\9c\05\00\00\9d\05\00\00\a3\05\00\00\a4\05\00\00\a9\05\00\00\ae\05\00\00\af\05\00\00\b7\05\00\00\b8\05\00\00\b9\05\00\00\ba\05\00\00\c0\05\00\00\c1\05\00\00\c6\05\00\00\cb\05\00\00\cc\05\00\00\d4\05\00\00\d5\05\00\00\d6\05\00\00\d7\05\00\00\dd\05\00\00\de\05\00\00\e3\05\00\00\e8\05\00\00\e9\05\00\00\f1\05\00\00\f2\05\00\00\f3\05\00\00\f4\05\00\00\fa\05\00\00\fb\05\00\00\00\06\00\00\05\06\00\00\06\06\00\00\0e\06\00\00\0f\06\00\00\10\06\00\00\11\06\00\00\17\06\00\00\18\06\00\00\1d\06\00\00\22\06\00\00\23\06\00\00\2b\06\00\00\2c\06\00\00\2d\06\00\00\2e\06\00\00\34\06\00\00\35\06\00\00\3a\06\00\00\3f\06\00\00\40\06\00\00\48\06\00\00\49\06\00\00\4a\06\00\00\4b\06\00\00\51\06\00\00\52\06\00\00\57\06\00\00\5c\06\00\00\5d\06\00\00\65\06\00\00\66\06\00\00\67\06\00\00\68\06\00\00\6e\06\00\00\6f\06\00\00\74\06\00\00\79\06\00\00\7a\06\00\00\82\06\00\00\83\06\00\00\84\06\00\00\85\06\00\00\8b\06\00\00\8c\06\00\00\91\06\00\00\96\06\00\00\97\06\00\00\9f\06\00\00\a0\06\00\00\a1\06\00\00\a2\06\00\00\a8\06\00\00\a9\06\00\00\ae\06\00\00\b3\06\00\00\b4\06\00\00\bc\06\00\00\bd\06\00\00\be\06\00\00\bf\06\00\00\c5\06\00\00\c6\06\00\00\cb\06\00\00\d0\06\00\00\d1\06\00\00\d9\06\00\00\da\06\00\00\db\06\00\00\dc\06\00\00\e2\06\00\00\e3\06\00\00\e8\06\00\00\ed\06\00\00\ee\06\00\00\f6\06\00\00\f7\06\00\00\f8\06\00\00\f9\06\00\00\ff\06\00\00\00\07\00\00\05\07\00\00\0a\07\00\00\0b\07\00\00\13\07\00\00\14\07\00\00\15\07\00\00\16\07\00\00\1c\07\00\00\1d\07\00\00\22\07\00\00\27\07\00\00\28\07\00\00\30\07\00\00\31\07\00\00\32\07\00\00\33\07\00\00\39\07\00\00\3a\07\00\00\3f\07\00\00\44\07\00\00\45\07\00\00\4d\07\00\00\4e\07\00\00\4f\07\00\00\50\07\00\00\56\07\00\00\57\07\00\00\5c\07\00\00\61\07\00\00\62\07\00\00\6a\07\00\00\6b\07\00\00\6c\07\00\00\6d\07\00\00\73\07\00\00\74\07\00\00\79\07\00\00\7e\07\00\00\7f\07\00\00\87\07\00\00\88\07\00\00\89\07\00\00\8a\07\00\00\90\07\00\00\91\07\00\00\96\07\00\00\9b\07\00\00\9c\07\00\00\a4\07\00\00\a5\07\00\00\a6\07\00\00\a7\07\00\00\ad\07\00\00\ae\07\00\00\b3\07\00\00\b8\07\00\00\b9\07\00\00\c1\07\00\00\c2\07\00\00\c3\07\00\00\c4\07\00\00\ca\07\00\00\cb\07\00\00\d0\07\00\00\d5\07\00\00\d6\07\00\00\de\07\00\00\df\07\00\00\e0\07\00\00\e1\07\00\00\e7\07\00\00\e8\07\00\00\ed\07\00\00\f2\07\00\00\f3\07\00\00\fb\07\00\00\fc\07\00\00\fd\07\00\00\fe\07\00\00\04\08\00\00\05\08\00\00\0a\08\00\00\0f\08\00\00\10\08\00\00\18\08\00\00\19\08\00\00\1a\08\00\00\1b\08\00\00\21\08\00\00\22\08\00\00\27\08\00\00\2c\08\00\00\2d\08\00\00\35\08\00\00\36\08\00\00\37\08\00\00\38\08\00\00\3e\08\00\00\3f\08\00\00\44\08\00\00\49\08\00\00\4a\08\00\00\52\08\00\00\53\08\00\00\54\08\00\00\55\08\00\00\5b\08\00\00\5c\08\00\00\61\08\00\00\66\08\00\00\67\08\00\00\6f\08\00\00\70\08\00\00\71\08\00\00\72\08\00\00\78\08\00\00\79\08\00\00\7e\08\00\00\83\08\00\00\84\08\00\00\8c\08\00\00\8d\08\00\00\8e\08\00\00\8f\08\00\00\95\08\00\00\96\08\00\00\9b\08\00\00\a0\08\00\00\a1\08\00\00\a9\08\00\00\aa\08\00\00\ab\08\00\00\ac\08\00\00\b2\08\00\00\b3\08\00\00\b8\08\00\00\bd\08\00\00\be\08\00\00\c6\08\00\00\c7\08\00\00\c8\08\00\00\c9\08\00\00\cf\08\00\00\d0\08\00\00\d5\08\00\00\da\08\00\00\db\08\00\00\e3\08\00\00\e4\08\00\00\e5\08\00\00\e6\08\00\00\ec\08\00\00\ed\08\00\00\f2\08\00\00\f7\08\00\00\f8\08\00\00\00\09\00\00\01\09\00\00\02\09\00\00\03\09\00\00\09\09\00\00\0a\09\00\00\0f\09\00\00\14\09\00\00\15\09\00\00\1d\09\00\00\1e\09\00\00\1f\09\00\00\20\09\00\00\26\09\00\00\27\09\00\00\2c\09\00\00\31\09\00\00\32\09\00\00\3a\09\00\00\3b\09\00\00\3c\09\00\00\3d\09\00\00\43\09\00\00\44\09\00\00\49\09\00\00\4e\09\00\00\4f\09\00\00\57\09\00\00\58\09\00\00\59\09\00\00\5a\09\00\00\60\09\00\00\61\09\00\00\66\09\00\00\6b\09\00\00\6c\09\00\00\74\09\00\00\75\09\00\00\76\09\00\00\77\09\00\00\7d\09\00\00\7e\09\00\00\83\09\00\00\88\09\00\00\89\09\00\00\91\09\00\00\92\09\00\00\93\09\00\00\94\09\00\00\9a\09\00\00\9b\09\00\00\a0\09\00\00\a5\09\00\00\a6\09\00\00\ae\09\00\00\af\09\00\00\b0\09\00\00\b1\09\00\00\b7\09\00\00\b8\09\00\00\bd\09\00\00\c2\09\00\00\c3\09\00\00\cb\09\00\00\cc\09\00\00\cd\09\00\00\ce\09\00\00\d4\09\00\00\d5\09\00\00\da\09\00\00\df\09\00\00\e0\09\00\00\e8\09\00\00\e9\09\00\00\ea\09\00\00\eb\09\00\00\f1\09\00\00\f2\09\00\00\f7\09\00\00\fc\09\00\00\fd\09\00\00\05\0a\00\00\06\0a\00\00\07\0a\00\00\08\0a\00\00\0e\0a\00\00\0f\0a\00\00\14\0a\00\00\19\0a\00\00\1a\0a\00\00\22\0a\00\00\23\0a\00\00\24\0a\00\00\25\0a\00\00\2b\0a\00\00\2c\0a\00\00\31\0a\00\00\36\0a\00\00\37\0a\00\00\3f\0a\00\00\40\0a\00\00\41\0a\00\00\42\0a\00\00\48\0a\00\00\49\0a\00\00\4e\0a\00\00\53\0a\00\00\54\0a\00\00\5c\0a\00\00\5d\0a\00\00\5e\0a\00\00\5f\0a\00\00\65\0a\00\00\66\0a\00\00\6b\0a\00\00\70\0a\00\00\71\0a\00\00\79\0a\00\00\7a\0a\00\00\7b\0a\00\00\7c\0a\00\00\82\0a\00\00\83\0a\00\00\88\0a\00\00\8d\0a\00\00\8e\0a\00\00\96\0a\00\00\97\0a\00\00\98\0a\00\00\99\0a\00\00\9f\0a\00\00\a0\0a\00\00\a5\0a\00\00\aa\0a\00\00\ab\0a\00\00\b3\0a\00\00\b4\0a\00\00\b5\0a\00\00\b6\0a\00\00\bc\0a\00\00\bd\0a\00\00\c2\0a\00\00\c7\0a\00\00\c8\0a\00\00\d0\0a\00\00\d1\0a\00\00\d2\0a\00\00\d3\0a\00\00\d9\0a\00\00\da\0a\00\00\df\0a\00\00\e4\0a\00\00\e5\0a\00\00\ed\0a\00\00\ee\0a\00\00\ef\0a\00\00\f0\0a\00\00\f6\0a\00\00\f7\0a\00\00\fc\0a\00\00\01\0b\00\00\02\0b\00\00\0a\0b\00\00\0b\0b\00\00\0c\0b\00\00\0d\0b\00\00\13\0b\00\00\14\0b\00\00\19\0b\00\00\1e\0b\00\00\1f\0b\00\00\27\0b\00\00\28\0b\00\00\29\0b\00\00\2a\0b\00\00\30\0b\00\00\31\0b\00\00\36\0b\00\00\3b\0b\00\00\3c\0b\00\00\44\0b\00\00\45\0b\00\00\46\0b\00\00\47\0b\00\00\4d\0b\00\00\4e\0b\00\00\53\0b\00\00\58\0b\00\00\59\0b\00\00\61\0b\00\00\62\0b\00\00\63\0b\00\00\64\0b\00\00\6a\0b\00\00\6b\0b\00\00\70\0b\00\00\75\0b\00\00\76\0b\00\00\7e\0b\00\00\7f\0b\00\00\80\0b\00\00\81\0b\00\00\87\0b\00\00\88\0b\00\00\8d\0b\00\00\92\0b\00\00\93\0b\00\00\9b\0b\00\00\9c\0b\00\00\9d\0b\00\00\9e\0b\00\00\a4\0b\00\00\a5\0b\00\00\aa\0b\00\00\af\0b\00\00\b0\0b\00\00\b8\0b\00\00\b9\0b\00\00\ba\0b\00\00\bb\0b\00\00\c1\0b\00\00\c2\0b\00\00\c7\0b\00\00\cc\0b\00\00\cd\0b\00\00\d5\0b\00\00\d6\0b\00\00\d7\0b\00\00\d8\0b\00\00\de\0b\00\00\df\0b\00\00\e4\0b\00\00\e9\0b\00\00\ea\0b\00\00\f2\0b\00\00\f3\0b\00\00\f4\0b\00\00\f5\0b\00\00\fb\0b\00\00\fc\0b\00\00\01\0c\00\00\06\0c\00\00\07\0c\00\00\0f\0c\00\00\10\0c\00\00\11\0c\00\00\12\0c\00\00\18\0c\00\00\19\0c\00\00\1e\0c\00\00\23\0c\00\00\24\0c\00\00\2c\0c\00\00\2d\0c\00\00\2e\0c\00\00\2f\0c\00\00\35\0c\00\00\36\0c\00\00\3b\0c\00\00\40\0c\00\00\41\0c\00\00\49\0c\00\00\4a\0c\00\00\4b\0c\00\00\4c\0c\00\00\52\0c\00\00\53\0c\00\00\58\0c\00\00\5d\0c\00\00\5e\0c\00\00\66\0c\00\00\67\0c\00\00\68\0c\00\00\69\0c\00\00\6f\0c\00\00\70\0c\00\00\75\0c\00\00\7a\0c\00\00\7b\0c\00\00\83\0c\00\00\84\0c\00\00\85\0c\00\00\86\0c\00\00\8c\0c\00\00\8d\0c\00\00\92\0c\00\00\97\0c\00\00\98\0c\00\00\a0\0c\00\00\a1\0c\00\00\a2\0c\00\00\a3\0c\00\00\a9\0c\00\00\aa\0c\00\00\af\0c\00\00\b4\0c\00\00\b5\0c\00\00\bd\0c\00\00\be\0c\00\00\bf\0c\00\00\c0\0c\00\00\c6\0c\00\00\c7\0c\00\00\cc\0c\00\00\d1\0c\00\00\d2\0c\00\00\da\0c\00\00\db\0c\00\00\dc\0c\00\00\dd\0c\00\00\e3\0c\00\00\e4\0c\00\00\e9\0c\00\00\ee\0c\00\00\ef\0c\00\00\f7\0c\00\00\f8\0c\00\00\f9\0c\00\00\fa\0c\00\00\00\0d\00\00\01\0d\00\00\06\0d\00\00\0b\0d\00\00\0c\0d\00\00\14\0d\00\00\15\0d\00\00\16\0d\00\00\17\0d\00\00\1d\0d\00\00\1e\0d\00\00\23\0d\00\00\28\0d\00\00\29\0d\00\00\31\0d\00\00\32\0d\00\00\33\0d\00\00\34\0d\00\00\3a\0d\00\00\3b\0d\00\00\40\0d\00\00\45\0d\00\00\46\0d\00\00\4e\0d\00\00\4f\0d\00\00\50\0d\00\00\51\0d\00\00\57\0d\00\00\58\0d\00\00\5d\0d\00\00\62\0d\00\00\63\0d\00\00\6b\0d\00\00\6c\0d\00\00\6d\0d\00\00\6e\0d\00\00\74\0d\00\00\75\0d\00\00\7a\0d\00\00\7f\0d\00\00\80\0d\00\00\88\0d\00\00\89\0d\00\00\8a\0d\00\00\8b\0d\00\00\91\0d\00\00\92\0d\00\00\97\0d\00\00\9c\0d\00\00\9d\0d\00\00\a5\0d\00\00\a6\0d\00\00\a7\0d\00\00\a8\0d\00\00\ae\0d\00\00\af\0d\00\00\b4\0d\00\00\b9\0d\00\00\ba\0d\00\00\c2\0d\00\00\c3\0d\00\00\c4\0d\00\00\c5\0d\00\00\cb\0d\00\00\cc\0d\00\00\d1\0d\00\00\d6\0d\00\00\d7\0d\00\00\df\0d\00\00\e0\0d\00\00\e1\0d\00\00\e2\0d\00\00\e8\0d\00\00\e9\0d\00\00\ee\0d\00\00\f3\0d\00\00\f4\0d\00\00\fc\0d\00\00\fd\0d\00\00\fe\0d\00\00\ff\0d\00\00\05\0e\00\00\06\0e\00\00\0b\0e\00\00\10\0e\00\00\11\0e\00\00\19\0e\00\00\1a\0e\00\00\1b\0e\00\00\1c\0e\00\00\22\0e\00\00\23\0e\00\00\28\0e\00\00\2d\0e\00\00\2e\0e\00\00\36\0e\00\00\37\0e\00\00\38\0e\00\00\39\0e\00\00\3f\0e\00\00\40\0e\00\00\45\0e\00\00\4a\0e\00\00\4b\0e\00\00\53\0e\00\00\54\0e\00\00\55\0e\00\00\56\0e\00\00\5c\0e\00\00\5d\0e\00\00\62\0e\00\00\67\0e\00\00\68\0e\00\00\70\0e\00\00\71\0e\00\00\72\0e\00\00\73\0e\00\00\79\0e\00\00\7a\0e\00\00\7f\0e\00\00\84\0e\00\00\85\0e\00\00\8d\0e\00\00\8e\0e\00\00\8f\0e\00\00\90\0e\00\00\96\0e\00\00\97\0e\00\00\9c\0e\00\00\a1\0e\00\00\a2\0e\00\00\aa\0e\00\00\ab\0e\00\00\ac\0e\00\00\ad\0e\00\00\b3\0e\00\00\b4\0e\00\00\b9\0e\00\00\be\0e\00\00\bf\0e\00\00\c7\0e\00\00\c8\0e\00\00\c9\0e\00\00\ca\0e\00\00\d0\0e\00\00\d1\0e\00\00\d6\0e\00\00\db\0e\00\00\dc\0e\00\00\e4\0e\00\00\e5\0e\00\00\e6\0e\00\00\e7\0e\00\00\ed\0e\00\00\ee\0e\00\00\f3\0e\00\00\f8\0e\00\00\f9\0e\00\00\01\0f\00\00\02\0f\00\00\03\0f\00\00\04\0f\00\00\0a\0f\00\00\0b\0f\00\00\10\0f\00\00\15\0f\00\00\16\0f\00\00\1e\0f\00\00\1f\0f\00\00\20\0f\00\00\21\0f\00\00\27\0f\00\00\28\0f\00\00\2d\0f\00\00\32\0f\00\00\33\0f\00\00\3b\0f\00\00\3c\0f\00\00\3d\0f\00\00\3e\0f\00\00\44\0f\00\00\45\0f\00\00\4a\0f\00\00\4f\0f\00\00\50\0f\00\00\58\0f\00\00\59\0f\00\00\5a\0f\00\00\5b\0f\00\00\61\0f\00\00\62\0f\00\00\67\0f\00\00\6c\0f\00\00\6d\0f\00\00\75\0f\00\00\76\0f\00\00\77\0f\00\00\78\0f\00\00\7e\0f\00\00\7f\0f\00\00\84\0f\00\00\89\0f\00\00\8a\0f\00\00\92\0f\00\00\93\0f\00\00\94\0f\00\00\95\0f\00\00\9b\0f\00\00\9c\0f\00\00\a1\0f\00\00\a6\0f\00\00\a7\0f\00\00\af\0f\00\00\b0\0f\00\00\b1\0f\00\00\b2\0f\00\00\b8\0f\00\00\b9\0f\00\00\be\0f\00\00\c3\0f\00\00\c4\0f\00\00\cc\0f\00\00\cd\0f\00\00\ce\0f\00\00\cf\0f\00\00\d5\0f\00\00\d6\0f\00\00\db\0f\00\00\e0\0f\00\00\e1\0f\00\00\e9\0f\00\00\ea\0f\00\00\eb\0f\00\00\ec\0f\00\00\f2\0f\00\00\f3\0f\00\00\f8\0f\00\00\fd\0f\00\00\fe\0f\00\00\06\10\00\00\07\10\00\00\08\10\00\00\09\10\00\00\0f\10\00\00\10\10\00\00\15\10\00\00\1a\10\00\00\1b\10\00\00\23\10\00\00\24\10\00\00\25\10\00\00\26\10\00\00\2c\10\00\00\2d\10\00\00\32\10\00\00\37\10\00\00\38\10\00\00\40\10\00\00\41\10\00\00\42\10\00\00\43\10\00\00\49\10\00\00\4a\10\00\00\4f\10\00\00\54\10\00\00\55\10\00\00\5d\10\00\00\5e\10\00\00\5f\10\00\00\60\10\00\00\66\10\00\00\67\10\00\00\6c\10\00\00\71\10\00\00\72\10\00\00\7a\10\00\00\7b\10\00\00\7c\10\00\00\7d\10\00\00\83\10\00\00\84\10\00\00\89\10\00\00\8e\10\00\00\8f\10\00\00\97\10\00\00\98\10\00\00\99\10\00\00\9a\10\00\00\a0\10\00\00\a1\10\00\00\a6\10\00\00\ab\10\00\00\ac\10\00\00\b4\10\00\00\b5\10\00\00\b6\10\00\00\b7\10\00\00\bd\10\00\00\be\10\00\00\c3\10\00\00\c8\10\00\00\c9\10\00\00\d1\10\00\00\d2\10\00\00\d3\10\00\00\d4\10\00\00\da\10\00\00\db\10\00\00\e0\10\00\00\e5\10\00\00\e6\10\00\00\ee\10\00\00\ef\10\00\00\f0\10\00\00\f1\10\00\00\f7\10\00\00\f8\10\00\00\fd\10\00\00\02\11\00\00\03\11\00\00\0b\11\00\00\0c\11\00\00\0d\11\00\00\0e\11\00\00\14\11\00\00\15\11\00\00\1a\11\00\00\1f\11\00\00\20\11\00\00\28\11\00\00\29\11\00\00\2a\11\00\00\2b\11\00\00\31\11\00\00\32\11\00\00\37\11\00\00\3c\11\00\00\3d\11\00\00\45\11\00\00\46\11\00\00\47\11\00\00\48\11\00\00\4e\11\00\00\4f\11\00\00\54\11\00\00\59\11\00\00\5a\11\00\00\62\11\00\00\63\11\00\00\64\11\00\00\65\11\00\00\6b\11\00\00\6c\11\00\00\71\11\00\00\76\11\00\00\77\11\00\00\7f\11\00\00\80\11\00\00\81\11\00\00\82\11\00\00\88\11\00\00\89\11\00\00\8e\11\00\00\93\11\00\00\94\11\00\00\9c\11\00\00\9d\11\00\00\9e\11\00\00\9f\11\00\00\a5\11\00\00\a6\11\00\00\ab\11\00\00\b0\11\00\00\b1\11\00\00\b9\11\00\00\ba\11\00\00\bb\11\00\00\bc\11\00\00\c2\11\00\00\c3\11\00\00\c8\11\00\00\cd\11\00\00\ce\11\00\00\d6\11\00\00\d7\11\00\00\d8\11\00\00\d9\11\00\00\df\11\00\00\e0\11\00\00\e5\11\00\00\ea\11\00\00\eb\11\00\00\f3\11\00\00\f4\11\00\00\f5\11\00\00\f6\11\00\00\fc\11\00\00\fd\11\00\00\02\12\00\00\07\12\00\00\08\12\00\00\10\12\00\00\11\12\00\00\12\12\00\00\13\12\00\00\19\12\00\00\1a\12\00\00\1f\12\00\00\24\12\00\00\25\12\00\00\2d\12\00\00\2e\12\00\00\2f\12\00\00\30\12\00\00\36\12\00\00\37\12\00\00\3c\12\00\00\41\12\00\00\42\12\00\00\4c\12\00\00\4d\12\00\00\53\12\00\00\54\12\00\00\59\12\00\00\5e\12\00\00\5f\12\00\00\6b\12\00\00\6c\12\00\00\6d\12\00\00\6e\12\00\00\71\12\00\00\72\12\00\00\73\12\00\00\74\12\00\00\82\12\00\00\83\12\00\00\ef\12\00\00\f0\12\00\00\f1\12\00\00\f2\12\00\00\f4\12\00\00\f5\12\00\00\f8\12\00\00\f9\12\00\00\fe\12\00\00\03\13\00\00\04\13\00\00\0c\13\00\00\0d\13\00\00\0e\13\00\00\0f\13\00\00\15\13\00\00\16\13\00\00\1b\13\00\00\20\13\00\00\21\13\00\00\29\13\00\00\2a\13\00\00\2b\13\00\00\2c\13\00\00\32\13\00\00\33\13\00\00\38\13\00\00\3d\13\00\00\3e\13\00\00\46\13\00\00\47\13\00\00\48\13\00\00\49\13\00\00\4f\13\00\00\50\13\00\00\55\13\00\00\5a\13\00\00\5b\13\00\00\63\13\00\00\64\13\00\00\65\13\00\00\66\13\00\00\6c\13\00\00\6d\13\00\00\72\13\00\00\77\13\00\00\78\13\00\00\80\13\00\00\81\13\00\00\82\13\00\00\83\13\00\00\89\13\00\00\8a\13\00\00\8f\13\00\00\94\13\00\00\95\13\00\00\9d\13\00\00\9e\13\00\00\9f\13\00\00\a0\13\00\00\a6\13\00\00\a7\13\00\00\ac\13\00\00\b1\13\00\00\b2\13\00\00\ba\13\00\00\bb\13\00\00\bc\13\00\00\bd\13\00\00\c3\13\00\00\c4\13\00\00\c9\13\00\00\ce\13\00\00\cf\13\00\00\d7\13\00\00\d8\13\00\00\d9\13\00\00\da\13\00\00\e0\13\00\00\e1\13\00\00\e6\13\00\00\eb\13\00\00\ec\13\00\00\f4\13\00\00\f5\13\00\00\f6\13\00\00\f7\13\00\00\fd\13\00\00\fe\13\00\00\03\14\00\00\08\14\00\00\09\14\00\00\11\14\00\00\12\14\00\00\13\14\00\00\14\14\00\00\1a\14\00\00\1b\14\00\00\20\14\00\00\25\14\00\00\26\14\00\00\2e\14\00\00\2f\14\00\00\30\14\00\00\31\14\00\00\37\14\00\00\38\14\00\00\3d\14\00\00\42\14\00\00\43\14\00\00\4b\14\00\00\4c\14\00\00\4d\14\00\00\4e\14\00\00\54\14\00\00\55\14\00\00\5a\14\00\00\5f\14\00\00\60\14\00\00\68\14\00\00\69\14\00\00\6a\14\00\00\6b\14\00\00\71\14\00\00\72\14\00\00\77\14\00\00\7c\14\00\00\7d\14\00\00\85\14\00\00\86\14\00\00\87\14\00\00\88\14\00\00\8e\14\00\00\8f\14\00\00\94\14\00\00\99\14\00\00\9a\14\00\00\a2\14\00\00\a3\14\00\00\a4\14\00\00\a5\14\00\00\ab\14\00\00\ac\14\00\00\b1\14\00\00\b6\14\00\00\b7\14\00\00\bf\14\00\00\c0\14\00\00\c1\14\00\00\c2\14\00\00\c8\14\00\00\c9\14\00\00\ce\14\00\00\d3\14\00\00\d4\14\00\00\dc\14\00\00\dd\14\00\00\de\14\00\00\df\14\00\00\e5\14\00\00\e6\14\00\00\eb\14\00\00\f0\14\00\00\f1\14\00\00\f9\14\00\00\fa\14\00\00\fb\14\00\00\fc\14\00\00\02\15\00\00\03\15\00\00\08\15\00\00\0d\15\00\00\0e\15\00\00\16\15\00\00\17\15\00\00\18\15\00\00\19\15\00\00\1f\15\00\00\20\15\00\00\25\15\00\00\2a\15\00\00\2b\15\00\00\33\15\00\00\34\15\00\00\35\15\00\00\36\15\00\00\3c\15\00\00\3d\15\00\00\42\15\00\00\47\15\00\00\48\15\00\00\50\15\00\00\51\15\00\00\52\15\00\00\53\15\00\00\59\15\00\00\5a\15\00\00\5f\15\00\00\64\15\00\00\65\15\00\00\6d\15\00\00\6e\15\00\00\6f\15\00\00\70\15\00\00\76\15\00\00\77\15\00\00\7c\15\00\00\81\15\00\00\82\15\00\00\8a\15\00\00\8b\15\00\00\8c\15\00\00\8d\15\00\00\93\15\00\00\94\15\00\00\99\15\00\00\9e\15\00\00\9f\15\00\00\a7\15\00\00\a8\15\00\00\a9\15\00\00\aa\15\00\00\b0\15\00\00\b1\15\00\00\b6\15\00\00\bb\15\00\00\bc\15\00\00\c4\15\00\00\c5\15\00\00\c6\15\00\00\c7\15\00\00\cd\15\00\00\ce\15\00\00\d3\15\00\00\d8\15\00\00\d9\15\00\00\e1\15\00\00\e2\15\00\00\e3\15\00\00\e4\15\00\00\ea\15\00\00\eb\15\00\00\f0\15\00\00\f5\15\00\00\f6\15\00\00\fe\15\00\00\ff\15\00\00\00\16\00\00\01\16\00\00\07\16\00\00\08\16\00\00\0d\16\00\00\12\16\00\00\13\16\00\00\1b\16\00\00\1c\16\00\00\1d\16\00\00\1e\16\00\00\24\16\00\00\25\16\00\00\2a\16\00\00\2f\16\00\00\30\16\00\00\38\16\00\00\39\16\00\00\3a\16\00\00\3b\16\00\00\41\16\00\00\42\16\00\00\47\16\00\00\4c\16\00\00\4d\16\00\00\55\16\00\00\56\16\00\00\57\16\00\00\58\16\00\00\5e\16\00\00\5f\16\00\00\64\16\00\00\69\16\00\00\6a\16\00\00\72\16\00\00\73\16\00\00\74\16\00\00\75\16\00\00\7b\16\00\00\7c\16\00\00\81\16\00\00\86\16\00\00\87\16\00\00\8f\16\00\00\90\16\00\00\91\16\00\00\92\16\00\00\98\16\00\00\99\16\00\00\9e\16\00\00\a3\16\00\00\a4\16\00\00\ac\16\00\00\ad\16\00\00\ae\16\00\00\af\16\00\00\b5\16\00\00\b6\16\00\00\bb\16\00\00\c0\16\00\00\c1\16\00\00\c9\16\00\00\ca\16\00\00\cb\16\00\00\cc\16\00\00\d2\16\00\00\d3\16\00\00\d8\16\00\00\dd\16\00\00\de\16\00\00\e6\16\00\00\e7\16\00\00\e8\16\00\00\e9\16\00\00\ef\16\00\00\f0\16\00\00\f5\16\00\00\fa\16\00\00\fb\16\00\00\03\17\00\00\04\17\00\00\05\17\00\00\06\17\00\00\0c\17\00\00\0d\17\00\00\12\17\00\00\17\17\00\00\18\17\00\00\20\17\00\00\21\17\00\00\22\17\00\00\23\17\00\00\29\17\00\00\2a\17\00\00\2f\17\00\00\34\17\00\00\35\17\00\00\3d\17\00\00\3e\17\00\00\3f\17\00\00\40\17\00\00\46\17\00\00\47\17\00\00\4c\17\00\00\51\17\00\00\52\17\00\00\5a\17\00\00\5b\17\00\00\5c\17\00\00\5d\17\00\00\63\17\00\00\64\17\00\00\69\17\00\00\6e\17\00\00\6f\17\00\00\77\17\00\00\78\17\00\00\79\17\00\00\7a\17\00\00\80\17\00\00\81\17\00\00\86\17\00\00\8b\17\00\00\8c\17\00\00\94\17\00\00\95\17\00\00\96\17\00\00\97\17\00\00\9d\17\00\00\9e\17\00\00\a3\17\00\00\a8\17\00\00\a9\17\00\00\b1\17\00\00\b2\17\00\00\b3\17\00\00\b4\17\00\00\ba\17\00\00\bb\17\00\00\c0\17\00\00\c5\17\00\00\c6\17\00\00\ce\17\00\00\cf\17\00\00\d0\17\00\00\d1\17\00\00\d7\17\00\00\d8\17\00\00\dd\17\00\00\e2\17\00\00\e3\17\00\00\eb\17\00\00\ec\17\00\00\ed\17\00\00\ee\17\00\00\f4\17\00\00\f5\17\00\00\fa\17\00\00\ff\17\00\00\00\18\00\00\08\18\00\00\09\18\00\00\0a\18\00\00\0b\18\00\00\11\18\00\00\12\18\00\00\17\18\00\00\1c\18\00\00\1d\18\00\00\25\18\00\00\26\18\00\00\27\18\00\00\28\18\00\00\2e\18\00\00\2f\18\00\00\34\18\00\00\39\18\00\00\3a\18\00\00\42\18\00\00\43\18\00\00\44\18\00\00\45\18\00\00\4b\18\00\00\4c\18\00\00\51\18\00\00\56\18\00\00\57\18\00\00\5f\18\00\00\60\18\00\00\61\18\00\00\62\18\00\00\68\18\00\00\69\18\00\00\6e\18\00\00\73\18\00\00\74\18\00\00\7c\18\00\00\7d\18\00\00\7e\18\00\00\7f\18\00\00\85\18\00\00\86\18\00\00\8b\18\00\00\90\18\00\00\91\18\00\00\99\18\00\00\9a\18\00\00\9b\18\00\00\9c\18\00\00\a2\18\00\00\a3\18\00\00\a8\18\00\00\ad\18\00\00\ae\18\00\00\b6\18\00\00\b7\18\00\00\b8\18\00\00\b9\18\00\00\bf\18\00\00\c0\18\00\00\c5\18\00\00\ca\18\00\00\cb\18\00\00\d3\18\00\00\d4\18\00\00\d5\18\00\00\d6\18\00\00\dc\18\00\00\dd\18\00\00\e2\18\00\00\e7\18\00\00\e8\18\00\00\f0\18\00\00\f1\18\00\00\f2\18\00\00\f3\18\00\00\f9\18\00\00\fa\18\00\00\ff\18\00\00\04\19\00\00\05\19\00\00\0d\19\00\00\0e\19\00\00\0f\19\00\00\10\19\00\00\16\19\00\00\17\19\00\00\1c\19\00\00\21\19\00\00\22\19\00\00\2a\19\00\00\2b\19\00\00\2c\19\00\00\2d\19\00\00\33\19\00\00\34\19\00\00\39\19\00\00\3e\19\00\00\3f\19\00\00\47\19\00\00\48\19\00\00\49\19\00\00\4a\19\00\00\50\19\00\00\51\19\00\00\56\19\00\00\5b\19\00\00\5c\19\00\00\64\19\00\00\65\19\00\00\66\19\00\00\67\19\00\00\6d\19\00\00\6e\19\00\00\73\19\00\00\78\19\00\00\79\19\00\00\81\19\00\00\82\19\00\00\83\19\00\00\84\19\00\00\8a\19\00\00\8b\19\00\00\90\19\00\00\95\19\00\00\96\19\00\00\9e\19\00\00\9f\19\00\00\a0\19\00\00\a1\19\00\00\a7\19\00\00\a8\19\00\00\ad\19\00\00\b2\19\00\00\b3\19\00\00\bb\19\00\00\bc\19\00\00\bd\19\00\00\be\19\00\00\c4\19\00\00\c5\19\00\00\ca\19\00\00\cf\19\00\00\d0\19\00\00\d8\19\00\00\d9\19\00\00\da\19\00\00\db\19\00\00\e1\19\00\00\e2\19\00\00\e7\19\00\00\ec\19\00\00\ed\19\00\00\f5\19\00\00\f6\19\00\00\f7\19\00\00\f8\19\00\00\fe\19\00\00\ff\19\00\00\04\1a\00\00\09\1a\00\00\0a\1a\00\00\12\1a\00\00\13\1a\00\00\14\1a\00\00\15\1a\00\00\1b\1a\00\00\1c\1a\00\00\21\1a\00\00\26\1a\00\00\27\1a\00\00\2f\1a\00\00\30\1a\00\00\31\1a\00\00\32\1a\00\00\38\1a\00\00\39\1a\00\00\3e\1a\00\00\43\1a\00\00\44\1a\00\00\4c\1a\00\00\4d\1a\00\00\4e\1a\00\00\4f\1a\00\00\55\1a\00\00\56\1a\00\00\5b\1a\00\00\60\1a\00\00\61\1a\00\00\69\1a\00\00\6a\1a\00\00\6b\1a\00\00\6c\1a\00\00\72\1a\00\00\73\1a\00\00\78\1a\00\00\7d\1a\00\00\7e\1a\00\00\86\1a\00\00\87\1a\00\00\88\1a\00\00\89\1a\00\00\8f\1a\00\00\90\1a\00\00\95\1a\00\00\9a\1a\00\00\9b\1a\00\00\a3\1a\00\00\a4\1a\00\00\a5\1a\00\00\a6\1a\00\00\ac\1a\00\00\ad\1a\00\00\b2\1a\00\00\b7\1a\00\00\b8\1a\00\00\c0\1a\00\00\c1\1a\00\00\c2\1a\00\00\c3\1a\00\00\c9\1a\00\00\ca\1a\00\00\cf\1a\00\00\d4\1a\00\00\d5\1a\00\00\dd\1a\00\00\de\1a\00\00\df\1a\00\00\e0\1a\00\00\e6\1a\00\00\e7\1a\00\00\ec\1a\00\00\f1\1a\00\00\f2\1a\00\00\fa\1a\00\00\fb\1a\00\00\fc\1a\00\00\fd\1a\00\00\03\1b\00\00\04\1b\00\00\09\1b\00\00\0e\1b\00\00\0f\1b\00\00\17\1b\00\00\18\1b\00\00\19\1b\00\00\1a\1b\00\00\20\1b\00\00\21\1b\00\00\26\1b\00\00\2b\1b\00\00\2c\1b\00\00\34\1b\00\00\35\1b\00\00\36\1b\00\00\37\1b\00\00\3d\1b\00\00\3e\1b\00\00\43\1b\00\00\48\1b\00\00\49\1b\00\00\51\1b\00\00\52\1b\00\00\53\1b\00\00\54\1b\00\00\5a\1b\00\00\5b\1b\00\00\60\1b\00\00\65\1b\00\00\66\1b\00\00\6e\1b\00\00\6f\1b\00\00\70\1b\00\00\71\1b\00\00\77\1b\00\00\78\1b\00\00\7d\1b\00\00\82\1b\00\00\83\1b\00\00\8b\1b\00\00\8c\1b\00\00\8d\1b\00\00\8e\1b\00\00\94\1b\00\00\95\1b\00\00\9a\1b\00\00\9f\1b\00\00\a0\1b\00\00\a8\1b\00\00\a9\1b\00\00\aa\1b\00\00\ab\1b\00\00\b1\1b\00\00\b2\1b\00\00\b7\1b\00\00\bc\1b\00\00\bd\1b\00\00\c5\1b\00\00\c6\1b\00\00\c7\1b\00\00\c8\1b\00\00\ce\1b\00\00\cf\1b\00\00\d4\1b\00\00\d9\1b\00\00\da\1b\00\00\e2\1b\00\00\e3\1b\00\00\e4\1b\00\00\e5\1b\00\00\eb\1b\00\00\ec\1b\00\00\f1\1b\00\00\f6\1b\00\00\f7\1b\00\00\ff\1b\00\00\00\1c\00\00\01\1c\00\00\02\1c\00\00\08\1c\00\00\09\1c\00\00\0e\1c\00\00\13\1c\00\00\14\1c\00\00\1c\1c\00\00\1d\1c\00\00\1e\1c\00\00\1f\1c\00\00\25\1c\00\00\26\1c\00\00\2b\1c\00\00\30\1c\00\00\31\1c\00\00\39\1c\00\00\3a\1c\00\00\3b\1c\00\00\3c\1c\00\00\42\1c\00\00\43\1c\00\00\48\1c\00\00\4d\1c\00\00\4e\1c\00\00\56\1c\00\00\57\1c\00\00\58\1c\00\00\59\1c\00\00\5f\1c\00\00\60\1c\00\00\65\1c\00\00\6a\1c\00\00\6b\1c\00\00\73\1c\00\00\74\1c\00\00\75\1c\00\00\76\1c\00\00\7c\1c\00\00\7d\1c\00\00\82\1c\00\00\87\1c\00\00\88\1c\00\00\90\1c\00\00\91\1c\00\00\92\1c\00\00\93\1c\00\00\99\1c\00\00\9a\1c\00\00\9f\1c\00\00\a4\1c\00\00\a5\1c\00\00\ad\1c\00\00\ae\1c\00\00\af\1c\00\00\b0\1c\00\00\b6\1c\00\00\b7\1c\00\00\bc\1c\00\00\c1\1c\00\00\c2\1c\00\00\ca\1c\00\00\cb\1c\00\00\cc\1c\00\00\cd\1c\00\00\d3\1c\00\00\d4\1c\00\00\d9\1c\00\00\de\1c\00\00\df\1c\00\00\e7\1c\00\00\e8\1c\00\00\e9\1c\00\00\ea\1c\00\00\f0\1c\00\00\f1\1c\00\00\f6\1c\00\00\fb\1c\00\00\fc\1c\00\00\04\1d\00\00\05\1d\00\00\06\1d\00\00\07\1d\00\00\0d\1d\00\00\0e\1d\00\00\13\1d\00\00\18\1d\00\00\19\1d\00\00\21\1d\00\00\22\1d\00\00\23\1d\00\00\24\1d\00\00\2a\1d\00\00\2b\1d\00\00\30\1d\00\00\35\1d\00\00\36\1d\00\00\3e\1d\00\00\3f\1d\00\00\40\1d\00\00\41\1d\00\00\47\1d\00\00\48\1d\00\00\4d\1d\00\00\52\1d\00\00\53\1d\00\00\5b\1d\00\00\5c\1d\00\00\5d\1d\00\00\5e\1d\00\00\64\1d\00\00\65\1d\00\00\6a\1d\00\00\6f\1d\00\00\70\1d\00\00\78\1d\00\00\79\1d\00\00\7a\1d\00\00\7b\1d\00\00\81\1d\00\00\82\1d\00\00\87\1d\00\00\8c\1d\00\00\8d\1d\00\00\95\1d\00\00\96\1d\00\00\97\1d\00\00\98\1d\00\00\9e\1d\00\00\9f\1d\00\00\a4\1d\00\00\a9\1d\00\00\aa\1d\00\00\b2\1d\00\00\b3\1d\00\00\b4\1d\00\00\b5\1d\00\00\bb\1d\00\00\bc\1d\00\00\c1\1d\00\00\c6\1d\00\00\c7\1d\00\00\cf\1d\00\00\d0\1d\00\00\d1\1d\00\00\d2\1d\00\00\d8\1d\00\00\d9\1d\00\00\de\1d\00\00\e3\1d\00\00\e4\1d\00\00\ec\1d\00\00\ed\1d\00\00\ee\1d\00\00\ef\1d\00\00\f5\1d\00\00\f6\1d\00\00\fb\1d\00\00\00\1e\00\00\01\1e\00\00\09\1e\00\00\0a\1e\00\00\0b\1e\00\00\0c\1e\00\00\12\1e\00\00\13\1e\00\00\18\1e\00\00\1d\1e\00\00\1e\1e\00\00\26\1e\00\00\27\1e\00\00\28\1e\00\00\29\1e\00\00\2f\1e\00\00\30\1e\00\00\35\1e\00\00\3a\1e\00\00\3b\1e\00\00\43\1e\00\00\44\1e\00\00\45\1e\00\00\46\1e\00\00\4c\1e\00\00\4d\1e\00\00\52\1e\00\00\57\1e\00\00\58\1e\00\00\60\1e\00\00\61\1e\00\00\62\1e\00\00\63\1e\00\00\69\1e\00\00\6a\1e\00\00\6f\1e\00\00\74\1e\00\00\75\1e\00\00\7d\1e\00\00\7e\1e\00\00\7f\1e\00\00\80\1e\00\00\86\1e\00\00\87\1e\00\00\8c\1e\00\00\91\1e\00\00\92\1e\00\00\9c\1e\00\00\9d\1e\00\00\a3\1e\00\00\a4\1e\00\00\a9\1e\00\00\ae\1e\00\00\af\1e\00\00\bb\1e\00\00\bc\1e\00\00\bd\1e\00\00\be\1e\00\00\c1\1e\00\00\c2\1e\00\00\c3\1e\00\00\c4\1e\00\00\d0\1e\00\00\d2\1e\00\00")
(data (i32.const 16408) "\00\00\00\00\00\00\00\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 358560) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d8\78\05\00\e8\78\05\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 358616) "\f8\78\05\00\fc\78\05\00\00\79\05\00\04\79\05\00\08\79\05\00\0c\79\05\00\10\79\05\00\14\79\05\00")
(data (i32.const 358648) "\00\00\00\00\50\00\00\00\a0\00\00\00\c0\17\00\00\00\00\00\00\50\00\00\00\a0\00\00\00\08\11\00\00")
(data (i32.const 358940) "Error in template Num2Bits_0\00")
(data (i32.const 359180) "Error in template IsZero_1\00")
(data (i32.const 359420) "Error in template Edwards2Montgomery_2\00")
(data (i32.const 359660) "Error in template MontgomeryDouble_3\00")
(data (i32.const 359900) "Error in template MontgomeryAdd_4\00")
(data (i32.const 360140) "Error in template Multiplexor2_5\00")
(data (i32.const 360380) "Error in template BitElementMulAny_6\00")
(data (i32.const 360620) "Error in template Montgomery2Edwards_7\00")
(data (i32.const 360860) "Error in template BabyAdd_8\00")
(data (i32.const 361100) "Error in template SegmentMulAny_9\00")
(data (i32.const 361340) "Error in template SegmentMulAny_10\00")
(data (i32.const 361580) "Error in template EscalarMulAny_11\00")
(data (i32.const 361820) "Error in template Ecdh_12\00")
(data (i32.const 362060) "Error in template BuyerStageProof_13\00")
(data (i32.const 362300) "\fd\00\00\00\00\00\00\40\c6\fa\ff\9f\cb\78\02\35\c3\a8\c9\cc\33\f5\b3\e0\1b\29\f8\21\1f\a4\73\ac\f2\e5\a0\02\93\fb\bd\13\00\00\00\00\00\00\00\40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\40\fb\ff\ff\4f\1c\34\96\ac\29\cd\60\9f\95\76\fc\36\2e\46\79\78\6f\a3\6e\66\2f\df\07\9a\c1\77\0a\0e\fc\92\02\00\00\00\00\40\e0\61\f2\ff\61\cf\ac\95\78\d3\f7\9d\65\0d\78\24\e8\6a\90\7e\b0\11\ac\e0\f3\de\d3\16\22\db\35\0f\f8\92\02\00\00\00\00\40\f5\61\f2\af\84\f4\35\27\63\0f\2e\9a\57\1b\ba\70\8c\aa\2c\1e\a9\c9\41\ff\5f\02\e6\8f\8e\4a\70\07\fa\92\02\00\00\00\00\40\eb\61\f2\4f\bd\5c\62\80\b6\a9\ef\d8\82\08\b3\de\e8\36\1f\0f\88\10\1f\cc\be\c0\f5\c3\11\3a\85\23\03\00\00\00\00\00\00\40\f1\ff\ff\ef\54\9c\c2\05\7d\67\22\de\c0\63\f5\a4\8a\d2\6b\69\4e\ea\4b\33\8e\9d\17\ce\44\67\1f\2a\f4\25\05\00\00\00\00\40\d5\c3\e4\af\e6\c3\e2\bc\db\e2\25\38\bd\28\32\95\74\15\bd\9c\59\db\ed\df\53\e1\b9\a6\b0\25\a6\16\02\00\00\00\00\00\00\40\f6\ff\ff\9f\38\68\2c\59\53\9a\c1\3e\2b\ed\f8\6d\5c\8c\f2\f0\de\46\dd\cc\5e\be\0f\34\83\ef\14\1c\04\6d\fd\ff\00\00\00\40\21\9e\0d\f0\31\26\35\ae\18\9d\c1\db\e2\da\bb\03\75\ed\f0\02\06\34\a4\d7\35\c1\5d\ca\50\73\2e\21\94\00\00\00\00\00\00\40\f2\fc\ff\df\18\d6\c3\a3\42\24\8a\2b\9c\72\70\31\6f\13\e4\66\80\0c\cb\fa\8e\c0\68\1a\14\5d\98\2d\93\00\00\00\00\00\00\40\f7\fc\ff\8f\fc\a1\2d\f7\18\57\29\8c\06\fc\73\fa\40\cd\6a\ee\10\69\5c\94\5f\e1\60\80\52\e5\8d\1f\92\00\00\00\00\00\00\40\fc\fc\ff\3f\e0\6d\97\4a\ef\89\c8\ec\70\85\77\c3\12\87\f1\75\a1\c5\ed\2d\30\02\59\e6\90\6d\83\11\69\00\00\00\00\00\00\40\d5\fd\ff\af\46\98\20\d5\11\f5\f8\1a\e0\6a\77\d7\09\6e\95\3c\55\dd\f8\69\8d\c5\69\c9\f1\ec\89\16\68\00\00\00\00\00\00\40\da\fd\ff\5f\2a\64\8a\28\e8\27\98\7b\4a\f4\7a\a0\db\27\1c\c4\e5\39\8a\03\5e\e6\61\2f\30\75\7f\08\67\00\00\00\00\00\00\40\e0\fd\ff\ff\a1\25\d6\bf\4f\cb\f0\55\fd\65\b2\91\0a\3a\24\cd\2c\dc\6b\55\58\a7\8b\76\e1\4b\d9\2a\00\00\00\00\00\00\00\C0\86\fa\89\1a\bc\c7\8f\0a\27\86\e4\e9\86\d7\d9\a7\69\a3\be\65\b4\58\61\ee\19\45\87\2f\6d\ff\a0\14\00\00\00\00\00\00\00\C0\aa\01\02\0d\d2\42\33\b8\c7\ea\cf\cd\f7\f2\fe\2f\25\e6\a6\25\94\9a\a7\bf\70\4b\a4\c3\9d\85\fb\0d")
)