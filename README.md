# NTFKit
Network Troubleshooting Field Kit

Summary:
This project was started to extend the capability of a small internal group to support individuals with diverse backgrounds.  The initial focus was
to gather data (especially packet captures) for offline analysis and baselining.  The project is growing, but the development is slow.  The focus continues
to be on data acquisition, but some effort is being made to provide other options and capabilities.

Hardware:

<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=macintosh">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 14">
<link rel=File-List href="Table_files/filelist.xml">
<style>
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
@page
	{margin:1.0in .75in 1.0in .75in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;}
.style0
	{mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	white-space:nowrap;
	mso-rotate:0;
	mso-background-source:auto;
	mso-pattern:auto;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	border:none;
	mso-protection:locked visible;
	mso-style-name:Normal;
	mso-style-id:0;}
.style62
	{mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	white-space:nowrap;
	mso-rotate:0;
	mso-background-source:auto;
	mso-pattern:auto;
	color:black;
	font-size:10.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border:none;
	mso-protection:locked visible;
	mso-style-name:"Normal 2";}
td
	{mso-style-parent:style0;
	padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:12.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border:none;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:locked visible;
	white-space:nowrap;
	mso-rotate:0;}
.xl66
	{mso-style-parent:style62;
	color:white;
	font-size:10.0pt;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid #4472C4;
	background:#4BACC6;
	mso-pattern:#4BACC6 none;
	white-space:normal;}
.xl67
	{mso-style-parent:style62;
	color:white;
	font-size:10.0pt;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#4BACC6;
	mso-pattern:#4BACC6 none;
	white-space:normal;}
.xl68
	{mso-style-parent:style62;
	color:white;
	font-size:10.0pt;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#4BACC6;
	mso-pattern:#4BACC6 none;}
.xl69
	{mso-style-parent:style62;
	color:white;
	font-size:10.0pt;
	font-weight:700;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\[$$-409\]* \#\,\#\#0\.00_\)\;_\(\[$$-409\]* \\\(\#\,\#\#0\.00\\\)\;_\(\[$$-409\]* \0022-\0022??_\)\;_\(\@_\)";
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:none;
	background:#4BACC6;
	mso-pattern:#4BACC6 none;}
.xl70
	{mso-style-parent:style62;
	font-size:10.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:.5pt solid #4472C4;
	white-space:normal;}
.xl71
	{mso-style-parent:style62;
	font-size:10.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:none;
	white-space:normal;}
.xl72
	{mso-style-parent:style62;
	font-size:10.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:none;}
.xl73
	{mso-style-parent:style62;
	font-size:10.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	mso-number-format:"_\(\[$$-409\]* \#\,\#\#0\.00_\)\;_\(\[$$-409\]* \\\(\#\,\#\#0\.00\\\)\;_\(\[$$-409\]* \0022-\0022??_\)\;_\(\@_\)";
	border-top:.5pt solid #4472C4;
	border-right:none;
	border-bottom:none;
	border-left:none;}
-->
</style>
</head>

<body link=blue vlink=purple>

<table border=0 cellpadding=0 cellspacing=0 width=624 style='border-collapse:
 collapse;table-layout:fixed;width:624pt'>
 <col width=63 style='mso-width-source:userset;mso-width-alt:2688;width:63pt'>
 <col width=376 style='mso-width-source:userset;mso-width-alt:16042;width:376pt'>
 <col width=61 style='mso-width-source:userset;mso-width-alt:2602;width:61pt'>
 <col width=55 style='mso-width-source:userset;mso-width-alt:2346;width:55pt'>
 <col width=69 style='mso-width-source:userset;mso-width-alt:2944;width:69pt'>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl66 width=63 style='height:15.0pt;width:63pt'>Component</td>
  <td class=xl67 width=376 style='width:376pt'>Component_Description</td>
  <td class=xl68 width=61 style='width:61pt'>Option</td>
  <td class=xl68 width=55 style='width:55pt'>Source</td>
  <td class=xl69 align=right width=69 style='width:69pt'><span
  style="mso-spacerun:yes">&nbsp;</span>Price<span
  style="mso-spacerun:yes">&nbsp;</span></td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-001.00</td>
  <td class=xl71 width=376 style='width:376pt'>CanaKit Raspberry Pi 3 Complete
  Starter Kit - 32 GB Edition</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $70.00 </td>
 </tr>
 <tr height=25 style='height:25.0pt'>
  <td height=25 class=xl70 width=63 style='height:25.0pt;width:63pt'>HW-002.00</td>
  <td class=xl71 width=376 style='width:376pt'>TP-Link 5-Port Gigabit Ethernet
  Web Managed Easy Smart Switch (TL-SG105E v2.0)</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Staples</td>
  <td class=xl73 align=right> $40.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-003.00</td>
  <td class=xl71 width=376 style='width:376pt'>Cable Matters SuperSpeed USB 3.0
  to RJ45 Gigabit Ethernet Network Adapter</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $15.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-004.01</td>
  <td class=xl71 width=376 style='width:376pt'>TP-Link 150Mbps Wireless N Nano
  USB Adapter (TL-WN725N)</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Staples</td>
  <td class=xl73 align=right> $10.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-005.02</td>
  <td class=xl71 width=376 style='width:376pt'>Samsung 128GB USB 3.0 Flash
  Drive Fit (MUF-128BB/AM)</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $40.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-006.00</td>
  <td class=xl71 width=376 style='width:376pt'>imoli Universal Travel Case
  (8.07 x 4.33 x 3.74 inches)</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $12.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-007.00</td>
  <td class=xl71 width=376 style='width:376pt'>Ethernet cable</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Staples</td>
  <td class=xl73 align=right> $4.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-100.00</td>
  <td class=xl71 width=376 style='width:376pt'>Hitaltech - 22.5 mm Din Rail
  Enclosure For Raspberry Pi B+</td>
  <td class=xl72>_Base</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $16.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-004.00</td>
  <td class=xl71 width=376 style='width:376pt'>Edimax EW-7811Un 150Mbps 11n
  Wi-Fi USB Adapter</td>
  <td class=xl72>Alternate</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $8.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-005.00</td>
  <td class=xl71 width=376 style='width:376pt'>SanDisk Ultra Fit 128GB USB 3.0
  Flash Drive</td>
  <td class=xl72>Alternate</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $32.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-005.01</td>
  <td class=xl71 width=376 style='width:376pt'>PNY 128GB Elite-X Fit USB 3.0
  Flash Drives</td>
  <td class=xl72>Alternate</td>
  <td class=xl72>Staples</td>
  <td class=xl73 align=right> $50.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-006.01</td>
  <td class=xl71 width=376 style='width:376pt'>BUBM Gadget Organizer Case,
  Ultra-compact Electronics Organizer</td>
  <td class=xl72>Alternate</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $19.00 </td>
 </tr>
 <tr height=25 style='height:25.0pt'>
  <td height=25 class=xl70 width=63 style='height:25.0pt;width:63pt'>HW-006.02</td>
  <td class=xl71 width=376 style='width:376pt'>Caseling Universal
  Electronics/Accessories Hard Travel Carrying Case Bag, 9.5&quot; x 5.25&quot;
  x 2.85&quot; - Black</td>
  <td class=xl72>Alternate</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $14.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-101.00</td>
  <td class=xl71 width=376 style='width:376pt'>AmazonBasics USB 3.0 Extension
  Cable - A-Male to A-Female</td>
  <td class=xl72>Optional</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $6.00 </td>
 </tr>
 <tr height=25 style='height:25.0pt'>
  <td height=25 class=xl70 width=63 style='height:25.0pt;width:63pt'>HW-102.00</td>
  <td class=xl71 width=376 style='width:376pt'>JBtek USB to RS485 Converter
  Adapter ch340T chip 64-bit Window 7 Supported (USB to RS-485 adapter)</td>
  <td class=xl72>Optional</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $7.00 </td>
 </tr>
 <tr height=25 style='height:25.0pt'>
  <td height=25 class=xl70 width=63 style='height:25.0pt;width:63pt'>HW-103.00</td>
  <td class=xl71 width=376 style='width:376pt'>JBtek¨ WINDOWS 8 Supported Debug
  Cable for Raspberry Pi USB Programming USB to TTL Serial Cable (USB to RS-232
  adapter)</td>
  <td class=xl72>Optional</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $7.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-104.00</td>
  <td class=xl71 width=376 style='width:376pt'>Microflex USB to RS-485
  Converter</td>
  <td class=xl72>Optional</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $98.00 </td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl70 width=63 style='height:15.0pt;width:63pt'>HW-105.00</td>
  <td class=xl71 width=376 style='width:376pt'>SharkTap Gigabit Network Sniffer
  (Network Tap)</td>
  <td class=xl72>Optional</td>
  <td class=xl72>Amazon</td>
  <td class=xl73 align=right> $180.00 </td>
 </tr>
 <tr height=25 style='height:25.0pt'>
  <td height=25 class=xl70 width=63 style='height:25.0pt;width:63pt'>HW-106.00</td>
  <td class=xl71 width=376 style='width:376pt'>TP-Link TL-WN722N N150 High-Gain
  Wireless USB Adapter (for wireless monitor mode capabilities)</td>
  <td class=xl72>Optional</td>
  <td class=xl72>Staples</td>
  <td class=xl73 align=right> $15.00 </td>
 </tr>
</table>

</body>

</html>

Software:
  - https://github.com/pwnieexpress/raspberry_pwn
  - https://github.com/secgroundzero/warberry
  - https://github.com/sneakymonk3y/foxhound-nsm (not installed yet)

ToDo:
- make it more user-friendly
- incorporate more tools:
  - https://github.com/sneakymonk3y/foxhound-nsm
- create setup script to turn a basic raspian install into a NTFKit sensor

