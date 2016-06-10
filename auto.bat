IF %F%==1 IF %C%==1(
    Xcopy  /s/z "C:\Users\gxv12\Desktop\New folder" "C:\Users\gxv12\Desktop\Gopi PPPPPP\New folder\"
	Xcopy  /s/z "C:\Users\gxv12\Desktop\Gopi PPPPPP\Srimanthudu - (2015)\Srimanthudu - (2015)" "C:\Users\gxv12\Desktop\Gopi PPPPPP\New folder\"
	Xcopy  /s/z "C:\Users\gxv12\Desktop\java_exercise" "C:\Users\gxv12\Desktop\Gopi PPPPPP\New folder\"
    )

IF %F%==1 IF %C%==0(
    ::moving the file c to d
    move "%sourceFile%" "%destinationFile%"
    )

IF %F%==0 IF %C%==1(
    ::copying a directory c from d, /s:  boş olanlar hariç, /e:boş olanlar dahil
    xcopy "%sourceCopyDirectory%" "%destinationCopyDirectory%" /s/e
    )

IF %F%==0 IF %C%==0(
    ::moving a directory
    xcopy /E "%sourceMoveDirectory%" "%destinationMoveDirectory%"
    rd /s /q "%sourceMoveDirectory%"
    )
	
	
	
	
echo "Enter your choice (1 or 2 or 3) :"
set /p dbchoice=

IF %dbchoice EQU 1 ( 
    set dbtype="oracle"
) ELSE ( 
    IF %dbchoice EQU 2 ( 
        set dbtype="sqlserver" 
    )
) ELSE ( 
    IF %dbchoice EQU 3 ( 
        set dbtype="db2" 
    )
) ELSE (
    echo "Incorrect choice" 
)