; HIGHLIGHT usable items toggle and AUTORUN toggle for Dragon Age 1 & 2
; 
; Created:     2011/03/17: Cambios@Frogdice Games
; Last Change: 2011/03/17: Cambios@Frogdice Games
; Version:     1.0
;
; Frogdice Games: Our Worlds, Your Imagination
; http://www.frogdice.com 
;
; The purposes of this mod are:
;
; HIGHLIGHTING: Turns the tab key into a toggle for highlighting usable
;      objects in game all the time. Many people have to hold the button 
;      down while running around, and this is a pain.
;
; AUTORUN: Considering how much running around there is, it continues to
;      amaze me that Mass Effect and Dragon Age do not have an autorun
;      functionality. Well, now it does. If you set Numpad0 to the secondary
;      MOVE FORWARD key, you can then use it as an autorun. Hitting Numpad0,
;      W, or S, will toggle autorun off. If you would prefer a different
;      autorun key, simply edit the file and change Numpad0 to the key you
;      would prefer. 
;
; I was inspired to write this mod by Fisknils's "Highlight Toggle using
; AutoHotKey" mod. After using his mod, I went to AutoHotKey's site and 
; learned a bit more about their scripting language to simplify the tab 
; toggle, and to create the autorun toggle. Thanks Fisknils!

#MaxHotkeysPerInterval 200

; ==============================================================
; =====  DRAGON AGE 1  =========================================
; ==============================================================

#IfWinActive ahk_class DragonAge
$Tab::
 toggle := !Toggle
 Send % "{Tab " . ((Toggle) ? ("down") : ("up")) . "}"
return


$Numpad0:: Gosub, AutorunToggleDA1
~w:: Gosub, AutoRunOffDA1
~s:: Gosub, AutoRunOffDA1
LButton & RButton::Gosub, AutoRunOffDA1
RButton & LButton::Gosub, AutoRunOffDA1

AutorunToggleDA1:
 toggle := !toggle
 Send % "{Numpad0 " . ((Toggle) ? ("down") : ("up")) . "}"
return

AutoRunOffDA1:
toggle = ; Off
Send {Numpad0 up}
return

; If you want to add any custom hotkeys for DA1, do it below.


; ==============================================================
; =====  DRAGON AGE 2  =========================================
; ==============================================================

#IfWinActive ahk_class DragonAge2
$Tab::
 toggle := !Toggle
 Send % "{Tab " . ((Toggle) ? ("down") : ("up")) . "}"
return

$Numpad0:: Gosub, AutorunToggle
~w:: Gosub, AutoRunOff
~s:: Gosub, AutoRunOff

AutorunToggle:
 toggle := !toggle
 Send % "{Numpad0 " . ((Toggle) ? ("down") : ("up")) . "}"
return

AutorunOff:
toggle = ; Off
Send {Numpad0 up}
return


; If you want to add any custom hotkeys for DA2, do it below.

