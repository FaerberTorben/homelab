# Architecture overview

The lab is built around three Proxmox nodes. Each node has a distinct job, so a noisy workload is less likely to affect the systems the household relies on.

| Layer | Role |
|---|---|
| Network edge | Ubiquiti switching and Wi-Fi; Cloudflare for selected public services |
| Compute | Three-node Proxmox cluster with a mix of LXCs and VMs |
| Storage | TrueNAS SCALE provides shared SMB-backed storage where it is appropriate |
| Services | Home automation, media, documents, identity, monitoring, automation, and local AI |

## Placement

### Core and home automation

The first node carries the home-facing control plane: Home Assistant, MQTT, Zigbee2MQTT, ESPHome, Node-RED house flows, authentication, notifications, tunnel access, uptime monitoring, and UPS visibility.

### Storage and media

The second node runs TrueNAS SCALE plus the media Docker VM and Vaultwarden's database/reverse-proxy components. This keeps the heavier storage and media traffic in one place.

### Automation, monitoring, and AI

The third node runs Paperless-ngx, the Servarr Docker VM, Hermes Agent, n8n, Ollama, Open WebUI, Grafana, Prometheus, supporting utilities, and the Jarvis voice bridge.

## Design goals

1. **Keep household services understandable.** A service has a clear home and a clear purpose.
2. **Prefer failure isolation over cleverness.** Storage, media, automation, and identity do not all share one guest.
3. **Expose only what needs public reachability.** Cloudflare is an edge, not a substitute for internal segmentation.
4. **Document the big picture.** Service configuration stays private; the architecture stays reviewable.

See the [rendered maps](diagrams.md) for the topology and primary traffic paths.
