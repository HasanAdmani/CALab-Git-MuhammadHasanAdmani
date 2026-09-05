.text
.globl main
main:
    addi x19, x0, 5 #int a = 5

    add x20, x19, x19 #int b = a + a
    addi x19, x20, 32 #a = b + 32

    # int d = (a + b) - 5
    #first a plus b
    add x5, x19, x20

    #d = (a + b) - 5
    addi x21, x5, -5

    # int e = (((a - d) + (b - a)) + d) will have to do in parts
    sub x5, x19, x21 #a - d
    sub x6, x20, x19 #b - a
    add x5, x5, x6 # adding those
    add x22, x5, x21 # plus d

    # e = a + b + d + e need to do in parts
    add x5, x19, x20 # a + b
    add x6, x21, x22     # d + e
    add x22, x5, x6 # then sum


    end:
        j end   
