# COA.8086
Setup for COA lab

# Table of Contents
- [Requirements](##Requirements)
- [Setup](##Setup)
  - [DOSBOX config](###Config)
  - [build](###build.bat)
  
## Requirements
- MS-DOS
- MASM assembler
## Setup
### Config
Config files are usually located at  
- Linux   : ```~/.config/dosbox/```
- Windows :```C:\Users\USERNAME\AppData\Local\DOSBox\```

Set ```autolock=false``` in ```[sdl]``` to prevent autolocking of mouse

In config file add the following commands under [autoexec] so that they are executed at startup
```bash
mount c: \path\to\8086\assembly\files
c:
```


### build.bat
Used for assembling **and** executing the 8086 asm file on DOSBOX. Rough implementation.
**Usage**:
```bash
build.bat <filename>
```
Needs to be marked executable on Linux systems
```bash
chmod +x build.bat
```
