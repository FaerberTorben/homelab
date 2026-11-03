# Proxmox inventory

> **Last verified:** November 3, 2026, through the live Proxmox cluster API. This is a sanitized operational snapshot: it has no IP addresses, credentials, MAC addresses, storage paths, or configuration secrets.

## Cluster nodes

| Node | State | Allocated memory at verification |
|---|---|---:|
| `pve` | online | 13 / 39 GiB |
| `pve2` | online | 25 / 31 GiB |
| `pve3` | online | 26 / 62 GiB |

## Running guests

| ID | Name | Type | State | Tags |
|---:|---|---|---|---|
| 100 | vaultwarden | LXC | running | cloudflared, important |
| 107 | mqtt | LXC | running | important, mqtt, smarthome |
| 110 | cloudflare-ddns | LXC | running | network |
| 117 | ntfy | LXC | running | notification |
| 125 | mqtt-house | LXC | running | house, mqtt |
| 127 | zigbee2mqtt-house | LXC | running | house, zigbee |
| 129 | authentik | LXC | running | auth |
| 131 | esphome | LXC | running | smarthome |
| 133 | deb12-cloudflared | LXC | running | cloudflared, important, network |
| 138 | uptime-kuma | LXC | running | monitoring, uptime-kuma |
| 950 | pve-usv | LXC | running | homelab, important |
| 106 | AutomaticRipping | QEMU | running | — |
| 132 | haos-live | QEMU | running | cloudflared, important, smarthome |
| 135 | vaultwarden-postgres | LXC | running | — |
| 137 | vaultwarden-nginx | LXC | running | — |
| 103 | media-docker | QEMU | running | SMB, cloudflared, immich, important, jellyfin |
| 104 | TrueNAS-Scale | QEMU | running | NFS, SMB, STORAGE, important |
| 101 | paperless-ngx | LXC | running | cloudflared |
| 108 | hermesagent | LXC | running | agent, ai, automation |
| 113 | homepage | LXC | running | dashboard |
| 114 | n8n | LXC | running | automation |
| 115 | ollama | LXC | running | ai |
| 116 | openwebui | LXC | running | ai, interface |
| 118 | grafana | LXC | running | monitoring, visualization |
| 119 | prometheus | LXC | running | monitoring |
| 120 | homelable | LXC | running | monitoring, network, visualization |
| 121 | prometheus-pve-exporter | LXC | running | monitoring, scraper |
| 122 | rackula | LXC | running | homelab |
| 123 | scanner-lxc | LXC | running |   |
| 124 | print-lxc | LXC | running |   |
| 130 | node-red | LXC | running | automation, important, smarthome |
| 136 | vaultwarden-b | LXC | running | cloudflared, important |
| 140 | nodered-house | LXC | running | automation, house, node-red, smarthome |
| 102 | servarr-docker | QEMU | running | SMB, cloudflared |
| 126 | python-bot-win | QEMU | running |   |

## Stopped and test guests

| ID | Name | Type | State | Tags |
|---:|---|---|---|---|
| 105 | debian | LXC | stopped | cloudflared, webserver |
| 134 | ubu24-dockerhost | LXC | stopped | TEST |
| 109 | ATM10 | QEMU | stopped | cloudflared |
| 111 | ZorinOS | QEMU | stopped | — |
| 128 | win-test-vm | QEMU | stopped | TEST |
| 139 | pond-test | QEMU | stopped | linux, pond, test |

## Inventory maintenance

- Refresh this file after adding, removing, migrating, or materially repurposing a guest.
- Keep sensitive network and operational details out of this public repository.
- Treat a `running` state as a hypervisor observation only; it does not prove that the service is healthy.
