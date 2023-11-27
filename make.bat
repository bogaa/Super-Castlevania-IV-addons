::@ECHO OFF 
IF NOT EXIST .rom\sc4.sfc (
	tools\asar.exe .rom\src\main.asm
	move .rom\src\main.sfc .rom\main.sfc 
	ren .rom\main.sfc sc4.sfc )

copy .rom\sc4.sfc sc4.sfc
tools\asar.exe main.asm sc4.sfc
::timeout 3
pause 