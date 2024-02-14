# COA.8086
Setup for COA lab

# Table of Contents
- [Requirements](##Requirements)
- [Setup](##Setup)
  - [autoexec](###autoexec)
  - [build](###build.bat)
  
## Requirements
- MS-DOS
- MASM assembler
## Setup
### autoexec
In config file of DOSBOX add the following commands under [autoexec] so that they are executed at startup
```bash
mount c: \path\to\8086\assembly\files
c:
```
Set ```autolock=false``` in ```[sdl]``` to prevent autolocking of mouse
### build.bat
Used for assembling **and** executing the 8086 asm file on DOSBOX. Rough implementation.
**Usage**:
```bash
build.bat <filename>
```
Needs to be executable on Linux system
```bash
chmod +x build.bat
```
