// For computers that either have no trackpad (eg. desktop with PS2 mouse)
// or laptops without any support by VoodooPS2Trackpad.kext, you can disable
// each of the trackpad drivers, such that they don't probe.
//
// This can improve the reliability of VoodooPS2Mouse.kext and is more efficient as well.
DefinitionBlock("", "SSDT", 2, "ACDT", "ps2", 0)
{
    External (\_SB.PCI0.LPCB.MSS0, DeviceObj)
    
    Name(\_SB.PCI0.LPCB.MSS0, Package()
    {
        "Synaptics TouchPad", Package()
        {
            "DisableDevice", ">y",
        },
        "ALPS GlidePoint", Package()
        {
            "DisableDevice", ">y",
        },
        "Sentelic FSP", Package()
        {
            "DisableDevice", ">y",
        },
    })
}
//EOF
