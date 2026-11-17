# Media and documents

Media and documents are long-lived household data, so their services are grouped around the storage and Docker layers rather than scattered across small guests.

## Media stack

The media Docker VM hosts the media ecosystem, including Immich and Jellyfin. The Servarr Docker VM manages the supporting media automation layer. Automatic Ripping Machine supports physical-disc archival when needed.

## Documents

Paperless-ngx handles ingestion, indexing, search, and retention of household documents. Scanner and print utilities support the physical-to-digital workflow.

## Principles

- Shared storage is treated as a dependency with a real readiness check.
- Data services are monitored separately from the web interface that exposes them.
- The public docs describe capability and placement, not libraries, collections, shares, or any personal content.
