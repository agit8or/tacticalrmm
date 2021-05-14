md -Path 'C:\agent' -Force
wget "http://www.yourwebsite.com/logos/youriconfile.ico" -outfile "c:\agent\youriconfile.ico"
$WshShell = New-Object -comObject WScript.Shell
$path = "C:\Users\All Users\desktop\Yourshortcut.url"
$targetpath = "https://yourwebsite.com"
$iconlocation = "c:\agent\youriconfile.ico"
$iconfile = "IconFile=" + $iconlocation
$Shortcut = $WshShell.CreateShortcut($path)
$Shortcut.TargetPath = $targetpath
$Shortcut.Save()
Add-Content $path "HotKey=0"
Add-Content $path "$iconfile"
Add-Content $path "IconIndex=0"

# This creates the agent directory, wget downloads the ico file to the agent directory
# Then the shortcut is created for all users and links the ico file. 

