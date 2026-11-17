# Torben's homelab

A public-safe map of the systems that run my home services, media stack, smart home, and side projects.

<div class="grid cards" markdown>

- :material-server-network: **Three-node Proxmox cluster**

  Core services, storage/media workloads, and automation/AI are deliberately placed on separate nodes.

- :material-home-automation: **Home automation first**

  Home Assistant, Node-RED, MQTT, Zigbee2MQTT, ESPHome, and a Jarvis voice bridge form the everyday smart-home layer.

- :material-shield-lock: **Self-hosted access**

  Vaultwarden, Authentik, Cloudflare, and private service boundaries keep access intentional.

- :material-chart-line: **Observable by default**

  Prometheus, Grafana, Uptime Kuma, and ntfy make failures visible before they become mysteries.

</div>

## Start here

- [Architecture overview](architecture/overview.md) explains the platform at a glance.
- [Diagrams](architecture/diagrams.md) contains the high-level topology maps.
- [Service catalog](services/index.md) lists the active workloads by purpose.
- [Maintenance](operations/maintenance.md) describes the operating model.

!!! note "Public documentation, not a recovery runbook"
    This repository intentionally omits addresses, ports, credentials, API tokens, internal hostnames, detailed firewall rules, and backup locations. It is designed to explain the lab without exposing it.
