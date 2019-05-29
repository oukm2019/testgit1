Dim sFolder
'sFolder = "E:\test\jh\New"
sFolder = "."
s="" 
Dim fs, oFolder, oFiles, oSubFolders
set fs = CreateObject("Scripting.FileSystemObject")
set oFolder = fs.GetFolder(sFolder)     '获取文件夹
 
set oFiles = oFolder.Files              '获取文件集合
for each file in oFiles
    s = s+file.Name+vbCrLf
Next

target_file = "File Name List.txt"
CreateAfile target_file, s

wscript.echo "        Ok"

'----------------------------------------------------------------------------
'				sub CreateAfile(filename, str)
'----------------------------------------------------------------------------
sub CreateAfile(filename, str)

	Dim fso, newfile
	set fso = CreateObject("Scripting.FileSystemObject")

	set newfile = fso.CreateTextFile(filename, True, True)			'object.CreateTextFile(filename[, overwrite[, unicode]])
		newfile.Write(str)
	newfile.Close

End sub
'----------------------------------------------------------------------------
'----------------------------------------------------------------------------
 

