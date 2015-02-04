call clean
del c:\mymml11.zip /p
del *.new /p
del *.rtf /p
pkzip -r -p -x*.obj -x*.zip -x*.rtf -x*.exe -x*.res -x*.bak -x*.pch -x*.pdb -x*.bsc -x*.sbr -x*.ncb c:\mymml11.zip *.*
copy c:\mymml11.zip a:
pause
pkunzip -t a:\mymml11.zip
