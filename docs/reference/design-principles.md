# Design principles

These principles keep the homelab useful as it grows.

1. **Explain the system, not just the services.** A dashboard link is not architecture.
2. **Separate public documentation from operational secrets.** Public diagrams use roles, not addresses or tokens.
3. **Treat storage and identity as dependencies.** A service without its data or access layer is not healthy.
4. **Prefer observable state.** Use health checks and real transitions instead of assumptions and fixed delays.
5. **Keep experiments isolated.** Test guests and demo trading are visible but do not inherit production authority.
6. **Document change intent.** Infrastructure evolves; the repository should explain why components exist and where they belong.
