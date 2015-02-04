# Microsoft Developer Studio Project File - Name="Logicl32" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Logicl32 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Mmlogic.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Mmlogic.mak" CFG="Logicl32 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Logicl32 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Logicl32 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/Logic", BAAAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Logicl32 - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\WinDebug"
# PROP BASE Intermediate_Dir ".\WinDebug"
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Ignore_Export_Lib 0
# ADD BASE CPP /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /G5 /MDd /W4 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Fr /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 WinMM.lib /nologo /subsystem:windows /profile /map /debug /machine:I386 /mapinfo:lines

!ELSEIF  "$(CFG)" == "Logicl32 - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\WinRel"
# PROP BASE Intermediate_Dir ".\WinRel"
# PROP Use_MFC 5
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Ignore_Export_Lib 0
# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_AFXDLL" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /G5 /MT /W4 /GX /O2 /Op- /Oy /Ob2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /FA<none> /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 WinMM.lib /nologo /subsystem:windows /profile /map /machine:I386 /mapinfo:lines

!ENDIF 

# Begin Target

# Name "Logicl32 - Win32 Debug"
# Name "Logicl32 - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\Analyze.cpp
# End Source File
# Begin Source File

SOURCE=.\Autoscrl.cpp
# End Source File
# Begin Source File

SOURCE=.\Cdib.cpp
# End Source File
# Begin Source File

SOURCE=.\DIALOG.CPP
# End Source File
# Begin Source File

SOURCE=.\ENGINE.CPP
# End Source File
# Begin Source File

SOURCE=.\logibmp.cpp
# End Source File
# Begin Source File

SOURCE=.\LOGICLI.CPP
# End Source File
# Begin Source File

SOURCE=.\LOGICLI.RC
# End Source File
# Begin Source File

SOURCE=.\LOGIDOC.CPP
# End Source File
# Begin Source File

SOURCE=.\LOGIOBJ.CPP
# End Source File
# Begin Source File

SOURCE=.\logitext.CPP
# End Source File
# Begin Source File

SOURCE=.\LOGITOOL.CPP
# End Source File
# Begin Source File

SOURCE=.\LOGIVW.CPP
# End Source File
# Begin Source File

SOURCE=.\LOGIWIRE.CPP
# End Source File
# Begin Source File

SOURCE=.\MAINFRM.CPP
# End Source File
# Begin Source File

SOURCE=.\network.cpp
# End Source File
# Begin Source File

SOURCE=.\palette.CPP
# End Source File
# Begin Source File

SOURCE=.\robot.CPP
# End Source File
# Begin Source File

SOURCE=.\socket.cpp
# End Source File
# Begin Source File

SOURCE=.\SPLITFRM.CPP
# End Source File
# Begin Source File

SOURCE=.\STDAFX.CPP
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\TipDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\toolbar.cpp
# End Source File
# Begin Source File

SOURCE=.\Undo.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\Analyze.h
# End Source File
# Begin Source File

SOURCE=.\Autoscrl.h
# End Source File
# Begin Source File

SOURCE=.\Cdib.h
# End Source File
# Begin Source File

SOURCE=.\Dialog.h
# End Source File
# Begin Source File

SOURCE=.\Engine.h
# End Source File
# Begin Source File

SOURCE=.\Logibmp.h
# End Source File
# Begin Source File

SOURCE=.\Logicli.h
# End Source File
# Begin Source File

SOURCE=.\Logidoc.h
# End Source File
# Begin Source File

SOURCE=.\Logiobj.h
# End Source File
# Begin Source File

SOURCE=.\Logitext.h
# End Source File
# Begin Source File

SOURCE=.\Logitool.h
# End Source File
# Begin Source File

SOURCE=.\Logivw.h
# End Source File
# Begin Source File

SOURCE=.\Logiwire.h
# End Source File
# Begin Source File

SOURCE=.\Mainfrm.h
# End Source File
# Begin Source File

SOURCE=.\Network.h
# End Source File
# Begin Source File

SOURCE=.\Palette.h
# End Source File
# Begin Source File

SOURCE=.\Robot.h
# End Source File
# Begin Source File

SOURCE=.\Socket.h
# End Source File
# Begin Source File

SOURCE=.\Splitfrm.h
# End Source File
# Begin Source File

SOURCE=.\Stdafx.h
# End Source File
# Begin Source File

SOURCE=.\Tipdlg.h
# End Source File
# Begin Source File

SOURCE=.\toolbar.h
# End Source File
# Begin Source File

SOURCE=.\Undo.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\RES\ALU.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\ALUB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\ANALYZE.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\AND2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\AND2B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\AND3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\AND3B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\AND4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\AND4B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BITBUCK.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BITBUCKB.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\BITMAP1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BMP.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BMPB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BMPSB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BREAK.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BREAKB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BREAKON.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUFFER.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUFFERB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUS_2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUS_2B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUS_4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUS_4B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUS_8.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUS_8B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUZZER_F.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUZZER_O.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\BUZZERFB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\CLOCK.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\CLOCKB.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\Count4.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Count4b.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Count8.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Count8b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\COUNTER.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\Counter8.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\COUNTERB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DEMUX12.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DEMUX12B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DEMUX24.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DEMUX24B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DEMUX38.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DEMUX38B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DISPLAY.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\DISPLAYB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_CRS.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_CRS_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_CRS_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_CRSB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_CRSE.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_CRSE_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_CRSE_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_CRSEB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_DL.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_DL_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_DL_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_DLB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_DLE.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_DLE_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_DLE_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_DLEB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_JK.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_JK_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_JK_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_JKB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_JKE.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_JKE_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_JKE_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_JKEB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_MSDL.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSDL_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSDL_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_MSDLB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_MSDLE.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSDLE_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSDLE_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_MSRS.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSRS_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSRS_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_MSRSB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_MSRSE.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSRSE_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_MSRSE_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_RS.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_RS_PC.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\FF_RS_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FF_RSB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FFMSDLEB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FFMSRSEB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FILE_IN.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FILE_INB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FILE_OUT.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FILEO_IN.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FILEO_OU.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\FILEOUTB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\GROUND.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\GROUNDB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\HELP.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\INVERT.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\INVERTB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\IO_IN.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\IO_INB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\IO_OUT.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\IO_OUTB.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\JK_PCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYBRDF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYBRDFB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYBRDO.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_0.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_5.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_6.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_7.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_8.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_9.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_A.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_C.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_D.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_E.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPAD_F.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\KEYPADB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_OFF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON0.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON5.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON6.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON7.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON8.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ON9.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ONA.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ONB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ONC.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_OND.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ONE.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ONF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4_ONU.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4OFFB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON0.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON5.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON6.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON7.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON8.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PON9.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PONA.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PONB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PONC.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4POND.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PONE.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PONF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED4PONU.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF0.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF5.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF6.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OF7.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_OFF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON0.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON5.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON6.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED7_ON7.BMP
# End Source File
# Begin Source File

SOURCE=.\res\led7offb.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\LED_OFF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_ONG.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_ONGB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_ONR.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_ONRB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_ONY.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_ONYB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\LED_UNKN.BMP
# End Source File
# Begin Source File

SOURCE=.\res\litebulb.bmp
# End Source File
# Begin Source File

SOURCE=.\res\LOGICLI.ICO
# End Source File
# Begin Source File

SOURCE=.\res\LOGICLI.RC2
# End Source File
# Begin Source File

SOURCE=.\RES\LOGIDOC.ICO
# End Source File
# Begin Source File

SOURCE=.\RES\MEMORY.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\MEMORY16.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\MEMORY16B.BMP
# End Source File
# Begin Source File

SOURCE=.\res\memoryb.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\MOUSE.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\MUX2TO1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\MUX2TO1B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\MUX4TO1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\MUX4TO1B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\MUX8TO1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\MUX8TO1B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\NAND2.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nand2b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NAND3.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nand3b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NAND4.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nand4b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NETCALL.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\NETCALLB.BMP
# End Source File
# Begin Source File

SOURCE=.\res\netwait.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NETWAITB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\NETWORK.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\NETWORKB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\NOR2.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nor2b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NOR3.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nor3b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NOR4.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nor4b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NULL.BMP
# End Source File
# Begin Source File

SOURCE=.\res\null_0.bmp
# End Source File
# Begin Source File

SOURCE=.\res\null_0b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\null_1.bmp
# End Source File
# Begin Source File

SOURCE=.\res\null_1b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NULL_PD.BMP
# End Source File
# Begin Source File

SOURCE=.\res\null_pd0.bmp
# End Source File
# Begin Source File

SOURCE=.\res\null_pd1.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NULL_PDB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\NULL_PU.BMP
# End Source File
# Begin Source File

SOURCE=.\res\null_pu0.bmp
# End Source File
# Begin Source File

SOURCE=.\res\null_pu1.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\NULL_PUB.BMP
# End Source File
# Begin Source File

SOURCE=.\res\nullb.bmp
# End Source File
# Begin Source File

SOURCE=.\res\nullpd0b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\nullpd1b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\nullpu0b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\nullpu1b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\OR2.BMP
# End Source File
# Begin Source File

SOURCE=.\res\or2b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\OR3.BMP
# End Source File
# Begin Source File

SOURCE=.\res\or3b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\OR4.BMP
# End Source File
# Begin Source File

SOURCE=.\res\or4b.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\OSC.BMP
# End Source File
# Begin Source File

SOURCE=.\res\OSCB.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\PAGE_IN.BMP
# End Source File
# Begin Source File

SOURCE=.\res\page_inb.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\PAGE_OUT.BMP
# End Source File
# Begin Source File

SOURCE=.\res\PAGEOUTB.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\PALETTE.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\PENCIL.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PLUS.BMP
# End Source File
# Begin Source File

SOURCE=.\res\plusb.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_FL.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_MI.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_NU.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_OF.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_ON.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_PL.CUR
# End Source File
# Begin Source File

SOURCE=.\RES\PROBE_UN.CUR
# End Source File
# Begin Source File

SOURCE=.\res\random.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\RANDOMB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\ROBOT.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\ROBOTB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\ROBOTD.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\ROBOTDB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT0B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT1B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT2B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT3B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT4B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT5B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT6B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT7B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT8B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT9B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_0.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_1.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_2.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_3.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_4.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_5.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_6.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_7.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_8.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_9.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_A.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_B.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_C.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_D.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_E.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECT_F.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECTAB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECTBB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECTCB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECTDB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECTEB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SELECTFB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\STACK.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SWITCH_F.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SWITCH_O.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SWITCH_S.BMP
# End Source File
# Begin Source File

SOURCE=.\res\SWITCHFB.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\SWITCHMF.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SWITCHMO.BMP
# End Source File
# Begin Source File

SOURCE=.\res\SWITCHOB.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\SWTCHMFB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\SWTCHMOB.BMP
# End Source File
# Begin Source File

SOURCE=.\Res\Tape.bmp
# End Source File
# Begin Source File

SOURCE=.\Res\Tapeb.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\TEXT.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TEXTMB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TEXTSB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TIMER.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TIMERB.BMP
# End Source File
# Begin Source File

SOURCE=.\res\TOOLBAR.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIBUFH.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIBUFHB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIBUFL.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIBUFLB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIINVH.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIINVHB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIINVL.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TRIINVLB.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TURING.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\TURTLE.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\WAV.BMP
# End Source File
# Begin Source File

SOURCE=.\res\wavb.bmp
# End Source File
# Begin Source File

SOURCE=.\RES\WAVPLAY.BMP
# End Source File
# Begin Source File

SOURCE=.\RES\WIREB.BMP
# End Source File
# Begin Source File

SOURCE=.\res\xnor2.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xnor2b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xnor3.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xnor3b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xnor4.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xnor4b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xor2.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xor2b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xor3.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xor3b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xor4.bmp
# End Source File
# Begin Source File

SOURCE=.\res\xor4b.bmp
# End Source File
# End Group
# Begin Source File

SOURCE=.\manifest.xml
# End Source File
# End Target
# End Project
# Section Logicl32 : {75B512A4-C171-11CF-A07F-BCDFFFC00000}
# 	0:8:TipDlg.h:C:\logic\TipDlg.h
# 	0:10:TipDlg.cpp:C:\logic\TipDlg.cpp
# 	1:17:CG_IDS_DIDYOUKNOW:198
# 	1:22:CG_IDS_TIPOFTHEDAYMENU:168
# 	1:18:CG_IDS_TIPOFTHEDAY:167
# 	1:22:CG_IDS_TIPOFTHEDAYHELP:260
# 	1:19:CG_IDP_FILE_CORRUPT:256
# 	1:7:IDD_TIP:156
# 	1:13:IDB_LIGHTBULB:152
# 	1:18:CG_IDS_FILE_ABSENT:235
# 	2:17:CG_IDS_DIDYOUKNOW:CG_IDS_DIDYOUKNOW
# 	2:7:CTipDlg:CTipDlg
# 	2:22:CG_IDS_TIPOFTHEDAYMENU:CG_IDS_TIPOFTHEDAYMENU
# 	2:18:CG_IDS_TIPOFTHEDAY:CG_IDS_TIPOFTHEDAY
# 	2:12:CTIP_Written:OK
# 	2:22:CG_IDS_TIPOFTHEDAYHELP:CG_IDS_TIPOFTHEDAYHELP
# 	2:2:BH:
# 	2:19:CG_IDP_FILE_CORRUPT:CG_IDP_FILE_CORRUPT
# 	2:7:IDD_TIP:IDD_TIP
# 	2:8:TipDlg.h:TipDlg.h
# 	2:13:IDB_LIGHTBULB:IDB_LIGHTBULB
# 	2:18:CG_IDS_FILE_ABSENT:CG_IDS_FILE_ABSENT
# 	2:10:TipDlg.cpp:TipDlg.cpp
# End Section
