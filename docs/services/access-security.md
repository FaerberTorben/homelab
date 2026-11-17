# Access and security

Self-hosting should not mean exposing every management surface. The lab uses a small access layer to keep identity, credentials, and selected public routes deliberate.

## Components

| Component | Role |
|---|---|
| Vaultwarden HA | Password manager with dedicated database and reverse-proxy layers |
| Authentik | Single sign-on and identity-aware access control |
| Cloudflared | Controlled ingress for selected services |
| Cloudflare DDNS | Dynamic public-address publication where appropriate |
| ntfy | Authenticated notifications for operational events |

## Principles

- Credentials are never kept in the repository.
- Public access is opt-in per service.
- A tunnel, proxy, or dashboard is not assumed to provide authorization by itself.
- Availability-sensitive components receive deliberate maintenance rather than broad, unverified updates.
