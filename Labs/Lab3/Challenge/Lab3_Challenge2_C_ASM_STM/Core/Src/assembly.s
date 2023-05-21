.syntax unified    @ Use the unified syntax for ARM assembly



.section .data   @ Define a new section for the data segment

.global my_global_var  @ Declare the variable as globally visible

my_global_var:
    .word 42    @ Define the value of the variable



.section .text    @ Define a new section for the text segment

.global asm_function @ Declare the function "calculate" as globally visible

asm_function:        @ Define the function "calculate"
    push {lr}     @ Save the link register onto the stack (to be restored later)

    @ Perform the calculation
    mul r3, r2, r1   @ Multiply the second argument by the third argument and store the result in r3
    sdiv r4, r3, r0  @ Divide the result in r3 by the first argument and store the quotient in r4
    mul r4, r4, r0   @ Multiply the quotient in r4 by the first argument and store the result in r4
    sub r0, r3, r4   @ Subtract the result in r4 from the result in r3 and store the final result in r0

    @ Store the result in memory and return
    pop {pc}       @ Pop the link register off the stack and jump to its value (returning from the function)
