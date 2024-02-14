@echo off

rem Check if filename is provided
if "%1"=="" echo Usage: %0 filename.asm

rem Set the filename from the command-line argument
set filename=%1

echo Assembling proj.asm
masm %filename%.asm;

if errorlevel 1 goto End

echo linking %filename%
link %filename%;
if errorlevel 1 goto End

echo executing %filename%.exe:

%filename%.exe

:End

