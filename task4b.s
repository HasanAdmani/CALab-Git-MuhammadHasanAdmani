.text
.globl main
main:

    # address for arrays
    li x15, 0x100 
    li x16, 0x200
    li x17, 0x300

    li t0, 0x04030201
    sw t0, 0(x15)
    li t0, 0x08070605
    sw t0, 0(x16)

    lb  x5, 0(x15)
    lh  x6, 0(x16)
    add x7, x5, x6
    sw  x7, 0(x17)

    
    lb  x5, 1(x15)
    lh  x6, 2(x16)
    add x7, x5, x6
    sw  x7, 4(x17)

    
    lb  x5, 2(x15)
    lh  x6, 4(x16)
    add x7, x5, x6
    sw  x7, 8(x17)

    
    lb  x5, 3(x15)
    lh  x6, 6(x16)
    add x7, x5, x6
    sw  x7, 12(x17)

end:
    j end