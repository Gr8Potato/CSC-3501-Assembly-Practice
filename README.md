# CSC-3501-Assembly-Practice
I made **the assembly portion of this program** for an assignment to demonstrate a foundational understanding of registers, assembly instructions, and memory allocation.

Student-faculty provided the C code and Make file.

The assembly procedure performs the following operations including but not limited to:
- Stack frame prologue & epilogue
- Dereferences memory addresses for data modification & retrieval
- Accesses arrays & individual elements
- Assembly loops
- Bit shifting

### Compilation-Execution
This program was designed to be run on specific hardware. As such, dependencies may result in failing to create a proper executable. With that said, there are 2 ways to create a program executable.

Make: `make` (the executable will be `xtest`.

Manual: `gcc -m32 main.c prog2.s -o <executable name`.
