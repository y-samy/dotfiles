#Requires AutoHotkey v2
#SingleInstance Force ; The script will Reload if launched while already running

; Windows Terminal
#Enter::
{
        ProcID := 0
        Run "wt.exe", , , &ProcID
        WinWaitActive(ProcID)
        If (WinActive(ProcID)) {
                WinActivate(ProcID)
        }
}
