# Home automation

Home Assistant is the household control plane. It is supported by purpose-built components rather than a single monolithic stack.

## Building blocks

| Component | Responsibility |
|---|---|
| Home Assistant OS | Entity registry, dashboards, integrations, service boundary |
| Node-RED house | Multi-step orchestration and stateful household flows |
| MQTT | Event transport between integrations and devices |
| Zigbee2MQTT | Shared house Zigbee fabric |
| ESPHome | Firmware-backed local devices and sensors |
| Jarvis voice | Always-on voice path that hands home context to Hermes Agent |

## Operating boundaries

- Home Assistant services are the actuator boundary.
- Node-RED is used when an automation needs phases, state, retries, or a readable orchestration flow.
- The shared house Zigbee mesh and the personal Zigbee environment are separate systems.
- A control workflow should observe device state transitions rather than assume completion from a fixed delay.

## Heating and comfort

Heating logic combines schedule, presence, room sensing, and safe hysteresis. Presence can deliberately override an otherwise active schedule; this behaviour is documented so it can be understood during diagnosis rather than mistaken for a failed heater.
