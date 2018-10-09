#############-------------------------- to open a prompt window tpo select the file or folder to be transferred----------------------########################
[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
   
   $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
   $OpenFileDialog.initialDirectory = $initialDirectory
   #$OpenFileDialog.filter = "txt (*.txt)| *.txt"
   $OpenFileDialog.ShowDialog() | Out-Null
   $textfile = $OpenFileDialog.filename
   $textfile 
###########------------code for ftp-----------------#############
$Remote_Path = Read-host "Enter the path where you want to download this file in remote server"
$servername=Read-host "Enter the name of the server"

Set-SCPFile -ComputerName $servername -Credential $(get-credential) -LocalFile $textfile -RemotePath $Remote_Path