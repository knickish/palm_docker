#include <PalmOS.h>

UInt32 PilotMain(UInt16 cmd, void *cmdPBP, UInt16 launchFlags) {
	EventType event;
	char *message1 = "This application was built only";
	char *message2 = "with gcc 9.1 and PilRC 3.2";
	char *message3 = "on Ubuntu 20.04!";

	if (sysAppLaunchCmdNormalLaunch == cmd) {
	
		WinDrawChars(message1, StrLen(message1), 19, 71);
		WinDrawChars(message2, StrLen(message2), 30, 84);
		WinDrawChars(message3, StrLen(message3), 45, 97);

		do {
			EvtGetEvent(&event, evtWaitForever);

			SysHandleEvent(&event);

		} while (event.eType != appStopEvent);
	}

	return 0;
}

UInt32 __attribute__((section(".vectors"))) __Startup__(void)
{
	SysAppInfoPtr appInfoP;
	void *prevGlobalsP;
	void *globalsP;
	UInt32 ret;
	
	SysAppStartup(&appInfoP, &prevGlobalsP, &globalsP);
	ret = PilotMain(appInfoP->cmd, appInfoP->cmdPBP, appInfoP->launchFlags);
	SysAppExit(appInfoP, prevGlobalsP, globalsP);
	
	return ret;
}