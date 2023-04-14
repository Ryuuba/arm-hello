/* arm hello world
 * Source: https://www.youtube.com/watch?v=FV6P5eRmMh8
 * Modified by: A. G. Medrano-Chávez
 * This program writes a string to STDOUT
 *
 * Compilation commands:
 * arm-linux-gnueabi-as hello_world.s -o hello_world.o
 * arm-linux-gnueabi-gcc hello_world.o -o hello_world.elf -nostdlib
 * 
 * Run ELF file
 * arm-linux-gnueabi-gcc hello_world.o -o hello_world.elf -nostdlib
 */

# symbol _main should be visible to the linker
# because other object files will use it
.global _start

.section .text

_start:
    mov r7, #0x4
    mov r0, #1
    ldr r1, =greeting
    mov r2, #13
    swi 0
    mov r7, #0x1
    mov r0, #13
    swi 0
    
.section .data
    greeting: .ascii "Hello World!\n"
