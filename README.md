# Assembly Integer Overflow Bug

This repository demonstrates a common error in assembly programming: integer overflow during memory address calculation. The code attempts to access memory using an address computed as `[ebx + ecx * 4]`. If `ecx` is a large value, an integer overflow can occur, leading to access of an invalid memory location resulting in a crash or unpredictable behavior.

## Bug Description
The `mov eax, [ebx + ecx * 4]` instruction is vulnerable to integer overflow if the value of `ecx` is large enough that the multiplication `ecx * 4` causes an overflow. This leads to accessing an unexpected memory location, causing a segmentation fault or unpredictable behavior.

## Solution
The solution is to add checks to ensure that the address computed remains within the valid memory bounds before attempting memory access. This usually involves a comparison against the maximum available memory address. 

## Files
- `bug.asm`: The assembly code demonstrating the bug
- `bugSolution.asm`: Assembly code implementing the solution