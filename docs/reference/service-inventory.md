# Service inventory

This is a public-safe snapshot of the active platform roles. It is not a source of truth for addresses, guest IDs, container configuration, or credentials.

## Core and home automation

- Home Assistant OS
- MQTT and MQTT house bridge
- Zigbee2MQTT house
- ESPHome
- Node-RED house
- Authentik
- Vaultwarden primary component
- Cloudflared and Cloudflare DDNS
- ntfy
- Uptime Kuma
- UPS monitoring
- Automatic Ripping Machine

## Storage and media

- TrueNAS SCALE
- Media Docker
- Vaultwarden PostgreSQL
- Vaultwarden Nginx

## Automation, monitoring, and AI

- Paperless-ngx
- Servarr Docker
- Hermes Agent
- Quant-trading environment and MT5 terminal
- Homepage
- n8n
- Ollama and Open WebUI
- Prometheus, Grafana, and PVE exporter
- Homelable
- Rackula
- Scanner and print utilities
- Node-RED
- Vaultwarden secondary component
- Jarvis voice bridge

## Non-production guests

A small number of stopped guests are retained for testing, migration, or recovery work. They are intentionally not described as active household services.

!!! note
    The [overview diagram](../architecture/diagrams.md) gives the best visual inventory. Runtime state can change; this repository is refreshed when the architecture changes, not on every health event.
