# Proxmox cluster

The platform is a three-node Proxmox cluster. Most lightweight services run in LXCs; workloads that benefit from Docker, appliance semantics, or a full operating system run in VMs.

| Node | Hardware | Primary role |
|---|---|---|
| `pve` | Fujitsu PRIMERGY RX1330 M2 · Xeon E3-1230 v5 · 40 GB RAM | Core services and home automation |
| `pve2` | Intel N100 build · 32 GB RAM | Storage and media workloads |
| `pve3` | Fujitsu PRIMERGY RX1330 M4 · Xeon E-2136 · 64 GB RAM | Automation, observability, and AI |

All nodes use mirrored SATA boot storage. The cluster separates service placement from service access: a service can move, restart, or be maintained without changing how users reach it.

## Guest model

- **LXC:** focused Linux services with low overhead.
- **VM:** Docker hosts, TrueNAS SCALE, Home Assistant OS, Windows/test environments, and software needing a full kernel boundary.
- **Stopped test guests:** retained for experiments and recovery work, clearly separate from the household's active services.

## What this repository tracks

This documentation describes placement and purpose, not full guest configuration. The live service inventory is represented in the [service catalog](../services/index.md) and the [overview map](../architecture/diagrams.md).
