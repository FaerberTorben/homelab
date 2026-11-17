<div class="landing-page">
  <section class="hero-panel">
    <div class="hero-copy">
      <p class="eyebrow"><span></span> PRIVATE INFRASTRUCTURE / DOCUMENTED</p>
      <h1>Home infrastructure,<br><em>built as a system.</em></h1>
      <p class="hero-lede">A three-node Proxmox cluster for the services that matter at home: automation, media, documents, identity, monitoring, and local AI.</p>
      <div class="hero-actions">
        <a class="button button--primary" href="architecture/overview/">Explore the architecture <b>↗</b></a>
        <a class="button button--quiet" href="architecture/diagrams/">Open topology maps</a>
      </div>
    </div>
    <div class="hero-spec">
      <div class="spec-heading">PLATFORM STATUS <span>●</span></div>
      <div class="spec-grid">
        <div><strong>03</strong><small>Proxmox nodes</small></div>
        <div><strong>37</strong><small>active workloads</small></div>
        <div><strong>24</strong><small>logical CPUs</small></div>
        <div><strong>136 GB</strong><small>installed memory</small></div>
      </div>
      <p class="spec-note">Inventory refreshed from the live cluster. Public docs intentionally omit private network details.</p>
    </div>
  </section>

  <section class="topology-panel">
    <div class="section-kicker">01 / SYSTEM MAP</div>
    <div class="topology-heading">
      <h2>Clear boundaries.<br>Useful dependencies.</h2>
      <p>Services are placed by role, not by accident. The result is easier maintenance, clearer failures, and a map that stays understandable as the lab grows.</p>
    </div>
    <div class="topology-flow" aria-label="Homelab topology summary">
      <article><span class="flow-index">A</span><p class="flow-label">EDGE</p><h3>Cloudflare<br>+ Ubiquiti</h3><small>Deliberate public paths and household access.</small></article>
      <div class="flow-line"><i></i></div>
      <article><span class="flow-index">B</span><p class="flow-label">COMPUTE</p><h3>Three-node<br>Proxmox cluster</h3><small>Core, storage/media, and automation/AI workloads.</small></article>
      <div class="flow-line"><i></i></div>
      <article><span class="flow-index">C</span><p class="flow-label">DATA</p><h3>TrueNAS<br>+ service data</h3><small>Shared storage only where it earns its complexity.</small></article>
    </div>
  </section>

  <section class="workload-panel">
    <div class="section-kicker">02 / WHAT LIVES HERE</div>
    <div class="workload-layout">
      <h2>Household-grade<br>self-hosting.</h2>
      <div class="workload-list">
        <a href="services/home-automation/"><b>01</b><span>Home automation</span><small>Home Assistant · Node-RED · MQTT · Zigbee · Jarvis</small><i>↗</i></a>
        <a href="services/media-documents/"><b>02</b><span>Media & documents</span><small>Immich · Jellyfin · Paperless · Servarr</small><i>↗</i></a>
        <a href="services/access-security/"><b>03</b><span>Access & security</span><small>Vaultwarden · Authentik · Cloudflare · ntfy</small><i>↗</i></a>
        <a href="services/automation-ai/"><b>04</b><span>Automation & AI</span><small>Hermes · n8n · Ollama · Open WebUI</small><i>↗</i></a>
      </div>
    </div>
  </section>

  <section class="diagram-panel">
    <div class="diagram-copy"><div class="section-kicker">03 / LIVE MAPS</div><h2>Two views.<br>One system.</h2><p>The overview groups workloads by physical placement. The flow map explains the primary request, identity, storage, automation, and observability paths.</p><a class="text-link" href="architecture/diagrams/">See the full diagrams <span>→</span></a></div>
    <a class="diagram-preview" href="architecture/diagrams/" aria-label="Open homelab diagrams"><img src="assets/diagrams/network-service-flow.svg" alt="Network and service flow diagram"><span>OPEN FULL MAP <b>↗</b></span></a>
  </section>

  <section class="boundary-panel"><p class="eyebrow">PUBLIC-SAFE BY DESIGN</p><h2>The map is public.<br><em>The operating details are not.</em></h2><p>Addresses, ports, credentials, firewall policy, personal data, and production configuration stay out of this repository. The architecture remains useful without becoming an attack surface.</p><a class="text-link" href="reference/design-principles/">Read the design principles <span>→</span></a></section>
</div>
