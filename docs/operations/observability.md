# Observability

The operational stack answers three questions: is a service reachable, is it behaving normally, and can a failure reach a human?

| Component | What it provides |
|---|---|
| Uptime Kuma | Endpoint and availability checks |
| Prometheus | Metrics collection |
| Grafana | Dashboards and time-series investigation |
| PVE exporter | Cluster and guest metrics |
| ntfy | Authenticated alert delivery |
| Homepage | Human-friendly launch point for services |

## Monitoring philosophy

A green process alone is not proof that a service works. The lab monitors meaningful paths where possible: a service response, storage availability, network reachability, and the dependencies that make the service useful.
