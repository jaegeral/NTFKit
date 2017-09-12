# NTFKit - Network Troubleshooting Field Kit
----------------------------------------------

- [Legal Stuff](#legal-stuff)
- [Summary](#summary)
- [What you will need](#what-you-will-need)
- [Installation Steps](#installation-steps)
- [Project Phases](#project-phases)
- [Hardware](#hardware)
- [Software](#software)
- [ToDo](#todo)

## Legal Stuff
This software is provided free of charge under the GNU Public License (http://www.gnu.org/licenses/gpl.html).

As with any software application, downloads/transfers of this software is subject to export controls under the U.S. Commerce Department's Export Administration Regulations (EAR). By using this software you certify your complete understanding of and compliance with these regulations.

----------------------------------------------

## Summary
This project was started to extend the capability of a small internal group to support individuals with diverse backgrounds.  The initial focus was
to gather data (especially packet captures) for offline analysis and baselining.  The project is growing, but the development is slow.  The focus continues
to be on data acquisition, but some effort is being made to provide other options and capabilities.


----------------------------------------------

## Important
* NTFKit is built on DEBIAN - not RASPBIAN - and has not been tested on RASPBIAN images!!

----------------------------------------------

## What you will need
1. A stock Raspberry Pi board (http://www.raspberrypi.org/)
2. The Debian (not Raspbian) Raspberry Pi distribution. The Debian build is regularly updated,
   so look at http://www.raspberrypi.org/downloads for the latest download.
3. An SD card of at least 32GB in size
4. SSH/console access to the Raspberry Pi
5. Internet access from the Raspberry Pi

----------------------------------------------

## Installation Steps
1. Follow the steps on http://www.raspberrypi.org/downloads to image your SD card. Don't forget to perform, at least, the following steps through the post-installation wizard :
2. [extend](http://elinux.org/RPi_Resize_Flash_Partitions) the root partition to utilize the whole SD card.
3. enable the SSH server
4. SSH to the Pi
5. git clone https://github.com/boisgada/NTFKit
x. [more to come...]

----------------------------------------------

## Project Phases
- Phase 1 - Target Audience: Technical with Networking and Linux Expertise
- Phase 2 - Target Audience: Technical with some Networking limited Linux Expertise
- Phase 3 - Target Audience: Technical with limited Networking and limited Linux Expertise
- Phase 4 - Target Audience: Technical with no Networking or Linux Expertise
- Phase 5 - Target Audience: Non-Technical

### Current Status: Phase 1

----------------------------------------------

## Hardware
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

----------------------------------------------

## Software
  - Base system
    - https://github.com/pwnieexpress/raspberry_pwn
    - https://github.com/secgroundzero/warberry
  - Base Tools
    - https://github.com/sneakymonk3y/foxhound-nsm (not installed yet)
  - Scripts
    - bro_cleanup.todo
    - copy_packages.todo
    - copy_scripts.todo
    - create_ntfk_dirs.todo
    - create_users.todo
    - crontab.ntfk.ntfk.todo.data
    - crontab.ntfk.root.todo.data
    - crontab.root.todo.data
    - crontab.todo.data
    - current_address.todo
    - deploy_ntfk.todo
    - disable_unwanted_services.todo
    - fix_BADSIG.todo
    - flush_arpwatch.todo
    - flush_pcap.todo
    - flush_scripts.todo
    - gzip_pcap_files.todo
    - initial.root.todo
    - initial.todo
    - install scripts
      - install_apt-transport-https.todo
      - install_arpwatch.todo
      - install_autossh.todo
      - install_bro_dependencies.todo
      - install_bro_from_package.todo
      - install_bro_from_source.todo
      - install_dnsmasq.todo
      - install_elasticsearch.todo
      - install_ettercap.todo
      - install_foxhound-nsm.todo
      - install_jpnevulator.todo
      - install_nessus.todo
      - install_netexpect.todo
      - install_nmap.todo
      - install_packages.todo
      - install_pymodbus.todo
      - install_rkhunter.todo
      - install_snort.todo
      - install_syslog-ng.todo
      - install_traceroute.todo
      - install_ttysnoop.todo
      - install_vlan.todo
      - install_wireshark.todo
      - install_yara.todo
    - keygen.root.todo
    - keygen.todo
    - make_snort_rules.todo
    - make_ssh_config.todo
    - pause.todo
    - pcap
      - pcap_extract_gratuitour_arp.todo
      - pcap_extract_gratuitour_arp_by_source.todo
      - pcap_summary_arp.todo
      - pcap_summary_conv_ip.todo
      - pcap_summary_conv_tcp.todo
      - pcap_summary_conv_udp.todo
      - pcap_summary_dns_queries.todo
      - pcap_summary_dns_query_list.todo
      - pcap_summary_ip_conversations.todo
      - pcap_summary_ip_pairs.todo
      - pcap_summary_ip_srcdst_tree.todo
      - pcap_summary_mac_pairs.todo
      - pcap_summary_nbns_query.todo
      - pcap_summary_smb.todo
      - pcap_summary_smb_host_announcement.todo
      - pcap_summary_tcp_conversations.todo
      - pcap_summary_test01.todo
      - pcap_summary_udp_conversations.todo
      - pcap_summary_vlans.todo
    - reboot.todo
    - regenerate_ssh_keys.todo
    - rename_vm.todo
    - rsync_bro_logs.todo
    - rsync_pcap.todo
    - run_autossh.todo
    - scp_hexdumps.todo
    - scp_scripts.todo
    - scp_todo_files.todo
    - set_runlevel.todo
    - shellcode.todo
    - snort2bro.py
    - ssh_config.todo
    - template.todo
    - template.todo.head
    - template.todo.tail
    - tshark scripts
      - tshark_summary_conv_eth.todo
      - tshark_summary_conv_ip.todo
      - tshark_summary_conv_tcp.todo
      - tshark_summary_conv_udp.todo
      - tshark_summary_dests_tree.todo
      - tshark_summary_endpoints_ip.todo
      - tshark_summary_expert.todo
      - tshark_summary_hart_ip_tree.todo
      - tshark_summary_hosts.todo
      - tshark_summary_http_tree.todo
      - tshark_summary_io_phs.todo
      - tshark_summary_ip_hosts_tree.todo
      - tshark_summary_ip_srcdst_tree.todo
      - tshark_summary_plen_tree.todo
      - tshark_summary_ptype_tree.todo
    - udev_rules_75.todo
    - update_authorized_keys.todo
    - update_crontab.todo
    - update_rsyslog.todo
    - update_sudoers.todo
    - upload_public_key.todo
    - wait_for_authorized_keys.todo


----------------------------------------------

## ToDo
- Documentation
- make it more user-friendly
- dynamic vlan interface
- arpwatch patch to enable 802.1q
- Snort ICS signatures
- fix wifite (low priority)
- work on better initialization script for new deployments (open to recommendations - gitlab perhaps?)
- documentation for creating and using a public key on windows computers (putty?)
- create install.sh script that takes a base raspberry pi install and converts it to a NTFKit sensor (may be difficult because we use pwnie express image)
- Additional automated reports (see reports list)
- incorporate more tools:
  - https://github.com/sneakymonk3y/foxhound-nsm
  - Cyberlens sensor

----------------------------------------------
