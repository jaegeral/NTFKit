# NTFKit - Network Troubleshooting Field Kit
---
## Summary:
This project was started to extend the capability of a small internal group to support individuals with diverse backgrounds.  The initial focus was
to gather data (especially packet captures) for offline analysis and baselining.  The project is growing, but the development is slow.  The focus continues
to be on data acquisition, but some effort is being made to provide other options and capabilities.
---
## Hardware:
Component	| Component_Description	| Option	| Source	| Price
--- 		| --- 			| --- 		| --- 		| ---
HW-001.00	| CanaKit Raspberry Pi 3 Complete Starter Kit - 32 GB Edition	| Base	| Amazon	 | $70.00
HW-002.00	| TP-Link 5-Port Gigabit Ethernet Web Managed Easy Smart Switch (TL-SG105E v2.0)	| Base	| Staples	 | $40.00
HW-003.00	| Cable Matters SuperSpeed USB 3.0 to RJ45 Gigabit Ethernet Network Adapter	| Base	| Amazon	 | $15.00
HW-004.01	| TP-Link 150Mbps Wireless N Nano USB Adapter (TL-WN725N)	| Base	| Staples	 | $10.00
HW-005.02	| Samsung 128GB USB 3.0 Flash Drive Fit (MUF-128BB/AM)	| Base	| Amazon	 | $40.00
HW-006.01	| BUBM Gadget Organizer Case, Ultra-compact Electronics Organizer	| Base	| Amazon	 | $19.00
HW-007.00	| Ethernet cable	| Base	| Staples	 | $4.00
HW-100.00	| Hitaltech - 22.5 mm Din Rail Enclosure For Raspberry Pi B+	| Base	| Amazon	 | $16.00
HW-004.00	| Edimax EW-7811Un 150Mbps 11n Wi-Fi USB Adapter	| Alternate	| Amazon	 | $8.00
HW-005.00	| SanDisk Ultra Fit 128GB USB 3.0 Flash Drive	| Alternate	| Amazon	 | $32.00
HW-005.01	| PNY 128GB Elite-X Fit USB 3.0 Flash Drives	| Alternate	| Staples	 | $50.00
HW-006.00	| imoli Universal Travel Case (8.07 x 4.33 x 3.74 inches)	| Alternate	| Amazon	 | $12.00
HW-006.02	| Caseling Universal Electronics/Accessories Hard Travel Carrying Case Bag, 9.5" x 5.25" x 2.85" - Black	| Alternate	| Amazon	 | $14.00
HW-101.00	| AmazonBasics USB 3.0 Extension Cable - A-Male to A-Female	| Optional	| Amazon	 | $6.00
HW-102.00	| JBtek USB to RS485 Converter Adapter ch340T chip 64-bit Window 7 Supported (USB to RS-485 adapter)	| Optional	| Amazon	 | $7.00
HW-103.00	| JBtek® WINDOWS 8 Supported Debug Cable for Raspberry Pi USB Programming USB to TTL Serial Cable (USB to RS-232 adapter)	| Optional	| Amazon	 | $7.00
HW-104.00	| Microflex USB to RS-485 Converter	| Optional	| Amazon	 | $98.00
HW-105.00	| SharkTap Gigabit Network Sniffer (Network Tap)	| Optional	| Amazon	 | $180.00
HW-106.00	| TP-Link TL-WN722N N150 High-Gain Wireless USB Adapter (for wireless monitor mode capabilities)	| Optional	| Staples	 | $15.00
---
## Software:
  - https://github.com/pwnieexpress/raspberry_pwn
  - https://github.com/secgroundzero/warberry
  - https://github.com/sneakymonk3y/foxhound-nsm (not installed yet)
---
## Project Phases
### Phase 1
  Target Audience: Technical with Networking and Linux Expertise
### Phase 2
  Target Audience: Technical with some Networking limited Linux Expertise
### Phase 3
  Target Audience: Technical with limited Networking and limited Linux Expertise
### Phase 4
  Target Audience: Technical with no Networking or Linux Expertise
### Phase 5
  Target Audience: Non-Technical
### Current Status: Phase 1
---
## ToDo:
- Documentation
- make it more user-friendly
- dynamic vlan interface
- arpwatch patch to enable 802.1q
- bash auto complete for .todo extensions
- Snort ICS signatures
- fix wifite (low priority)
- work on better initialization script for new deployments (open to recommendations - gitlab perhaps?)
- documentation for creating and using a public key on windows computers (putty?)
- create install.sh script that takes a base raspian install and converts it to a NTFKit sensor (may be difficult because we use pwnie express image)
- Additional automated reports (see reports list)
- incorporate more tools:
  - https://github.com/sneakymonk3y/foxhound-nsm
  - Cyberlens sensor
  - Bro
    - Bro ICS signature
---
