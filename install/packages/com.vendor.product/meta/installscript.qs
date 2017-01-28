function Component()
{
    // default constructor
}

Component.prototype.createOperations = function()
{
    component.createOperations();
	  if (systemInfo.productType === "windows") {
        component.addOperation("CreateShortcut", "@TargetDir@/dab-rpi-0.997_touch.exe", "@StartMenuDir@/dab-rpi_touch.lnk",
            "workingDirectory=@TargetDir@", "iconPath=@TargetDir@/dab-rpi-0.997_touch.exe");
		component.addOperation("CreateShortcut", "@TargetDir@/dab-rpi-0.997_classic.exe", "@StartMenuDir@/dab-rpi_classic.lnk",
            "workingDirectory=@TargetDir@", "iconPath=%SystemRoot%/system32/SHELL32.dll",
            "iconId=2");
		component.addElevatedOperation("Execute", "@TargetDir@/vcredist_x86.exe", "/quiet", "/norestart");
		component.addElevatedOperation("Delete", "@TargetDir@/vcredist_x86.exe");
    }
}
