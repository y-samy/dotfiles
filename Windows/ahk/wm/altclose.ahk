#Requires AutoHotkey v1
#SingleInstance Force ; The script will Reload if launched while already running

JEE_ProcessIsElevated(vPID)
{
        ;PROCESS_QUERY_LIMITED_INFORMATION := 0x1000
        if !(hProc := DllCall("kernel32\OpenProcess", UInt,0x1000, Int,0, UInt,vPID, Ptr))
                return -1
        ;TOKEN_QUERY := 0x8
        hToken:=0
        if !(DllCall("advapi32\OpenProcessToken", Ptr,hProc, UInt,0x8, PtrP,hToken))
        {
                DllCall("kernel32\CloseHandle", Ptr,hProc)
                return -1
        }
        ;TokenElevation := 20
        vIsElevated:=0
        vSize:=0
        vRet := (DllCall("advapi32\GetTokenInformation", Ptr,hToken, Int,20, UIntP,vIsElevated, UInt,4, UIntP,vSize))
        DllCall("kernel32\CloseHandle", Ptr,hToken)
        DllCall("kernel32\CloseHandle", Ptr,hProc)
        return vRet ? vIsElevated : -1
}

#W::
WinGet pid, PID, A
if (JEE_ProcessIsElevated(PID) = 0)
        WinClose A
else
        Send !{F4}


