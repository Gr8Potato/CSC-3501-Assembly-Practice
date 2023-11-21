# CSC-3501-Assembly-Practice
I made **the assembly portion of this program** to demonstrate a foundational understanding of registers, assembly instructions, and memory allocation. The assembly is written in IA32 AT&T format.

Student-faculty provided the C code and Make file.

The assembly procedure performs the following operations including but not limited to:
- Stack frame prologue & epilogue
- Dereferences memory addresses for data modification & retrieval
- Accesses arrays & individual elements
- Assembly loops
- Bit shifting

### Compilation-Execution
This program was designed to be run on specific 32-bit architecture. As such, dependencies & the nature of the program may result in failing to create a proper executable. With that said, there are 2 ways to create a program executable.

Make: `make` (the executable will be `xtest`).

Manual: `gcc -m32 main.c prog2.s -o <executable name`.
