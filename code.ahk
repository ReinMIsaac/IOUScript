#MaxThreadsPerHotkey 2
SetDefaultMouseSpeed 0
SetMouseDelay 50
SetKeyDelay 1

Esc::
  ExitApp
  return

^g::
	invites := Object()
	Loop, read, code.txt 
	{
		invites.Insert(A_LoopReadLine)
	}
	for index, element in invites 
	{
		name = %element%
		Click 400, 300
		Click 400, 300
		Send {Backspace 15}
		Send {DEL 15}
		Send %name%
		Sleep 600
		Click 450, 390
		Sleep 1000
		Click 400, 320	
	}
	return