# My Homelab Setup

This repository contains 
	* Docker Compose stacks
	* configuration templates
	* documentation for everything running in my homelab
	
It spans currently two servers, tied together with Ubiquiti networking and cloudflare service.
	* First Proxmox node for Services 
	* Second Node for NAS and Data Container
	
## Table of Contents

This is a **work in progress**

## Navigation 
* [Apps](https://github.com/FaerberTorben/homelab/tree/main/apps) - List of all the apps and services

## Hardware

### Compute

| | FUJITSU PRIMERGY RX1330 M2 | Proxmox Node 1 (pve1) |
|---|---|---|
| **OS** | Proxmox |
| **Role** | Services | HomeAssistant, AdGuard, Vaultwarden, n8n, Cloudflared and other services |
| **CPU** | 8 x Intel(R) Xeon(R) E3-1230 v5 @ 3,40Ghz |
| **RAM** | 40GB DDR3 |
| **Storage** | [2x Intenso High 1TB SDD](https://amzn.to/) (BTRFS mirrored boot) |

| | Custom Intel N100 | Proxmox Node 2 (pve2) |
|---|---|---|
| **OS** | Proxmox |
| **Role** | Storage | TrueNAS, Immich, Paperless-ngx and other services |
| **CPU** | 4 x Intel(R) N100 |
| **RAM** | 32GB DDR4 |
| **Storage** | [2x Intenso Performance 256GB SDD](https://amzn.to/) (BTRFS mirrored boot) | [3x Toshiba xxx 10TB HDD](https://amzn.to/)

* !!- Not Available right now -!!
| | FUJITSU PRIMERGY RX1330 | Proxmox Node 3 (pve3) | 
|---|---|---|
| **OS** | Proxmox |
| **Role** | Services |	

### Networking

| Device | Description |
|---|---|
| **UDM Pro Max** | Primary router, gateway |
| **USW Pro Max 24 PoE** | Main 24-port PoE switch powering cameras and access points. |
| **1x U7 Pro Max** | Wi-Fi 7 access points providing wireless coverage. |
| **USW Lite 8 PoE** | Secondary 8-port PoE switch for additional wired devices currently in Livingroom. |

Other Unifi Devices
* 1 x UACC-DAC-SFP10-0.5M

### Security

Currently no camera systems - UniFi Protect

| Camera | Details |
|---|---|
| **1x UVC-G4-Bullet** | Connected to the UNVR via UniFi Protect. Planning to slowly set up Room and Garden Security as budget allows. |

### Other Devices

* **Raspberry Pi 4B 4GB** (PoE HAT) - QDevice for Proxmox Quorum!.