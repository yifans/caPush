#!../../bin/linux-x86_64/iocPush

## You may have to change iocPush to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/iocPush.dbd"
iocPush_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=yifansHost")
dbLoadRecords("db/pushDemo.db")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=yifansHost"
