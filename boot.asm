[BITS 16]       // tells the assembler that our boot code is running on 16 bit mode

[ORG 0x7c00]    // BIOS find the boot device and read first sector which is boot sector at 
                // memory location 7c00 and control is transfer to it 

start:
    xor ax,ax   // xor makes value 0 with itself
    mov ds,ax   // move 0 to data segement register which is pointer to data
    mov es,ax   // move 0 to extra data segment register which is pointer to extra data
    mov ss,ax   // mov 0 to stack segment which is pointer to the stack
    mov sp,0x7c00 // point stack pointer to 0x7c00 memory location and stack pointer goes downwards

printMessage;
    mov ah,0x13 // 0x13 is function of BIOS Interrupt 0x10 which write string to screen
    mov al,1    // move 1 to al means lower part of ax because higher part is filled with 0x13 
                // and 1 specifies that string will be directly written to text buffer one by one

    mov bx,0x1f // it shows text as white
    xor dx,dx   // clear the dx(data register is used for arthimetic & I/O operations) indicating cursor position at begining of screen
    mov bp,Message  // bp(stack base pointer general purpose register is used to point base of the stack) is used to point start of the message
    mov cx,MessageLen   // cx(counter register) is used to determine the length of the string to be displayed
    int 0x10    // call BIOS interrupt
    

