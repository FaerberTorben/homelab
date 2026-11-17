# Homelab diagrams

This repository keeps two generated architecture maps. Their source files are D2, so the diagrams can be updated without editing SVG by hand.

## Maps

- [Overview](../assets/diagrams/overview.svg) — the physical cluster and its running workloads, grouped by Proxmox node.
- [Network and service flow](../assets/diagrams/network-service-flow.svg) — the high-level paths for external access, identity, smart home, storage, automation, AI, metrics, and alerts.

The diagrams deliberately leave out addresses, ports, credentials, and detailed VLAN configuration. Those belong in operational documentation rather than a public architecture map.

## Source and rendering

```text
assets/diagrams/overview.d2
assets/diagrams/network-service-flow.d2
```

Render with D2 and the ELK layout engine:

```bash
d2 --layout elk docs/assets/diagrams/overview.d2 docs/assets/diagrams/overview.svg
d2 --layout elk docs/assets/diagrams/network-service-flow.d2 docs/assets/diagrams/network-service-flow.svg
```

The source inventory was checked against the live Proxmox cluster before this first render. Update the D2 source whenever workloads or major traffic paths change.
