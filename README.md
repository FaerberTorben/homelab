# My Homelab Setup

This repository contains all infrastructure, configs, and recovery docs for my private homelab.  
This is a **work in progress** 🚧

---

## 🖥️ Hardware

### Compute

#### FUJITSU PRIMERGY RX1330 M2 *(pve1 – Proxmox)*
This is my first Proxmox node.  
It runs core infrastructure services like Vaultwarden, Home Assistant, AdGuard and internal tooling.

**Specs**
- Processor: Intel (exact model wip)
- RAM: 40 GB (exact model wip)
- STORAGE: 2× Intenso High 1TB *(mirrored boot drives, btrfs raid 1 mirror)*

**Roles**
- Vaultwarden  
- Home Assistant  
- AdGuard  
- System utilities & test LXCs

---

#### DIY Server *(pve2 – Proxmox)*
Second Proxmox node – focused on media, storage and cloud services.

**Specs**
- Intel N100  
- 32 GB (exact model wip)
- 2× Intenso Performance 250 GB *(mirrored boot drives, btrfs raid 1 mirror)*
- 3× 10 TB HDD *(ZFS Pool for media + backups)*  

**Roles**
- Plex  
- Jellyfin  
- Immich 
- Nextcloud 
- Paperless-ngx 
- ARR Stack

---

## 🔐 Security

- Zero Trust via Cloudflared  
- Internal DNS via AdGuard  
- No open ports
- AirVPN for ARR Stack  