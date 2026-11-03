# My homelab

This is where I keep a high-level overview of my homelab. It started out fairly small and, like most homelabs, gradually collected more services than I originally planned.

The setup is built around a three-node Proxmox cluster, with TrueNAS SCALE handling shared storage. Ubiquiti gear takes care of the network, and Cloudflare sits in front of the services that need to be reachable from outside.

## What I use it for

- Home automation and IoT
- Media and document storage
- Password management and identity services
- Monitoring, dashboards, and notifications
- A few automation and AI projects

## The rough layout

```text
Internet
   |
Cloudflare
   |
Proxmox cluster
   ├── pve   - core services and home automation
   ├── pve2  - storage and media workloads
   └── pve3  - automation, monitoring, and AI tools
          |
       TrueNAS SCALE
```

I keep most services in LXC containers. The heavier Docker and storage workloads run in VMs where that makes more sense.

## Hardware

These are the three machines doing the actual work:

| Node | Hardware | Memory | Boot storage |
|---|---|---:|---|
| `pve` | Fujitsu PRIMERGY RX1330 M2, Intel Xeon E3-1230 v5 (4 cores / 8 threads) | 40 GB | 2 × 960 GB Intenso SATA SSDs in Btrfs RAID1 |
| `pve2` | Custom N100M build, Intel N100 (4 cores) | 32 GB | 2 × 250 GB-class SATA SSDs in Btrfs RAID1 |
| `pve3` | Fujitsu PRIMERGY RX1330 M4, Intel Xeon E-2136 (6 cores / 12 threads) | 64 GB | 2 × 960 GB Intenso SATA SSDs in Btrfs RAID1 |

TrueNAS SCALE runs as a VM on `pve2` and provides the shared storage used by the rest of the lab.

### Network gear

- UDM Pro Max
- USW Pro Max 24 PoE
- U7 Pro Max access point
- USW Lite 8 PoE

## Services

The [apps page](apps/) has the short version of what is currently running here.

## About this repository

This is documentation, not a full backup of the lab. I keep secrets, private network details, and production configuration out of Git. If I add example configuration in the future, it will use placeholders rather than real values.
