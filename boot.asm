[BITS 16]       // tells the assembler that our boot code is running on 16 bit mode

[ORG 0x7c00]    // BIOS find the boot device and read first sector which is boot sector at 
                // memory location 7c00 and control is transfer to it 

start:
    xor ax,ax   // xor makes value 0 with itself
    mov ds,ax   // move 0 to data segement register which is pointer to data
    mov es,ax   // move 0 to extra data segment register which is pointer to extra data
    mov ss,ax   // mov 0 to stack segment which is pointer to the stack
    mov sp,0x7c00