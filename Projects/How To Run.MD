# NASM Hello World

Ye guide tumhe dikhayega kaise NASM assembly program **Hello World** Linux pe compile aur run karte hain.

## Steps

```bash
# Step 1: Assemble
nasm -f elf32 filename.asm -o filename.o
# Step 2: Link
ld -m elf_i386 filename.o -o filename
# Step 3: Run
./filename

