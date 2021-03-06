// Clover UEFI Hotpatch | CPU Power Management | Lenovo ThinkPad T450 Ultrabook | Hackintosh (macOS Mojave) | Compiled By: Sass86oh |

// Automatic CPU Power Management | Plugin Type One Injection |
//
//DefinitionBlock ("", "SSDT", 2, "T450 ", "CPU", 0x00003000)
//{
    External (_PR_.CPU0, DeviceObj)    // (from opcode)

    Scope (\_PR.CPU0)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store ("Writing plugin-type to Registry!", Debug)
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }
    }
//}
//EOF
