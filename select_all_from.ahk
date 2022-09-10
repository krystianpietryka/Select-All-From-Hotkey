#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


^5::
counter_file_path = PUT FILE PATH HERE
previous_clipboard = %clipboard%
clipboard = SELECT * FROM{Space} 
actual_counter = 0
Send %Clipboard%
clipboard = %previous_clipboard%
FileRead, actual_counter, %counter_file_path%
actual_counter := actual_counter + 1
FileDelete, %counter_file_path%
FileAppend, %actual_counter%, %counter_file_path%SELECT * FROM 
