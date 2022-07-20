#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^!F12::Suspend  ; Assign the toggle-suspend function to a hotkey.

Alt::Return ;Disables the key alt when it's pressed alone

!e::
Send, calebj.mitchell@gmail.com
return

^o::
Send, bandit.labs.overthewire.org -p2220
return

!Enter::
Run, ubuntu.exe
return

#+Enter::
Run, wt.exe
return

!n::
Run, "C:\Users\caleb\AppData\Local\Programs\standard-notes\Standard Notes.exe"
return

!v::
Run, "C:\Users\caleb\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

!p::
Run, "C:\Users\caleb\AppData\Local\Programs\Plexamp\Plexamp.exe"
return

!k::
Run, skype.exe
return

!q::
Run, firefox.exe
return

!b::
Run, "C:\Program Files\Bitwarden\Bitwarden.exe"
return

!d::
Run, C:\Users\caleb\AppData\Local\Discord\Update.exe --processStart Discord.exe
return

!s::
Run, spotify.exe
return

!f::
Run, explorer.exe
return

!z::
Run, C:\Users\caleb\AppData\Roaming\Zoom\bin\Zoom.exe
return

!g::
Run, C:\Users\caleb\Nextcloud\Documents\Music Books\idoc.pub_claude-gordon-systematic-approach-to-daily-practice.pdf
return

$#Del::FileRecycleEmpty ; Win+Del to empty trash (recycle bin)

#+c::WinKill A    ; super+shift+c to alt+f4

;CapsLock::Escape ; remap capslock to escape

; capslock is ctrl when held, esc when tapped
; Map Capslock to Control
; Map press & release of Capslock with no other key to Esc
; Press both shift keys together to toggle Capslock

*Capslock::
    Send {Blind}{LControl down}
    return

*Capslock up::
    Send {Blind}{LControl up}
    ; Tooltip, %A_PRIORKEY%
    ; SetTimer, RemoveTooltip, 1000
    if A_PRIORKEY = CapsLock
    {
        	Send {Esc}
    }
    return

RemoveTooltip(){
    SetTimer, RemoveTooltip, Off
    Tooltip
    return
}

ToggleCaps(){
    ; this is needed because by default, AHK turns CapsLock off before doing Send
    SetStoreCapsLockMode, Off
    Send {CapsLock}
    SetStoreCapsLockMode, On
    return
}
LShift & RShift::ToggleCaps()
RShift & LShift::ToggleCaps()

; ^!r::Reload
