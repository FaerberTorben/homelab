# Storage

TrueNAS SCALE is the storage centre of the lab. Shared storage is used where applications need media, documents, or durable shared data; local disks remain appropriate for operating systems and service-local state.

## Storage roles

- **Media:** the media Docker host consumes shared storage for the media library and applications such as Immich and Jellyfin.
- **Documents:** Paperless-ngx stores and processes its document data through the storage layer.
- **Availability-sensitive services:** Vaultwarden uses its dedicated database and managed shared storage paths rather than treating a container filesystem as a backup strategy.

## Principles

- A mount must be genuinely ready before a dependent workload starts.
- Shared storage is monitored as a dependency, not assumed to be permanent.
- Application-consistent backups matter more than copying random container files.
- This public documentation names storage roles but does not disclose shares, paths, credentials, or retention details.
