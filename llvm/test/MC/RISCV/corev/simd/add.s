# RUN: llvm-mc -triple=riscv32 --mattr=+xcorevsimd -show-encoding %s 2>&1 \
# RUN:        | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INSTR
# RUN: llvm-mc -filetype=obj -triple=riscv32 --mattr=+xcorevsimd < %s \
# RUN:     | llvm-objdump -M no-aliases  --mattr=+xcorevsimd -d -r - \
# RUN:     | FileCheck -check-prefixes=CHECK-INSTR %s
# ALU instructions


cv.add.h t0, t1, t2
# CHECK-INSTR: cv.add.h t0, t1, t2
# CHECK-ENCODING: [0xfb,0x02,0x73,0x00]

cv.add.b a0, a1, a2
# CHECK-INSTR: cv.add.b a0, a1, a2
# CHECK-ENCODING: [0x7b,0x95,0xc5,0x00]


