# Apps

This is the short version. I do not try to document every container, test VM, or supporting component here. The point is to show the things I actually use.

## Home automation

- Home Assistant is the centre of the smart-home setup.
- Node-RED handles automations that are easier to manage as flows.
- MQTT, Zigbee2MQTT, and ESPHome connect sensors, switches, and other devices.
- n8n is for the automation jobs that do not belong in Home Assistant.

## Privacy and access

- Vaultwarden keeps my passwords under my own control.
- Authentik handles login and access for services that need it.
- ntfy sends notifications to my devices.

## Media and documents

- A Docker host runs the media stack, including Immich and Jellyfin.
- Paperless-ngx stores and indexes documents.
- Automatic Ripping Machine is there for the occasional disc that still needs to be archived.

## Monitoring and management

- Uptime Kuma watches the services I care about.
- Prometheus and Grafana are used for metrics and dashboards.
- Homepage gives me one place to jump into the apps.
- Cloudflared and Cloudflare DDNS handle the external side of things.

## AI and side projects

- Ollama and Open WebUI are used for local models.
- Hermes Agent helps me keep the lab maintained.
- There are also a few small utilities for printing, scanning, and other one-off jobs.

The exact mix changes every now and then. This page is meant to stay readable, so it only gets updated when the overall setup changes.
