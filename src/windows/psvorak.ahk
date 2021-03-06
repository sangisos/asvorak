; <COMPILER: v1.0.23.0>

#singleinstance force
#persistent
#notrayicon
#hotkeyinterval 1024
#maxhotkeysperinterval 64
setstorecapslockmode, off

name    = NoAdmin-Svorak
enable  = Aktivera &Svorak
disable = Inaktivera &Svorak
ctrls   = &QWERTY-ctrl-tecken

regread, inputlocale, HKEY_CURRENT_USER, Keyboard Layout\Preload, 1
regread, inputlocalealias, HKEY_CURRENT_USER, Keyboard Layout\Substitutes, %inputlocale%
if inputlocalealias <>
   inputlocale = %inputlocalealias%
if inputlocale <> 0000041d
{
   suspend
   regread, inputlocale, HKEY_LOCAL_MACHINE, SYSTEM\CurrentControlSet\Control\Keyboard Layouts\%inputlocale%, Layout Text
   msgbox, 48, Varning!, Inkompatibel tangentbordslayout:   `n`n      "%inputlocale%"   `n`nSvensk QWERTY m�ste vara standardlayout f�r   `natt %name% ska fungera som f�rv�ntat.   `n`n�ndra standardlayoten under Kontrollpanelen   `n-> Nationella inst�llningar och spr�kinst�llningar   `n-> Spr�k -> Information...   `n
   exitapp
}

stringtrimright, inifile, a_scriptname, 4
inifile = %inifile%.ini
iniread, firstrun, %inifile%, environment, firstRun, on
if firstrun <> off
{
   iniwrite, off, %inifile%, environment, firstRun
   gosub help
}


menu, tray, add, %disable%, togglesvorak
menu, tray, default, %disable%
menu, tray, add, %ctrls%, togglectrl
   menu, helpmenu, add, &Hj�lp, help
   menu, helpmenu, add
   menu, helpmenu, add, http://aoeu.&info/, aoeu
   menu, helpmenu, add, http://&autohotkey.com/, autohotkey
menu, tray, add, &Dokumentation, :helpmenu
menu, tray, add
menu, tray, add, D�lj &aktivitetsikonen, hide
menu, tray, add, &Avsluta %name%, exitprogram
menu, tray, tip, %name%

iniread, scc, %inifile%, environment, svorakCtrlChars, on
gosub, setctrl
menu, tray, icon
blockinput, send






q = �
w = �
e = �
r = p
t = y
y = f
u = g
i = c
o = r
p = l
� = `,

s = o
d = e
f = u
g = i
h = d
j = h
k = t
l = n
� = s
� = -

z = .
x = q
c = j
v = k
b = x
n = b
$ = w
@ = v
_ = z


#usehook on

q::send %q%
w::send %w%
e::send %e%
r::send %r%
t::send %t%
y::send %y%
u::send %u%
i::send %i%
o::send %o%
p::send %p%
�::send %�%

s::send %s%
d::send %d%
f::send %f%
g::send %g%
h::send %h%
j::send %j%
k::send %k%
l::send %l%
�::send %�%
�::send %�%

z::send %z%
x::send %x%
c::send %c%
v::send %v%
b::send %b%
n::send %n%
,::send %$%
.::send %@%
-::send %_%


+q::send +%q%
+w::send +%w%
+e::send +%e%
+r::send +%r%
+t::send +%t%
+y::send +%y%
+u::send +%u%
+i::send +%i%
+o::send +%o%
+p::send +%p%
+�::send +%�%

+s::send +%s%
+d::send +%d%
+f::send +%f%
+g::send +%g%
+h::send +%h%
+j::send +%j%
+k::send +%k%
+l::send +%l%
+�::send +%�%
+�::send +%�%

+z::send +%z%
+x::send +%x%
+c::send +%c%
+v::send +%v%
+b::send +%b%
+n::send +%n%
+,::send +%$%
+.::send +%@%
+-::send +%_%


^q::send ^q
^w::send ^w
^e::send ^e
^r::send ^r
^t::send ^t
^y::send ^y
^u::send ^u
^i::send ^i
^o::send ^o
^p::send ^p
^�::send ^�

^s::send ^s
^d::send ^d
^f::send ^f
^g::send ^g
^h::send ^h
^j::send ^j
^k::send ^k
^l::send ^l
^�::send ^�
^�::send ^�

^z::send ^z
^x::send ^x
^c::send ^c
^v::send ^v
^b::send ^b
^n::send ^n
^,::send ^$
^.::send ^@
^-::send ^_


!q::send {altdown}q
!w::send {altdown}w
!e::send {altdown}e
!r::send {altdown}r
!t::send {altdown}t
!y::send {altdown}y
!u::send {altdown}u
!i::send {altdown}i
!o::send {altdown}o
!p::send {altdown}p
!�::send {altdown}�

!s::send {altdown}s
!d::send {altdown}d
!f::send {altdown}f
!g::send {altdown}g
!h::send {altdown}h
!j::send {altdown}j
!k::send {altdown}k
!l::send {altdown}l
!�::send {altdown}�
!�::send {altdown}�

!z::send {altdown}z
!x::send {altdown}x
!c::send {altdown}c
!v::send {altdown}v
!b::send {altdown}b
!n::send {altdown}n
!,::send {altdown}$
!.::send {altdown}@
!-::send {altdown}_


#q::send #q
#w::send #w
#e::send #e
#r::send #r
#t::send #t
#y::send #y
#u::send #u
#i::send #i
#o::send #o
#p::send #p
#�::send #�

#s::send #s
#d::send #d
#f::send #f
#g::send #g
#h::send #h
#j::send #j
#k::send #k
#l::send #l
#�::send #�
#�::send #�

#z::send #z
#x::send #x
#c::send #c
#v::send #v
#b::send #b
#n::send #n
#,::send #$
#.::send #@
#-::send #_


^+q::send ^+q
^+w::send ^+w
^+e::send ^+e
^+r::send ^+r
^+t::send ^+t
^+y::send ^+y
^+u::send ^+u
^+i::send ^+i
^+o::send ^+o
^+p::send ^+p
^+�::send ^+�

^+s::send ^+s
^+d::send ^+d
^+f::send ^+f
^+g::send ^+g
^+h::send ^+h
^+j::send ^+j
^+k::send ^+k
^+l::send ^+l
^+�::send ^+�
^+�::send ^+�

^+z::send ^+z
^+x::send ^+x
^+c::send ^+c
^+v::send ^+v
^+b::send ^+b
^+n::send ^+n
^+,::send ^+$
^+.::send ^+@
^+-::send ^+_



#+q::send #+q
#+w::send #+w
#+e::send #+e
#+r::send #+r
#+t::send #+t
#+y::send #+y
#+u::send #+u
#+i::send #+i
#+o::send #+o
#+p::send #+p
#+�::send #+�

#+s::send #+s
#+d::send #+d
#+f::send #+f
#+g::send #+g
#+h::send #+h
#+j::send #+j
#+k::send #+k
#+l::send #+l
#+�::send #+�
#+�::send #+�

#+z::send #+z
#+x::send #+x
#+c::send #+c
#+v::send #+v
#+b::send #+b
#+n::send #+n
#+,::send #+$
#+.::send #+@
#+-::send #+_


^<!q::send ^!%q%
^<!w::send ^!%w%
^<!e::send ^!%e%
^<!r::send ^!%r%
^<!t::send ^!%t%
^<!y::send ^!%y%
^<!u::send ^!%u%
^<!i::send ^!%i%
^<!o::send ^!%o%
^<!p::send ^!%p%
^<!�::send ^!%�%

^<!s::send ^!%s%
^<!d::send ^!%d%
^<!f::send ^!%f%
^<!g::send ^!%g%
^<!h::send ^!%h%
^<!j::send ^!%j%
^<!k::send ^!%k%
^<!l::send ^!%l%
^<!�::send ^!%�%
^<!�::send ^!%�%

^<!z::send ^!%z%
^<!x::send ^!%x%
^<!c::send ^!%c%
^<!v::send ^!%v%
^<!b::send ^!%b%
^<!n::send ^!%n%
^<!,::send ^!%$%
^<!.::send ^!%@%
^<!-::send ^!%_%


^#q::send ^#%q%
^#w::send ^#%w%
^#e::send ^#%e%
^#r::send ^#%r%
^#t::send ^#%t%
^#y::send ^#%y%
^#u::send ^#%u%
^#i::send ^#%i%
^#o::send ^#%o%
^#p::send ^#%p%
^#�::send ^#%�%

^#s::send ^#%s%
^#d::send ^#%d%
^#f::send ^#%f%
^#g::send ^#%g%
^#h::send ^#%h%
^#j::send ^#%j%
^#k::send ^#%k%
^#l::send ^#%l%
^#�::send ^#%�%
^#�::send ^#%�%

^#z::send ^#%z%
^#x::send ^#%x%
^#c::send ^#%c%
^#v::send ^#%v%
^#b::send ^#%b%
^#n::send ^#%n%
^#,::send ^#%$%
^#.::send ^#%@%
^#-::send ^#%_%


<!#q::send !#%q%
<!#w::send !#%w%
<!#e::send !#%e%
<!#r::send !#%r%
<!#t::send !#%t%
<!#y::send !#%y%
<!#u::send !#%u%
<!#i::send !#%i%
<!#o::send !#%o%
<!#p::send !#%p%
<!#�::send !#%�%

<!#s::send !#%s%
<!#d::send !#%d%
<!#f::send !#%f%
<!#g::send !#%g%
<!#h::send !#%h%
<!#j::send !#%j%
<!#k::send !#%k%
<!#l::send !#%l%
<!#�::send !#%�%
<!#�::send !#%�%

<!#z::send !#%z%
<!#x::send !#%x%
<!#c::send !#%c%
<!#v::send !#%v%
<!#b::send !#%b%
<!#n::send !#%n%
<!#,::send !#%$%
<!#.::send !#%@%
<!#-::send !#%_%


^<!+q::send ^!+%q%
^<!+w::send ^!+%w%
^<!+e::send ^!+%e%
^<!+r::send ^!+%r%
^<!+t::send ^!+%t%
^<!+y::send ^!+%y%
^<!+u::send ^!+%u%
^<!+i::send ^!+%i%
^<!+o::send ^!+%o%
^<!+p::send ^!+%p%
^<!+�::send ^!+%�%

^<!+s::send ^!+%s%
^<!+d::send ^!+%d%
^<!+f::send ^!+%f%
^<!+g::send ^!+%g%
^<!+h::send ^!+%h%
^<!+j::send ^!+%j%
^<!+k::send ^!+%k%
^<!+l::send ^!+%l%
^<!+�::send ^!+%�%
^<!+�::send ^!+%�%

^<!+z::send ^!+%z%
^<!+x::send ^!+%x%
^<!+c::send ^!+%c%
^<!+v::send ^!+%v%
^<!+b::send ^!+%b%
^<!+n::send ^!+%n%
^<!+,::send ^!+%$%
^<!+.::send ^!+%@%
^<!+-::send ^!+%_%


^<!#q::send ^!#%q%
^<!#w::send ^!#%w%
^<!#e::send ^!#%e%
^<!#r::send ^!#%r%
^<!#t::send ^!#%t%
^<!#y::send ^!#%y%
^<!#u::send ^!#%u%
^<!#i::send ^!#%i%
^<!#o::send ^!#%o%
^<!#p::send ^!#%p%
^<!#�::send ^!#%�%

^<!#s::send ^!#%s%
^<!#d::send ^!#%d%
^<!#f::send ^!#%f%
^<!#g::send ^!#%g%
^<!#h::send ^!#%h%
^<!#j::send ^!#%j%
^<!#k::send ^!#%k%
^<!#l::send ^!#%l%
^<!#�::send ^!#%�%
^<!#�::send ^!#%�%

^<!#z::send ^!#%z%
^<!#x::send ^!#%x%
^<!#c::send ^!#%c%
^<!#v::send ^!#%v%
^<!#b::send ^!#%b%
^<!#n::send ^!#%n%
^<!#,::send ^!#%$%
^<!#.::send ^!#%@%
^<!#-::send ^!#%_%


^#+q::send ^#+%q%
^#+w::send ^#+%w%
^#+e::send ^#+%e%
^#+r::send ^#+%r%
^#+t::send ^#+%t%
^#+y::send ^#+%y%
^#+u::send ^#+%u%
^#+i::send ^#+%i%
^#+o::send ^#+%o%
^#+p::send ^#+%p%
^#+�::send ^#+%�%

^#+s::send ^#+%s%
^#+d::send ^#+%d%
^#+f::send ^#+%f%
^#+g::send ^#+%g%
^#+h::send ^#+%h%
^#+j::send ^#+%j%
^#+k::send ^#+%k%
^#+l::send ^#+%l%
^#+�::send ^#+%�%
^#+�::send ^#+%�%

^#+z::send ^#+%z%
^#+x::send ^#+%x%
^#+c::send ^#+%c%
^#+v::send ^#+%v%
^#+b::send ^#+%b%
^#+n::send ^#+%n%
^#+,::send ^#+%$%
^#+.::send ^#+%@%
^#+-::send ^#+%_%


<!#+q::send !#+%q%
<!#+w::send !#+%w%
<!#+e::send !#+%e%
<!#+r::send !#+%r%
<!#+t::send !#+%t%
<!#+y::send !#+%y%
<!#+u::send !#+%u%
<!#+i::send !#+%i%
<!#+o::send !#+%o%
<!#+p::send !#+%p%
<!#+�::send !#+%�%

<!#+s::send !#+%s%
<!#+d::send !#+%d%
<!#+f::send !#+%f%
<!#+g::send !#+%g%
<!#+h::send !#+%h%
<!#+j::send !#+%j%
<!#+k::send !#+%k%
<!#+l::send !#+%l%
<!#+�::send !#+%�%
<!#+�::send !#+%�%

<!#+z::send !#+%z%
<!#+x::send !#+%x%
<!#+c::send !#+%c%
<!#+v::send !#+%v%
<!#+b::send !#+%b%
<!#+n::send !#+%n%
<!#+,::send !#+%$%
<!#+.::send !#+%@%
<!#+-::send !#+%_%


^<!#+q::send ^!#+%q%
^<!#+w::send ^!#+%w%
^<!#+e::send ^!#+%e%
^<!#+r::send ^!#+%r%
^<!#+t::send ^!#+%t%
^<!#+y::send ^!#+%y%
^<!#+u::send ^!#+%u%
^<!#+i::send ^!#+%i%
^<!#+o::send ^!#+%o%
^<!#+p::send ^!#+%p%
^<!#+�::send ^!#+%�%

^<!#+s::send ^!#+%s%
^<!#+d::send ^!#+%d%
^<!#+f::send ^!#+%f%
^<!#+g::send ^!#+%g%
^<!#+h::send ^!#+%h%
^<!#+j::send ^!#+%j%
^<!#+k::send ^!#+%k%
^<!#+l::send ^!#+%l%
^<!#+�::send ^!#+%�%
^<!#+�::send ^!#+%�%

^<!#+z::send ^!#+%z%
^<!#+x::send ^!#+%x%
^<!#+c::send ^!#+%c%
^<!#+v::send ^!#+%v%
^<!#+b::send ^!#+%b%
^<!#+n::send ^!#+%n%
^<!#+,::send ^!#+%$%
^<!#+.::send ^!#+%@%
^<!#+-::send ^!#+%_%

^!q::send $
^!w::send {=}
^!e::send (
^!r::send )
^!t::send "

^!a::send {+}
^!s::send *
^!d::send {{}
^!f::send {}}
^!g::send '

^!z::send :
^!x::return
^!c::send [
^!v::send ]
^!b::send |

^!y::return
^!u::send /
^!i::send \
^!o::send <
^!p::send >

^!h::send @
^!j::send {!}
^!k::send ?
^!l::send &
^!SC029::send `%

^!n::send {#}

+1::send {!}
+2::send "
+3::send {#}
+4::send �
+5::send `%
+6::send &
+7::send /
+8::send (
+9::send )
+0::send {=}
+SC00C::send ?

^!2::send @
^!3::send �
^!4::send $
^!7::send {{}
^!8::send [
^!9::send ]
^!0::send {}}
^!SC00C::send \
SC01A::send `,
+SC01A::send `;

#usehook off
return

togglesvorak:
   if state <>
   {
      state =
      menu, tray, rename, %enable%, %disable%
      menu, tray, enable, %ctrls%
   }
   else
   {
      state = : Inaktiverad
      menu, tray, rename, %disable%, %enable%
      menu, tray, disable, %ctrls%
   }

   menu, tray, tip, %name%%state%
   suspend
return

togglectrl:
   if scc <> off
      scc = off
   else
      scc = on
   iniwrite, %scc%, %inifile%, environment, svorakCtrlChars
   gosub, setctrl
return

setctrl:
   if scc <> off
      menu, tray, uncheck, %ctrls%
   else
      menu, tray, check, %ctrls%


   hotkey, ^q, %scc%
   hotkey, ^w, %scc%
   hotkey, ^e, %scc%
   hotkey, ^r, %scc%
   hotkey, ^t, %scc%
   hotkey, ^y, %scc%
   hotkey, ^u, %scc%
   hotkey, ^i, %scc%
   hotkey, ^o, %scc%
   hotkey, ^p, %scc%
   hotkey, ^�, %scc%

   hotkey, ^s, %scc%
   hotkey, ^d, %scc%
   hotkey, ^f, %scc%
   hotkey, ^g, %scc%
   hotkey, ^h, %scc%
   hotkey, ^j, %scc%
   hotkey, ^k, %scc%
   hotkey, ^l, %scc%
   hotkey, ^�, %scc%
   hotkey, ^�, %scc%

   hotkey, ^z, %scc%
   hotkey, ^x, %scc%
   hotkey, ^c, %scc%
   hotkey, ^v, %scc%
   hotkey, ^b, %scc%
   hotkey, ^n, %scc%
   hotkey, ^`,, %scc%
   hotkey, ^., %scc%
   hotkey, ^-, %scc%


   hotkey, #q, %scc%
   hotkey, #w, %scc%
   hotkey, #e, %scc%
   hotkey, #r, %scc%
   hotkey, #t, %scc%
   hotkey, #y, %scc%
   hotkey, #u, %scc%
   hotkey, #i, %scc%
   hotkey, #o, %scc%
   hotkey, #p, %scc%
   hotkey, #�, %scc%

   hotkey, #s, %scc%
   hotkey, #d, %scc%
   hotkey, #f, %scc%
   hotkey, #g, %scc%
   hotkey, #h, %scc%
   hotkey, #j, %scc%
   hotkey, #k, %scc%
   hotkey, #l, %scc%
   hotkey, #�, %scc%
   hotkey, #�, %scc%

   hotkey, #z, %scc%
   hotkey, #x, %scc%
   hotkey, #c, %scc%
   hotkey, #v, %scc%
   hotkey, #b, %scc%
   hotkey, #n, %scc%
   hotkey, #`,, %scc%
   hotkey, #., %scc%
   hotkey, #-, %scc%


   hotkey, ^+q, %scc%
   hotkey, ^+w, %scc%
   hotkey, ^+e, %scc%
   hotkey, ^+r, %scc%
   hotkey, ^+t, %scc%
   hotkey, ^+y, %scc%
   hotkey, ^+u, %scc%
   hotkey, ^+i, %scc%
   hotkey, ^+o, %scc%
   hotkey, ^+p, %scc%
   hotkey, ^+�, %scc%

   hotkey, ^+s, %scc%
   hotkey, ^+d, %scc%
   hotkey, ^+f, %scc%
   hotkey, ^+g, %scc%
   hotkey, ^+h, %scc%
   hotkey, ^+j, %scc%
   hotkey, ^+k, %scc%
   hotkey, ^+l, %scc%
   hotkey, ^+�, %scc%
   hotkey, ^+�, %scc%

   hotkey, ^+z, %scc%
   hotkey, ^+x, %scc%
   hotkey, ^+c, %scc%
   hotkey, ^+v, %scc%
   hotkey, ^+b, %scc%
   hotkey, ^+n, %scc%
   hotkey, ^+`,, %scc%
   hotkey, ^+., %scc%
   hotkey, ^+-, %scc%

   hotkey, #+q, %scc%
   hotkey, #+w, %scc%
   hotkey, #+e, %scc%
   hotkey, #+r, %scc%
   hotkey, #+t, %scc%
   hotkey, #+y, %scc%
   hotkey, #+u, %scc%
   hotkey, #+i, %scc%
   hotkey, #+o, %scc%
   hotkey, #+p, %scc%
   hotkey, #+�, %scc%

   hotkey, #+s, %scc%
   hotkey, #+d, %scc%
   hotkey, #+f, %scc%
   hotkey, #+g, %scc%
   hotkey, #+h, %scc%
   hotkey, #+j, %scc%
   hotkey, #+k, %scc%
   hotkey, #+l, %scc%
   hotkey, #+�, %scc%
   hotkey, #+�, %scc%

   hotkey, #+z, %scc%
   hotkey, #+x, %scc%
   hotkey, #+c, %scc%
   hotkey, #+v, %scc%
   hotkey, #+b, %scc%
   hotkey, #+n, %scc%
   hotkey, #+`,, %scc%
   hotkey, #+., %scc%
   hotkey, #+-, %scc%


   hotkey, ^<!q, %scc%
   hotkey, ^<!w, %scc%
   hotkey, ^<!e, %scc%
   hotkey, ^<!r, %scc%
   hotkey, ^<!t, %scc%
   hotkey, ^<!y, %scc%
   hotkey, ^<!u, %scc%
   hotkey, ^<!i, %scc%
   hotkey, ^<!o, %scc%
   hotkey, ^<!p, %scc%
   hotkey, ^<!�, %scc%

   hotkey, ^<!s, %scc%
   hotkey, ^<!d, %scc%
   hotkey, ^<!f, %scc%
   hotkey, ^<!g, %scc%
   hotkey, ^<!h, %scc%
   hotkey, ^<!j, %scc%
   hotkey, ^<!k, %scc%
   hotkey, ^<!l, %scc%
   hotkey, ^<!�, %scc%
   hotkey, ^<!�, %scc%

   hotkey, ^<!z, %scc%
   hotkey, ^<!x, %scc%
   hotkey, ^<!c, %scc%
   hotkey, ^<!v, %scc%
   hotkey, ^<!b, %scc%
   hotkey, ^<!n, %scc%
   hotkey, ^<!`,, %scc%
   hotkey, ^<!., %scc%
   hotkey, ^<!-, %scc%


   hotkey, ^#q, %scc%
   hotkey, ^#w, %scc%
   hotkey, ^#e, %scc%
   hotkey, ^#r, %scc%
   hotkey, ^#t, %scc%
   hotkey, ^#y, %scc%
   hotkey, ^#u, %scc%
   hotkey, ^#i, %scc%
   hotkey, ^#o, %scc%
   hotkey, ^#p, %scc%
   hotkey, ^#�, %scc%

   hotkey, ^#s, %scc%
   hotkey, ^#d, %scc%
   hotkey, ^#f, %scc%
   hotkey, ^#g, %scc%
   hotkey, ^#h, %scc%
   hotkey, ^#j, %scc%
   hotkey, ^#k, %scc%
   hotkey, ^#l, %scc%
   hotkey, ^#�, %scc%
   hotkey, ^#�, %scc%

   hotkey, ^#z, %scc%
   hotkey, ^#x, %scc%
   hotkey, ^#c, %scc%
   hotkey, ^#v, %scc%
   hotkey, ^#b, %scc%
   hotkey, ^#n, %scc%
   hotkey, ^#`,, %scc%
   hotkey, ^#., %scc%
   hotkey, ^#-, %scc%


   hotkey, <!#q, %scc%
   hotkey, <!#w, %scc%
   hotkey, <!#e, %scc%
   hotkey, <!#r, %scc%
   hotkey, <!#t, %scc%
   hotkey, <!#y, %scc%
   hotkey, <!#u, %scc%
   hotkey, <!#i, %scc%
   hotkey, <!#o, %scc%
   hotkey, <!#p, %scc%
   hotkey, <!#�, %scc%

   hotkey, <!#s, %scc%
   hotkey, <!#d, %scc%
   hotkey, <!#f, %scc%
   hotkey, <!#g, %scc%
   hotkey, <!#h, %scc%
   hotkey, <!#j, %scc%
   hotkey, <!#k, %scc%
   hotkey, <!#l, %scc%
   hotkey, <!#�, %scc%
   hotkey, <!#�, %scc%

   hotkey, <!#z, %scc%
   hotkey, <!#x, %scc%
   hotkey, <!#c, %scc%
   hotkey, <!#v, %scc%
   hotkey, <!#b, %scc%
   hotkey, <!#n, %scc%
   hotkey, <!#`,, %scc%
   hotkey, <!#., %scc%
   hotkey, <!#-, %scc%


   hotkey, ^<!+q, %scc%
   hotkey, ^<!+w, %scc%
   hotkey, ^<!+e, %scc%
   hotkey, ^<!+r, %scc%
   hotkey, ^<!+t, %scc%
   hotkey, ^<!+y, %scc%
   hotkey, ^<!+u, %scc%
   hotkey, ^<!+i, %scc%
   hotkey, ^<!+o, %scc%
   hotkey, ^<!+p, %scc%
   hotkey, ^<!+�, %scc%

   hotkey, ^<!+s, %scc%
   hotkey, ^<!+d, %scc%
   hotkey, ^<!+f, %scc%
   hotkey, ^<!+g, %scc%
   hotkey, ^<!+h, %scc%
   hotkey, ^<!+j, %scc%
   hotkey, ^<!+k, %scc%
   hotkey, ^<!+l, %scc%
   hotkey, ^<!+�, %scc%
   hotkey, ^<!+�, %scc%

   hotkey, ^<!+z, %scc%
   hotkey, ^<!+x, %scc%
   hotkey, ^<!+c, %scc%
   hotkey, ^<!+v, %scc%
   hotkey, ^<!+b, %scc%
   hotkey, ^<!+n, %scc%
   hotkey, ^<!+`,, %scc%
   hotkey, ^<!+., %scc%
   hotkey, ^<!+-, %scc%


   hotkey, ^<!#q, %scc%
   hotkey, ^<!#w, %scc%
   hotkey, ^<!#e, %scc%
   hotkey, ^<!#r, %scc%
   hotkey, ^<!#t, %scc%
   hotkey, ^<!#y, %scc%
   hotkey, ^<!#u, %scc%
   hotkey, ^<!#i, %scc%
   hotkey, ^<!#o, %scc%
   hotkey, ^<!#p, %scc%
   hotkey, ^<!#�, %scc%

   hotkey, ^<!#s, %scc%
   hotkey, ^<!#d, %scc%
   hotkey, ^<!#f, %scc%
   hotkey, ^<!#g, %scc%
   hotkey, ^<!#h, %scc%
   hotkey, ^<!#j, %scc%
   hotkey, ^<!#k, %scc%
   hotkey, ^<!#l, %scc%
   hotkey, ^<!#�, %scc%
   hotkey, ^<!#�, %scc%

   hotkey, ^<!#z, %scc%
   hotkey, ^<!#x, %scc%
   hotkey, ^<!#c, %scc%
   hotkey, ^<!#v, %scc%
   hotkey, ^<!#b, %scc%
   hotkey, ^<!#n, %scc%
   hotkey, ^<!#`,, %scc%
   hotkey, ^<!#., %scc%
   hotkey, ^<!#-, %scc%


   hotkey, ^#+q, %scc%
   hotkey, ^#+w, %scc%
   hotkey, ^#+e, %scc%
   hotkey, ^#+r, %scc%
   hotkey, ^#+t, %scc%
   hotkey, ^#+y, %scc%
   hotkey, ^#+u, %scc%
   hotkey, ^#+i, %scc%
   hotkey, ^#+o, %scc%
   hotkey, ^#+p, %scc%
   hotkey, ^#+�, %scc%

   hotkey, ^#+s, %scc%
   hotkey, ^#+d, %scc%
   hotkey, ^#+f, %scc%
   hotkey, ^#+g, %scc%
   hotkey, ^#+h, %scc%
   hotkey, ^#+j, %scc%
   hotkey, ^#+k, %scc%
   hotkey, ^#+l, %scc%
   hotkey, ^#+�, %scc%
   hotkey, ^#+�, %scc%

   hotkey, ^#+z, %scc%
   hotkey, ^#+x, %scc%
   hotkey, ^#+c, %scc%
   hotkey, ^#+v, %scc%
   hotkey, ^#+b, %scc%
   hotkey, ^#+n, %scc%
   hotkey, ^#+`,, %scc%
   hotkey, ^#+., %scc%
   hotkey, ^#+-, %scc%


   hotkey, <!#+q, %scc%
   hotkey, <!#+w, %scc%
   hotkey, <!#+e, %scc%
   hotkey, <!#+r, %scc%
   hotkey, <!#+t, %scc%
   hotkey, <!#+y, %scc%
   hotkey, <!#+u, %scc%
   hotkey, <!#+i, %scc%
   hotkey, <!#+o, %scc%
   hotkey, <!#+p, %scc%
   hotkey, <!#+�, %scc%

   hotkey, <!#+s, %scc%
   hotkey, <!#+d, %scc%
   hotkey, <!#+f, %scc%
   hotkey, <!#+g, %scc%
   hotkey, <!#+h, %scc%
   hotkey, <!#+j, %scc%
   hotkey, <!#+k, %scc%
   hotkey, <!#+l, %scc%
   hotkey, <!#+�, %scc%
   hotkey, <!#+�, %scc%

   hotkey, <!#+z, %scc%
   hotkey, <!#+x, %scc%
   hotkey, <!#+c, %scc%
   hotkey, <!#+v, %scc%
   hotkey, <!#+b, %scc%
   hotkey, <!#+n, %scc%
   hotkey, <!#+`,, %scc%
   hotkey, <!#+., %scc%
   hotkey, <!#+-, %scc%


   hotkey, ^<!#+q, %scc%
   hotkey, ^<!#+w, %scc%
   hotkey, ^<!#+e, %scc%
   hotkey, ^<!#+r, %scc%
   hotkey, ^<!#+t, %scc%
   hotkey, ^<!#+y, %scc%
   hotkey, ^<!#+u, %scc%
   hotkey, ^<!#+i, %scc%
   hotkey, ^<!#+o, %scc%
   hotkey, ^<!#+p, %scc%
   hotkey, ^<!#+�, %scc%

   hotkey, ^<!#+s, %scc%
   hotkey, ^<!#+d, %scc%
   hotkey, ^<!#+f, %scc%
   hotkey, ^<!#+g, %scc%
   hotkey, ^<!#+h, %scc%
   hotkey, ^<!#+j, %scc%
   hotkey, ^<!#+k, %scc%
   hotkey, ^<!#+l, %scc%
   hotkey, ^<!#+�, %scc%
   hotkey, ^<!#+�, %scc%

   hotkey, ^<!#+z, %scc%
   hotkey, ^<!#+x, %scc%
   hotkey, ^<!#+c, %scc%
   hotkey, ^<!#+v, %scc%
   hotkey, ^<!#+b, %scc%
   hotkey, ^<!#+n, %scc%
   hotkey, ^<!#+`,, %scc%
   hotkey, ^<!#+., %scc%
   hotkey, ^<!#+-, %scc%

return

help:
   msgbox, 64, %name%, Svorak utan administrat�rsr�ttigheter.   `n`n%name% ers�tter den vanliga svenska   `ntangentbordslayouten med alternativet Svorak,   `ns� som det beskrivs p� http://aoeu.info/.   `n`nN�r processen �r aktiverad f�ngas alla tangent- `ntryckningar och en �vers�ttning skickas vidare,  `nvilket sker helt transparent f�r anv�ndaren.   `nIngenting installeras.   `n`nTecken�vers�ttingen kan l�tt inaktiveras via en   `nikon i Aktivitetsf�ltet. D�r finns �ven ett val som  `nsom avg�r om ctrl-tecken ska �vers�ttas.   `n`n`nSimon Griph, 2004-10-25  `nExtra mod by Zaz, 2012 `n
return

aoeu:
   run http://aoeu.info/
return

autohotkey:
   run http://autohotkey.com/
return

hide:
   menu, tray, noicon
return

exitprogram:
   exitapp
return


LAlt & LButton::
CoordMode, Mouse
MouseGetPos, EWD_MouseStartX, EWD_MouseStartY, EWD_MouseWin
SetTimer, EWD_WatchMouse, 10
return

EWD_WatchMouse:
GetKeyState, LButtonState, LButton, P
if LButtonState = U
{
	SetTimer, EWD_WatchMouse, off
		return
}


CoordMode, Mouse
MouseGetPos, EWD_MouseX, EWD_MouseY
EWD_DeltaX = %EWD_MouseX%
EWD_DeltaX -= %EWD_MouseStartX%
EWD_DeltaY = %EWD_MouseY%
EWD_DeltaY -= %EWD_MouseStartY%
EWD_MouseStartX = %EWD_MouseX%
EWD_MouseStartY = %EWD_MouseY%
WinGetPos, EWD_WinX, EWD_WinY,,, ahk_id %EWD_MouseWin%
EWD_WinX += %EWD_DeltaX%
EWD_WinY += %EWD_DeltaY%
SetWinDelay, -1
WinMove, ahk_id %EWD_MouseWin%,, %EWD_WinX%, %EWD_WinY%
return