' Version 1.1
set FSO = CreateObject("Scripting.FileSystemObject")
countSuccess = 0
countFail = 0
countExist = 0
Main()

function Main()
	path = inputbox("Path to create folders: " & vbNewLine & "Type # to quit.") ' Ask path
	if path = "#" then ' Quit
		WScript.Quit 0
	end if
	if FSO.FolderExists(path) then ' Check path validation
		folder2Create = inputbox("Folders name (ex: folder1;folder2;folder3): ") ' Ask folder to create
		arrFolders = Split(folder2Create, ";") ' Split string
		for each folders in arrFolders
			if FSO.FolderExists(path & "\" & folders) then ' If folder already exist
				countExist = cInt(countExist + 1)
				else
				FSO.CreateFolder (path & "\" & folders) ' Create folder
				if FSO.FolderExists(path & "\" & folders) then ' Check last created folder
					countSuccess = cInt(countSuccess + 1)
					else
					countFail = cInt(countFail + 1)
				end if
			end if
		next
		msgbox "Folders created: " & countSuccess & vbNewLine & "Folders failed: " & countFail & vbNewLine & "Already exist: " & countExist
		else
		msgbox "Path does not exist."
		Main()
	end if
end function