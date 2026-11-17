# Network

Ubiquiti hardware provides routing, switching, and Wi-Fi. The network is divided into purpose-specific segments for personal services, smart-home devices, and other household uses.

## Edge and access

- The gateway provides DHCP, routing, and the household's primary network policy boundary.
- Managed switches and access points connect wired services, servers, IoT devices, and wireless clients.
- Cloudflare fronts only services intentionally made externally reachable.

## DNS and service access

Clients use the gateway-provided resolver policy. Local services remain private unless a deliberate public path exists. The design avoids publishing addresses, ports, VLAN IDs, wireless names, firewall policy, and tunnel identifiers in this repository.

## Smart-home segmentation

The household smart-home fabric is treated separately from the owner's personal Zigbee environment. MQTT bridges and Zigbee coordinators have explicit ownership; pairing is never enabled casually on the shared fabric.

!!! tip
    The architecture maps intentionally show the network as a small number of groups. The operational configuration is kept private and changes more often than the conceptual topology.
