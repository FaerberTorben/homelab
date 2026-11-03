# Service catalog

> **Last verified:** November 3, 2026. Entries reflect the live Proxmox inventory at that time. Runtime state is not a health check; monitoring and application-level checks remain the source of truth.

## Core infrastructure

| Service | Purpose | Location |
|---|---|---|
| TrueNAS SCALE | Shared NAS and SMB/NFS-backed storage | `pve2` / VM 104 |
| Cloudflare DDNS | Dynamic DNS updates | `pve` / CT 110 |
| Cloudflared | Tunnel and edge connectivity workloads | `pve` / CT 133 and tagged dependent guests |
| UPS service | Power monitoring/integration | `pve` / CT 950 |
| Homepage | Internal service dashboard | `pve3` / CT 113 |

## Security and identity

| Service | Purpose | Location |
|---|---|---|
| Vaultwarden | Password manager | `pve` / CT 100 and `pve3` / CT 136 |
| Vaultwarden PostgreSQL | Vaultwarden database | `pve2` / CT 135 |
| Vaultwarden Nginx | Vaultwarden proxy layer | `pve2` / CT 137 |
| Authentik | Identity and access management | `pve` / CT 129 |
| ntfy | Self-hosted notifications | `pve` / CT 117 |

## Smart home and automation

| Service | Purpose | Location |
|---|---|---|
| Home Assistant OS | Home automation platform | `pve` / VM 132 |
| Node-RED | General automation flows | `pve3` / CT 130 |
| Node-RED House | House-specific automation flows | `pve3` / CT 140 |
| MQTT | Primary MQTT broker | `pve` / CT 107 |
| MQTT House | Segmented house MQTT broker | `pve` / CT 125 |
| Zigbee2MQTT House | Zigbee-to-MQTT bridge | `pve` / CT 127 |
| ESPHome | Device firmware and management | `pve` / CT 131 |
| n8n | Workflow automation | `pve3` / CT 114 |

## Monitoring and operations

| Service | Purpose | Location |
|---|---|---|
| Uptime Kuma | Availability monitoring | `pve` / CT 138 |
| Grafana | Dashboards and visualization | `pve3` / CT 118 |
| Prometheus | Metrics collection | `pve3` / CT 119 |
| Prometheus PVE Exporter | Proxmox metrics exporter | `pve3` / CT 121 |
| Homelable | Network/monitoring visualization | `pve3` / CT 120 |
| Hermes Agent | Homelab automation agent | `pve3` / CT 108 |
| Rackula | Rack/infrastructure documentation | `pve3` / CT 122 |

## Media, documents, and AI

| Service | Purpose | Location |
|---|---|---|
| Media Docker host | Media and photo-management workloads | `pve2` / VM 103 |
| Servarr Docker host | Media automation workloads | `pve3` / VM 102 |
| Paperless-ngx | Document management | `pve3` / CT 101 |
| Ollama | Local model runtime | `pve3` / CT 115 |
| Open WebUI | AI user interface | `pve3` / CT 116 |
| Automatic Ripping Machine | Optical media ingestion | `pve` / VM 106 |

## Other hosted utilities

| Service | Purpose | Location |
|---|---|---|
| Scanner service | Scanner integration | `pve3` / CT 123 |
| Print service | Printing integration | `pve3` / CT 124 |
| Python bot (Windows) | Bot/runtime workload | `pve3` / VM 126 |

For the complete runtime list—including stopped test guests—see the [live inventory](../docs/inventory.md).
