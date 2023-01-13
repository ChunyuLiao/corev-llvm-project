# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevhwlp -show-encoding %s \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR

cv.end 1, s2
# CHECK-INSTR: cv.end 1, s2
# CHECK-ENCODING: [0xfb,0x30,0x09,0x00]

cv.end 0, s4
# CHECK-INSTR: cv.end 0, s4
# CHECK-ENCODING: [0x7b,0x30,0x0a,0x00]

cv.end 0, zero
# CHECK-INSTR: cv.end 0, zero
# CHECK-ENCODING: [0x7b,0x30,0x00,0x00]
