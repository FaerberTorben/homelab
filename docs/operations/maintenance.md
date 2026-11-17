# Maintenance

Maintenance is planned around dependency order and recoverability, not around installing every available update at once.

## Baseline workflow

1. Check service health, storage readiness, versions, and recovery points.
2. Update one scoped component or maintenance domain at a time.
3. Verify the service, its dependencies, and the user-facing path after the change.
4. Keep critical public services and shared storage availability-aware.
5. Record configuration changes in the private operational runbook; keep this public repository architectural.

## Update policy

Critical security updates are prioritized. Routine changes are made with awareness of maintenance impact, particularly for storage, identity, public ingress, and home automation.

## Backups and recovery

Backups are necessary but not sufficient. A recovery plan needs restorable data, known dependencies, and a way to validate that the restored service is actually usable.
