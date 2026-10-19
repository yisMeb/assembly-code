# Assembly Code Exercises

A small collection of 16-bit x86 assembly language assignments written for DOS.

## What is included

- `assignment1.asm` — prints a formatted student information template.
- `assignment5.asm` — prints the even numbers from 2 through 50.
- `assignment7.asm` — prints the even numbers from 2 through 50.

The number-printing programs also demonstrate loops, procedures, stack operations, and decimal-to-string conversion.

## Technologies used

- 16-bit x86 Assembly
- MASM/TASM-style syntax
- DOS interrupt `21h` for console output and program termination
- Small memory model (`.MODEL SMALL`)

## Running the programs

Assemble and link an `.asm` file with a compatible assembler such as MASM or TASM, then run the resulting DOS executable in DOSBox or another DOS-compatible environment.

Example with TASM:

```dos
tasm assembly\assignment1.asm
tlink assembly\assignment1.obj
assembly\assignment1.exe
```

## Repository structure

```text
assembly/
├── assignment1.asm
├── assignment5.asm
└── assignment7.asm
```
