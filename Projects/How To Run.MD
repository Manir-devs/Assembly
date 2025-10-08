# For 32 bit
```bash
nasm -f elf32 filename.asm -o filename.o
ld -m elf_i386 filename.o -o filename
./filename
```


# For 64 bit
```bash
nasm -f elf64 filename.asm -o filename.o
ld filename.o -o filename
./filename
```
