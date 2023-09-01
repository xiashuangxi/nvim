#SingleInstance Off
Capslock::
Send {LControl Down}
KeyWait, CapsLock
Send {LControl Up}
if (A_PriorKey = "CapsLock")
{
    SetCapsLockState % !GetKeyState("CapsLock", "T")
}
