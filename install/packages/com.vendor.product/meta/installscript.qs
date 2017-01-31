function Component()
{
    // default constructor
}

Component.prototype.createOperations = function()
{
    component.createOperations();
	  if (systemInfo.productType === "windows") {
        component.addOperation("CreateShortcut", "@TargetDir@/dab-rpi-touch.exe", "@StartMenuDir@/dab-rpi-touch.lnk",
            "workingDirectory=@TargetDir@", "iconPath=@TargetDir@/dab-rpi-touch.exe");
		component.addOperation("CreateShortcut", "@TargetDir@/dab-rpi-classic.exe", "@StartMenuDir@/dab-rpi-classic.lnk",
            "workingDirectory=@TargetDir@", "iconPath=%SystemRoot%/system32/SHELL32.dll",
            "iconId=2");
		component.addElevatedOperation("Execute", "@TargetDir@/vcredist_x86.exe", "/quiet", "/norestart");
		component.addElevatedOperation("Delete", "@TargetDir@/vcredist_x86.exe");
    }
}
