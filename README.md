# Homelab

Infrastructure documentation and safe-to-share service inventory for the homelab.

> **Last verified:** November 3, 2026, against the live Proxmox cluster API. This repository intentionally excludes credentials, private addresses, API tokens, backup contents, and application secrets.

## At a glance

- **3-node Proxmox cluster:** `pve`, `pve2`, and `pve3`
- **41 managed guests:** 31 LXC containers and 10 virtual machines
- **35 guests running** at the time of verification; 6 stopped/test guests are documented separately
- Shared storage is provided by TrueNAS SCALE; Docker and service workloads are distributed across the cluster.

## Documentation

- [Service catalog](apps/) — grouped overview of the services currently hosted.
- [Live inventory](docs/inventory.md) — node and guest inventory, including runtime state and service tags.
- [Contributing and documentation rules](#documentation-rules) — what may be committed here.

## Architecture

```text
Internet / Cloudflare
        |
  Reverse-proxied public services
        |
+----------------------------+
| Proxmox cluster             |
|  pve   — core services      |
|  pve2  — storage/media      |
|  pve3  — automation/AI/apps |
+----------------------------+
        |
 TrueNAS SCALE shared storage
```

The cluster supports identity and password management, smart-home automation, monitoring, media, documents, AI workloads, notifications, and network utilities. Service names and current placement are recorded in the inventory rather than embedded in prose so that changes are easy to review.

## Documentation rules

- Never commit passwords, tokens, private keys, recovery codes, database dumps, or unredacted configuration files.
- Do not publish private IP addresses, LAN DNS names, tunnel credentials, public hostnames, or firewall rules that increase exposure.
- Prefer templates such as `example.env` with placeholder values when configuration examples are useful.
- Update [the live inventory](docs/inventory.md) after substantial placement or service changes, and record the verification date.
- Treat this repository as documentation and sanitized templates—not as a backup destination for production data.

## Hardware and network

The environment uses Ubiquiti networking and a three-node Proxmox cluster with TrueNAS SCALE for storage. Exact hardware specifications evolve over time; only verified, non-sensitive topology belongs in this public documentation.
