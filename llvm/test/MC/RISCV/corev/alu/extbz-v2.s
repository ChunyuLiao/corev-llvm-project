# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevaluv2 -show-encoding %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR
# RUN: llvm-mc -filetype=obj -triple=riscv32 --mattr=+xcorevaluv2 < %s \
# RUN:     | llvm-objdump -M no-aliases  --mattr=+xcorevaluv2 -d -r - \
# RUN:     | FileCheck -check-prefixes=CHECK-INSTR %s
# ALU instructions


cv.extbz t0, t1
# CHECK-INSTR: cv.extbz t0, t1
# CHECK-ENCODING: [0xab,0x32,0x03,0x66]

cv.extbz a0, a1
# CHECK-INSTR: cv.extbz a0, a1
# CHECK-ENCODING: [0x2b,0xb5,0x05,0x66]
