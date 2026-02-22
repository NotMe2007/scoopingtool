# SecHex-Spoofy [1.5.8] [![Github All Releases](https://img.shields.io/github/downloads/SecHex/SecHex-Spoofy/total)](https://github.com/SecHex/SecHex-Spoofy/releases)

## ⚠️ WARNING - DO NOT USE THIS TOOL ⚠️

**This tool is provided for educational purposes only. By using this tool, you acknowledge that:**

- **Using this tool may violate the terms of service of various software and gaming platforms**
- **This tool may result in a permanent ban from games and services you use**
- **There is NO guarantee this tool will work or won't cause damage to your system**
- **All use is at your own risk - you are solely responsible for any consequences**

**If you are uncertain about the legality or terms of service implications, DO NOT USE THIS TOOL.**

---

Simple HWID-Changer 🔑︎
Some Lines of the CLI Version are from @LockBlock-dev
The folowing project is now modified not the same dev as before or anything so do not expect what this was before

**Windows 11** Version 10.0.22621 Build 22621 ✅
**Windows 10** Version 22H2 Build 19045.2965 ✅

I am currently still learning, and the spoofer is far from being 100% perfect. But I'm doing my best.

### How to Use ⚡🏆

For the Release: Run the .exe with admin rights.
For Self Compiling: Compile the project... and run the .exe with admin rights.

## Functions ⚡

- **Disk Spoofing** - [18.05.23]
    • Retrieves SCSI ports and buses information from the Windows registry.
    • Checks if the device type is a disk peripheral.
    • Generates random identifiers and serial numbers for the disk peripheral.
    • Updates the registry values for the disk peripheral with the new identifiers and serial numbers.

- **Guid Spoofing** - [18.05.23]
    • Generates new GUIDs (Globally Unique Identifiers) for various registry keys.
    • Updates the HwProfileGuid, MachineGuid, and MachineId registry values with new GUIDs.
    • Generates a random BIOS release date.

- **PC-name Spoofing** - [18.05.23]
    • Spoofs the computer name by updating various registry keys.
    • Retrieves the original computer name from the registry.
    • Generates a random new computer name.
    • Updates the registry values for ComputerName, ActiveComputerName, Hostname, and NV Hostname.

- **MAC ID Spoofing** - [19.05.23]
    • Attempts to spoof the MAC address of network adapters.
    • Retrieves network adapters information from the Windows registry.
    • Generates a random MAC address.
    • Updates the registry values for the MAC address with the new spoofed address.
    • Disables and enables the local area connection to apply the changes.

- **Ubisoft Cache Cleaner** - [19.05.23]
    • Cleans the Cache of Ubisoft

- **Valorant Cache Cleaner** - [19.05.23]
    • Cleans the Cache of Riot Games

- **Installation ID Spoofing** - [26.05.23]
    • Attempts to spoof the Windows ID by changing the MachineGuid registry value.
    • Retrieves the current MachineGuid value from the registry.
    • Generates a new random spoofed MachineGuid.
    • Saves the before and after log information.
    • Updates the registry value with the spoofed MachineGuid.

- **Spoof EFI Bootloader** - [26.05.23]
    • Opens the registry key for EFI variables.
    • Retrieves the current EFI Variable ID from the registry.
    • Generates a new random EFI Variable ID.
    • Updates the registry value with the new EFI Variable ID.

- **Spoof SMBIOS** - [26.05.23]
    • Opens the registry key for SMBIOS data.
    • Retrieves the current SystemSerialNumber from the registry.
    • Generates a new random SystemSerialNumber.
    • Updates the registry value with the new SystemSerialNumber.

- **Get all System Information** *[New]* - [27.05.23]
    • Get all system information.

- **Registry Checker** *[New]* - [07.06.23]
    • Defines an array of registry entries to check.
    • Checks if the registry keys specified in the array exist.
    • Creates a list of missing registry entries.
    • Displays an error message with the missing entries, if any.
    • Displays a success message if all registry entries are found.

- **Log System** *[New]* (testing) - [10.06.23]
    • Log every Change in a .txt

- **Backup System** *[New]* (testing) - [13.06.23]
    • Create a Backup as .reg

- **Product ID Spoofing** *[New]* (testing) - [14.06.23]
    • Opens the registry key "SOFTWARE\Microsoft\Windows NT\CurrentVersion" under the LocalMachine hive.
    • Retrieves the current value of the "ProductId" registry entry.
    • Generates a new random product ID using the RandomIdprid(20) method.
    • Sets the registry value of "ProductId" to the new generated product ID.

- **Display Spoofing** *[New]* (testing) - [15.06.23]
    • Spoofs display settings by modifying the registry.
    • Opens the registry key for display settings.
    • Generates a random display ID.
    • Updates the registry values for MRU0, MRU1, MRU2, MRU3, and MRU4.

- **CPU/GPU Specs Faker** *[Suggested]* - Entertainment
    • Modify reported CPU frequency (GHz)
    • Change CPU Core Count
    • Spoof GPU VRAM amount
    • Modify GPU name and model

- **System Information Faker** *[Suggested]* - Entertainment
    • Fake RAM amount
    • Modify system uptime
    • Change screen resolution display
    • Spoof monitor count

- **OEM & Manufacturer Faker** *[Suggested]* - Entertainment
    • Change OEM manufacturer name
    • Spoof motherboard name
    • Modify BIOS version and date
    • Change system model name

- **Windows Edition Faker** *[Suggested]* - Entertainment
    • Spoof Windows Edition (Home→Pro→Enterprise)
    • Modify Windows Activation Status
    • Change Windows Install Date

- **SecHex Cleaner** *[New]* (testing) - [28.06.23]
    • DNS Flush
    • Temp Cleaner
    • Windows Logs
    • Win Temp
    • TCP Reset
    • Chrome Cookies
    • Recent Documents
    • Reset Connection (fix the mac spoofing issue)
    • Trace Cleaner
    • Anti-Cheat-Terminator [Fortnite, Valorant, FiveM...]
    • Unlink Xbox
    • Unlink Discord

**Design Update** - 20.05.23

## Goals 🎯

**Phase 1 - Core Foundation** ⏳

- Refactor existing spoofer codebase
- Add comprehensive error handling and logging
- Create unit tests for core functions

**Phase 2 - Entertainment Features** 🎮

- CPU/GPU specs faker
- RAM amount modifier
- Screen resolution faker
- Processor name faker

**Phase 3 - Advanced Spoofing** 🔧

- Windows edition faker (Home→Pro→Enterprise)
- OEM manufacturer faker
- BIOS date and version faker
- System uptime faker

**Phase 4 - Polish & Security** ✨

- GUI improvements and modernization
- Better backup/restore functionality
- Advanced registry management tools

**Phase 5 - Premium Features** 🚀

- Batch operations support
- Profile management (save/load multiple configs)
- Undo/Redo functionality

## GUI & CMD PREVIEW 🏆

[No Updates for the CLI Version!]
![SecHex GUI Preview](https://github.com/SecHex/SecHex-Spoofy/assets/96635023/22ad94a2-f003-49cb-b0ef-fea0160bd093)

## Contributors ❤️

Contributors get a special role on our Discord Server. Just create a ticket and send proof.
Join us at discord.gg/SecHex

## Disclaimer ⚠️

Please read this disclaimer carefully before using the HWID Spoofing Tool ("Tool") available on this GitHub site. By accessing or using the Tool, you agree to be bound by this disclaimer.

Use at Your Own Risk: The HWID Spoofing Tool is provided for educational and informational purposes only. It is intended to demonstrate the concept of HWID spoofing and its potential applications. However, it is important to understand that the use of this Tool may violate the terms of service or terms of use of certain software or services. Use this Tool at your own risk.

No Guarantees: Although the HWID Spoofing Tool has been tested on a virtual machine and efforts have been made to ensure its functionality, the Tool is provided "as is" without any guarantees or warranties of any kind. I cannot guarantee that the Tool will work flawlessly on all systems or that it will not cause any issues or damages.

Limited Liability: I specifically DISCLAIM LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES arising out of the use or inability to use the HWID Spoofing Tool. In no event shall I be liable for any loss or damage suffered as a result of the use or misuse of the Tool, including but not limited to any direct, indirect, special, or consequential damages.

Responsibility: You are solely responsible for your actions and the consequences that may arise from the use of the HWID Spoofing Tool. It is your responsibility to ensure that your use of the Tool complies with all applicable laws, regulations, and terms of service or terms of use.

Legal Implications: The use of HWID spoofing tools may be illegal or against the terms of service of certain software or services. It is your responsibility to understand and comply with the laws and terms governing the use of such tools in your jurisdiction or in relation to specific software or services.

By using the HWID Spoofing Tool, you acknowledge that you have read, understood, and agreed to this disclaimer. If you do not agree with any part of this disclaimer, do not use the Tool.
