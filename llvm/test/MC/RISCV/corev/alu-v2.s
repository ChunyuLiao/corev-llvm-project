# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevaluv2 -show-encoding %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-INSTR,CHECK-ENCODING

# ALU instructions


cv.exths t0, t1
# CHECK-INSTR: cv.exths t0, t1
# CHECK-ENCODING: [0xb3,0x52,0x03,0x10]

#cv.exthz t0, t1
# : cv.exthz t0, t1
# : [0xb3,0x52,0x03,0x10]
