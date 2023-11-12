.globl prog2

# Author: Aidan Eiler

prog2:
	pushl %ebp # pushes the old ebp to the top of the stack

	# With this in mind, and given additional context about the program, the stack looks as follows

	# a
	# *l
	# *k
	# j
	# i
	# return_address <--pushed onto the stack by call instruction
	# old %ebp <-- pushed onto stack by the given pushl instruction

	# implement here
	movl %esp, %ebp     # sets the ebp to point to the top of the stack. this will be used for referencing our command arguments
	push %ebx           # pushes the old value of ebx to restore later on
	push %edi           # pushes the old value of edi to restore later on
	
	# i-j+3 calculation
	movl 8(%ebp),  %eax # moves i to eax register
	subl 12(%ebp), %eax # subtracts i by j (12 bytes above ebp)
	addl $3,       %eax # adds decimal value 3 to i

	# k*10 calclulatoin
	movl 16(%ebp), %ecx # moves pointer address of k to caller-save register
	movl (%ecx),   %edx # dereferences value of *k to perform maths
	movl %edx,     %ebx # copies value of edx to ebx
	
	sall $3, %edx       # left shifts value of edx by 3, multiplying the value by 8
	sall $1, %ebx       # left shifts value of edx by 1, multiplying the value by 2
	
	addl %ebx, %edx     # adds the values of ebx and edx, which is how we can multiply by 10
	movl %edx, (%ecx)   # takes the newly computed value of edx and sends to k
	
	# array sum calculation
	movl 20(%ebp), %ecx # assigns array pointer l to ecx
	movl (%ecx), %edi   # dereferences l, used for adding
	movl 24(%ebp), %edx # assigns array pointer a to edx

	movl $0, %edi			 # initializes edi (sum register) to 0
	movl  $0, %ebx           # loop counter for 6 elements
	loop_start:				 # loop label
	addl (%edx,%ebx,4), %edi # add element to edi
    incl  %ebx               # increase loop counter
    cmpl  $6, %ebx           # compare %ebx with 6
    jne   loop_start         # if %ebx is not 6, repeat the loop (goto loop_start)
	movl  %edi, (%ecx)		 # assigns accumulated value to value of l

	# restoring caller stack frame
	popl %edi      	# restores original value of edi
	popl %ebx       # restores original value of ebx
	movl %ebp, %esp # moves esp to point to ebp, near the beginning of the stack frame
	popl %ebp       # "removes" the "old %ebp" address from the stack and sets ebp to its old address
	ret             # "removes" return address from the stack and assigns it to the program counter
