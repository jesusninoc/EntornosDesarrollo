$MouseEventSig=@'
[DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@
$MouseEvent = Add-Type -memberDefinition $MouseEventSig -name "MouseEventWinApi" -passThru
Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(329,62)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(592,337)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 6
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(1354,12)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(587,361)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(587,361)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
#Write some text
[System.Windows.Forms.SendKeys]::SendWait("Cascos")
#Press on Enter
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

Start-Sleep 7
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(1354,12)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(801,229)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(801,229)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 4
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(585,379)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
#Write some text
[System.Windows.Forms.SendKeys]::SendWait("Me encanta automatizar")
#Press on Enter
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

Start-Sleep 6
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(801,229)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)

Start-Sleep 3
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(801,229)
$MouseEvent::mouse_event(0x00000002, 0, 0, 0, 0)
$MouseEvent::mouse_event(0x00000004, 0, 0, 0, 0)
