param (
  [string] $name,
  [string] $url
)

$url = $url
$name = $name
$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("$env:Public\Desktop\$name.url")
$ShortCut.TargetPath="$url"
$ShortCut.Save()

#This shortcut creator uses arguments
