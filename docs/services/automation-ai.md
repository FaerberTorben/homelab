# Automation and AI

The lab uses a mix of workflow automation and local AI tooling. Each component has a clear role so experimentation does not silently become a household dependency.

## Components

- **Hermes Agent:** maintenance, research, orchestration, and the reasoning layer behind the Jarvis voice experience.
- **n8n:** integrations and scheduled workflows that do not belong in Home Assistant.
- **Ollama and Open WebUI:** local model serving and interactive use.
- **Quant trading and MT5:** isolated research/demo environment; the MT5 terminal is not treated as a production trading system.
- **Node-RED:** retained as the stateful automation engine for home-facing flows.

## Guardrails

AI and automation are useful only when their boundaries are clear. Household actions are routed through Home Assistant, long-running jobs keep explicit state, and demo/research systems do not receive production authority by accident.
