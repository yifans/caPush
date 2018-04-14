TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = iocPush
# iocPush.dbd will be created and installed
DBD += iocPush.dbd

# iocPush.dbd will be made up from these files:
iocPush_DBD += base.dbd

# Include dbd files from all support applications:
#iocPush_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#iocPush_LIBS += xxx

# iocPush_registerRecordDeviceDriver.cpp derives from iocPush.dbd
iocPush_SRCS += iocPush_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
iocPush_SRCS_DEFAULT += iocPushMain.cpp
iocPush_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#iocPush_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
iocPush_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

