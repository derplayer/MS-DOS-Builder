ECHO OFF
BREAK ON
IF "%1"=="" GOTO USAGE
IF "%1"=="all" GOTO ALL
IF "%1"=="ALL" GOTO ALL
GOTO DIR
:ALL
FOR %%F IN (EXE2BIN CHKDSK COMMAND DEBUG DISKCOPY) DO COMMAND /C MK %%F %2 %3
FOR %%F IN (EDLIN FC FIND FORMAT MORE MSDOS PRINT IO) DO COMMAND /C MK %%F %2 %3
FOR %%F IN (RECOVER SORT SYS) DO COMMAND /C MK %%F %2 %3

del "C:/SOURCE/CHKDSK/CHKDSK.OBJ"
del "C:/SOURCE/CHKDSK/CHKMES.OBJ"
del "C:/SOURCE/CHKDSK/CHKPROC.OBJ"
del "C:/SOURCE/COMMAND/COMMAND.OBJ"
del "C:/SOURCE/COMMAND/COPY.OBJ"
del "C:/SOURCE/COMMAND/COPYPROC.OBJ"
del "C:/SOURCE/COMMAND/CPARSE.OBJ"
del "C:/SOURCE/COMMAND/INIT.OBJ"
del "C:/SOURCE/COMMAND/RDATA.OBJ"
del "C:/SOURCE/COMMAND/RUCODE.OBJ"
del "C:/SOURCE/COMMAND/TCODE.OBJ"
del "C:/SOURCE/COMMAND/TCODE2.OBJ"
del "C:/SOURCE/COMMAND/TCODE3.OBJ"
del "C:/SOURCE/COMMAND/TCODE4.OBJ"
del "C:/SOURCE/COMMAND/TCODE5.OBJ"
del "C:/SOURCE/COMMAND/TDATA.OBJ"
del "C:/SOURCE/COMMAND/TSPC.OBJ"
del "C:/SOURCE/COMMAND/TUCODE.OBJ"
del "C:/SOURCE/COMMAND/UINIT.OBJ"
del "C:/SOURCE/DEBUG/DEBASM.OBJ"
del "C:/SOURCE/DEBUG/DEBCOM1.OBJ"
del "C:/SOURCE/DEBUG/DEBCOM2.OBJ"
del "C:/SOURCE/DEBUG/DEBCONST.OBJ"
del "C:/SOURCE/DEBUG/DEBDATA.OBJ"
del "C:/SOURCE/DEBUG/DEBMES.OBJ"
del "C:/SOURCE/DEBUG/DEBUASM.OBJ"
del "C:/SOURCE/DEBUG/DEBUG.OBJ"
del "C:/SOURCE/DISKCOPY/DISKCOPY.OBJ"
del "C:/SOURCE/DISKCOPY/DISKMES.OBJ"
del "C:/SOURCE/EDLIN/EDLIN.OBJ"
del "C:/SOURCE/EDLIN/EDLMES.OBJ"
del "C:/SOURCE/EDLIN/EDLPROC.OBJ"
del "C:/SOURCE/EXE2BIN/EXE2BIN.OBJ"
del "C:/SOURCE/EXE2BIN/EXEMES.OBJ"
del "C:/SOURCE/FC/FC.OBJ"
del "C:/SOURCE/FC/FCMES.OBJ"
del "C:/SOURCE/FIND/FIND.OBJ"
del "C:/SOURCE/FIND/FINDMES.OBJ"
del "C:/SOURCE/FORMAT/FORMAT.OBJ"
del "C:/SOURCE/FORMAT/FORMES.OBJ"
del "C:/SOURCE/FORMAT/GENFOR.OBJ"
del "C:/SOURCE/MORE/MORE.OBJ"
del "C:/SOURCE/MORE/MOREMES.OBJ"
del "C:/SOURCE/MSDOS/ALLOC.OBJ"
del "C:/SOURCE/MSDOS/DEV.OBJ"
del "C:/SOURCE/MSDOS/DIR.OBJ"
del "C:/SOURCE/MSDOS/DIRCALL.OBJ"
del "C:/SOURCE/MSDOS/DISK.OBJ"
del "C:/SOURCE/MSDOS/DOSMES.OBJ"
del "C:/SOURCE/MSDOS/FAT.OBJ"
del "C:/SOURCE/MSDOS/GETSET.OBJ"
del "C:/SOURCE/MSDOS/MISC.OBJ"
del "C:/SOURCE/MSDOS/MSCODE.OBJ"
del "C:/SOURCE/MSDOS/MSDOS.OBJ"
del "C:/SOURCE/MSDOS/ROM.OBJ"
del "C:/SOURCE/MSDOS/STDBUF.OBJ"
del "C:/SOURCE/MSDOS/STDCALL.OBJ"
del "C:/SOURCE/MSDOS/STDCTRLC.OBJ"
del "C:/SOURCE/MSDOS/STDFCB.OBJ"
del "C:/SOURCE/MSDOS/STDIO.OBJ"
del "C:/SOURCE/MSDOS/STDPROC.OBJ"
del "C:/SOURCE/MSDOS/TIME.OBJ"
del "C:/SOURCE/MSDOS/XENIX.OBJ"
del "C:/SOURCE/MSDOS/XENIX2.OBJ"
del "C:/SOURCE/PRINT/PRINT.OBJ"
del "C:/SOURCE/RECOVER/RECMES.OBJ"
del "C:/SOURCE/RECOVER/RECOVER.OBJ"
del "C:/SOURCE/SORT/SORT.OBJ"
del "C:/SOURCE/SORT/SORTMES.OBJ"
del "C:/SOURCE/SYS/SYS.OBJ"
del "C:/SOURCE/SYS/SYSMES.OBJ"

del "C:/SOURCE/CHKDSK/CHKDSK.MAP"
del "C:/SOURCE/COMMAND/COMMAND.MAP"
del "C:/SOURCE/DEBUG/DEBUG.MAP"
del "C:/SOURCE/DISKCOPY/DISKCOPY.MAP"
del "C:/SOURCE/EDLIN/EDLIN.MAP"
del "C:/SOURCE/EXE2BIN/EXE2BIN.MAP"
del "C:/SOURCE/FC/FC.MAP"
del "C:/SOURCE/FIND/FIND.MAP"
del "C:/SOURCE/FORMAT/FORMAT.MAP"
del "C:/SOURCE/MORE/MORE.MAP"
del "C:/SOURCE/MSDOS/MSDOS.MAP"
del "C:/SOURCE/PRINT/PRINT.MAP"
del "C:/SOURCE/RECOVER/RECOVER.MAP"
del "C:/SOURCE/SORT/SORT.MAP"
del "C:/SOURCE/SYS/SYS.MAP"

del "C:/SOURCE/CHKDSK/CHKDSK.LST"
del "C:/SOURCE/CHKDSK/CHKMES.LST"
del "C:/SOURCE/CHKDSK/CHKPROC.LST"
del "C:/SOURCE/COMMAND/COMMAND.LST"
del "C:/SOURCE/COMMAND/COPY.LST"
del "C:/SOURCE/COMMAND/COPYPROC.LST"
del "C:/SOURCE/COMMAND/CPARSE.LST"
del "C:/SOURCE/COMMAND/INIT.LST"
del "C:/SOURCE/COMMAND/RDATA.LST"
del "C:/SOURCE/COMMAND/RUCODE.LST"
del "C:/SOURCE/COMMAND/TCODE.LST"
del "C:/SOURCE/COMMAND/TCODE2.LST"
del "C:/SOURCE/COMMAND/TCODE3.LST"
del "C:/SOURCE/COMMAND/TCODE4.LST"
del "C:/SOURCE/COMMAND/TCODE5.LST"
del "C:/SOURCE/COMMAND/TDATA.LST"
del "C:/SOURCE/COMMAND/TSPC.LST"
del "C:/SOURCE/COMMAND/TUCODE.LST"
del "C:/SOURCE/COMMAND/UINIT.LST"
del "C:/SOURCE/DEBUG/DEBASM.LST"
del "C:/SOURCE/DEBUG/DEBCOM1.LST"
del "C:/SOURCE/DEBUG/DEBCOM2.LST"
del "C:/SOURCE/DEBUG/DEBCONST.LST"
del "C:/SOURCE/DEBUG/DEBDATA.LST"
del "C:/SOURCE/DEBUG/DEBMES.LST"
del "C:/SOURCE/DEBUG/DEBUASM.LST"
del "C:/SOURCE/DEBUG/DEBUG.LST"
del "C:/SOURCE/DISKCOPY/DISKCOPY.LST"
del "C:/SOURCE/DISKCOPY/DISKMES.LST"
del "C:/SOURCE/EDLIN/EDLIN.LST"
del "C:/SOURCE/EDLIN/EDLMES.LST"
del "C:/SOURCE/EDLIN/EDLPROC.LST"
del "C:/SOURCE/EXE2BIN/EXE2BIN.LST"
del "C:/SOURCE/EXE2BIN/EXEMES.LST"
del "C:/SOURCE/FC/FC.LST"
del "C:/SOURCE/FC/FCMES.LST"
del "C:/SOURCE/FIND/FIND.LST"
del "C:/SOURCE/FIND/FINDMES.LST"
del "C:/SOURCE/FORMAT/FORMAT.LST"
del "C:/SOURCE/FORMAT/FORMES.LST"
del "C:/SOURCE/FORMAT/GENFOR.LST"
del "C:/SOURCE/MORE/MORE.LST"
del "C:/SOURCE/MORE/MOREMES.LST"
del "C:/SOURCE/MSDOS/ALLOC.LST"
del "C:/SOURCE/MSDOS/DEV.LST"
del "C:/SOURCE/MSDOS/DIR.LST"
del "C:/SOURCE/MSDOS/DIRCALL.LST"
del "C:/SOURCE/MSDOS/DISK.LST"
del "C:/SOURCE/MSDOS/DOSMES.LST"
del "C:/SOURCE/MSDOS/FAT.LST"
del "C:/SOURCE/MSDOS/GETSET.LST"
del "C:/SOURCE/MSDOS/MISC.LST"
del "C:/SOURCE/MSDOS/MSCODE.LST"
del "C:/SOURCE/MSDOS/MSDOS.LST"
del "C:/SOURCE/MSDOS/ROM.LST"
del "C:/SOURCE/MSDOS/STDBUF.LST"
del "C:/SOURCE/MSDOS/STDCALL.LST"
del "C:/SOURCE/MSDOS/STDCTRLC.LST"
del "C:/SOURCE/MSDOS/STDFCB.LST"
del "C:/SOURCE/MSDOS/STDIO.LST"
del "C:/SOURCE/MSDOS/STDPROC.LST"
del "C:/SOURCE/MSDOS/TIME.LST"
del "C:/SOURCE/MSDOS/XENIX.LST"
del "C:/SOURCE/MSDOS/XENIX2.LST"
del "C:/SOURCE/PRINT/PRINT.LST"
del "C:/SOURCE/RECOVER/RECMES.LST"
del "C:/SOURCE/RECOVER/RECOVER.LST"
del "C:/SOURCE/SORT/SORT.LST"
del "C:/SOURCE/SORT/SORTMES.LST"
del "C:/SOURCE/SYS/SYS.LST"
del "C:/SOURCE/SYS/SYSMES.LST"

del "C:/SOURCE/IO/IO.MAP"
del "C:/SOURCE/IO/SKELIO.LST"
del "C:/SOURCE/IO/SKELIO.OBJ"
del "C:/SOURCE/IO/SYSIMES.LST"
del "C:/SOURCE/IO/SYSIMES.OBJ"
del "C:/SOURCE/IO/SYSINIT.LST"
del "C:/SOURCE/IO/SYSINIT.OBJ"

move "C:/SOURCE/CHKDSK/CHKDSK.COM" "C:/SOURCE/_EXPORT/CHKDSK.COM"
move "C:/SOURCE/COMMAND/COMMAND.COM" "C:/SOURCE/_EXPORT/COMMAND.COM"
move "C:/SOURCE/DEBUG/DEBUG.COM" "C:/SOURCE/_EXPORT/DEBUG.COM"
move "C:/SOURCE/DISKCOPY/DISKCOPY.COM" "C:/SOURCE/_EXPORT/DISKCOPY.COM"
move "C:/SOURCE/EDLIN/EDLIN.COM" "C:/SOURCE/_EXPORT/EDLIN.COM"
move "C:/SOURCE/FORMAT/FORMAT.COM" "C:/SOURCE/_EXPORT/FORMAT.COM"
move "C:/SOURCE/MORE/MORE.COM" "C:/SOURCE/_EXPORT/MORE.COM"
move "C:/SOURCE/PRINT/PRINT.COM" "C:/SOURCE/_EXPORT/PRINT.COM"
move "C:/SOURCE/RECOVER/RECOVER.COM" "C:/SOURCE/_EXPORT/RECOVER.COM"
move "C:/SOURCE/SYS/SYS.COM" "C:/SOURCE/_EXPORT/SYS.COM"
move "C:/SOURCE/CHKDSK/CHKDSK.EXE" "C:/SOURCE/_EXPORT/CHKDSK.EXE"
move "C:/SOURCE/COMMAND/COMMAND.EXE" "C:/SOURCE/_EXPORT/COMMAND.EXE"
move "C:/SOURCE/DEBUG/DEBUG.EXE" "C:/SOURCE/_EXPORT/DEBUG.EXE"
move "C:/SOURCE/DISKCOPY/DISKCOPY.EXE" "C:/SOURCE/_EXPORT/DISKCOPY.EXE"
move "C:/SOURCE/EDLIN/EDLIN.EXE" "C:/SOURCE/_EXPORT/EDLIN.EXE"
move "C:/SOURCE/EXE2BIN/EXE2BIN.EXE" "C:/SOURCE/_EXPORT/EXE2BIN.EXE"
move "C:/SOURCE/FC/FC.EXE" "C:/SOURCE/_EXPORT/FC.EXE"
move "C:/SOURCE/FIND/FIND.EXE" "C:/SOURCE/_EXPORT/FIND.EXE"
move "C:/SOURCE/FORMAT/FORMAT.EXE" "C:/SOURCE/_EXPORT/FORMAT.EXE"
move "C:/SOURCE/MORE/MORE.EXE" "C:/SOURCE/_EXPORT/MORE.EXE"
move "C:/SOURCE/MSDOS/MSDOS.EXE" "C:/SOURCE/_EXPORT/MSDOS.EXE"
move "C:/SOURCE/PRINT/PRINT.EXE" "C:/SOURCE/_EXPORT/PRINT.EXE"
move "C:/SOURCE/RECOVER/RECOVER.EXE" "C:/SOURCE/_EXPORT/RECOVER.EXE"
move "C:/SOURCE/SORT/SORT.EXE" "C:/SOURCE/_EXPORT/SORT.EXE"
move "C:/SOURCE/SYS/SYS.EXE" "C:/SOURCE/_EXPORT/SYS.EXE"
move "C:/SOURCE/MSDOS/MSDOS.SYS" "C:/SOURCE/_EXPORT/MSDOS.SYS"
move "C:/SOURCE/IO/IO.SYS" "C:/SOURCE/_EXPORT/IO.SYS"
move "C:/SOURCE/IO/IO.EXE" "C:/SOURCE/_EXPORT/IO.EXE"

exit

GOTO END
:DIR
CD %1
MAKE OEM=%2 VER=%3 %1.MAK
CD ..
GOTO END
:USAGE
ECHO "Usage: MK [folder|ALL] [oem] [ver] (e.g., MK MSDOS IBM 200 or MK ALL)"
:END