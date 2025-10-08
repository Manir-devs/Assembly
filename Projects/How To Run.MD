```bash
# For 32 bit
nasm -f elf32 filename.asm -o filename.o
ld -m elf_i386 filename.o -o filename
./filename
```
```bash
# For 32 bit
nasm -f elf32 filename.asm -o filename.o
ld -m elf_i386 filename.o -o filename
./filename
```
