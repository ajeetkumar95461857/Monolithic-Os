[BITS 16]       // tells the assembler that our boot code is running on 16 bit mode

[ORG 0x7c00]    // BIOS find the boot device and read first sector which is boot sector at 
                // memory location 7c00 and control is transfer to it 
