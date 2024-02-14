@echo off

rem Check if filename is provided
if "%1"=="" goto illegal

rem Set the filename from the command-line argument
set filename=%1

echo Assembling %filename%.asm
masm %filename%.asm;

if errorlevel 1 goto End

echo linking %filename%
link %filename%;
if errorlevel 1 goto End

echo executing %filename%.exe:

%filename%.exe
goto End

:illegal
echo Usage  : %0 <filename>
echo Example: %0 helloWorld 
:End


