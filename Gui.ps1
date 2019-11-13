## Code ##

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
[System.Windows.Forms.Application]::EnableVisualStyles()

## DONT REMOVE ##
$Cleanupgui                         = New-Object system.windows.forms.form
$Cleanupgui.clientsize              = '400,300'
$Cleanupgui.startposition           = 'CenterScreen'
$Cleanupgui.backcolor               = ""     
$Cleanupgui.text                    = "Clean up Gui"   
$Cleanupgui.MaximizeBox             = $false
## DONT REMOVE ##



#$files = (Get-ChildItem -Path "P:\Movies", "P:\tv" -Recurse -Force -file -Exclude *.mkv, *.avi, *.mp4, *.wmv, *.mov, *.mxf).FullName
#$files | Remove-Item -Force -WhatIf

## DONT REMOVE ##
$Cleanupgui.add_Load($OnLoadForm_StateCorrection)   
$Cleanupgui.ShowDialog()
## DONT REMOVE ##