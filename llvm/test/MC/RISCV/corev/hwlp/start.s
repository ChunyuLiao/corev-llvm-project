# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevhwlp -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.start 1, s2
# CHECK-INSTR: cv.start 1, s2
# CHECK-ENCODING: [0xfb,0x10,0x09,0x00]

cv.start 0, s4
# CHECK-INSTR: cv.start 0, s4
# CHECK-ENCODING: [0x7b,0x10,0x0a,0x00]

cv.start 0, zero
# CHECK-INSTR: cv.start 0, zero
# CHECK-ENCODING: [0x7b,0x10,0x00,0x00]
