# ⚡ Linux Systems & Network Engineering: Production-Grade Hardening

> *"In production, hope is not a strategy. Misconfigurations are fatal, permissions are law, and the terminal is your only ally."*

---

## 💀 Overview
This repository strips away GUI crutches and toy environments to showcase uncompromising, production-ready systems engineering. Built through the rigorous Red Hat Enterprise Linux 9 curriculum on switchlab.dev, this codebase demonstrates elite proficiency in Linux administration, declarative networking, strict privilege boundaries, and infrastructure automation.

Every file, script, and configuration in this repository is engineered to survive hostile network topologies and high-availability enterprise environments where failure carries a heavy price.

---

## 🛡️ Core Production Engineering Standards

### 1. Declarative Network Management (`NetworkManager`)
* **Zero Fragility:** Rejecting interactive, stateful configuration tweaks in favor of declarative keyfile management.
* **Strict Syntax Adherence:** Precise enforcement of `.nmconnection` standards, utilizing explicit `address1=` routing parameters and designated interface binding (`enp1s0`) to eliminate ambiguity.
* **Instant Failover & Reload:** Immediate state application via programmatic connection reloading and active interface elevation without system reboots.

### 2. Radical Privilege Boundaries & Hardening
* **Principle of Least Privilege (PoLP):** Routine testing and enforcement of strict user vs. root boundaries, isolating unprivileged attack surfaces from administrative actions.
* **Immutable Security Controls:** Enforcing strict file ownership (`root:root`) and non-negotiable file permission hardening (`chmod 600`) on sensitive network profile keys to prevent unauthorized tampering or credential leakage.

### 3. Automation & Operational Observability
* **Deterministic Execution:** Custom-built diagnostic scripts (`check-status.sh`) locked down with explicit access control (`chmod 744`) for rapid health auditing.
* **State Verification:** Automated interface querying and path validation (`ping` telemetry to target nodes like `192.168.70.10`) to prove network reachability instantly.

---

## 📁 Repository Architecture Matrix

```text
linux-network-engineering-labs/
├── configs/
│   └── checkpoint-static.nmconnection  # Hardened RHEL 9 static network profile
├── scripts/
│   └── check-status.sh                 # Operational system and interface health auditor
└── README.md                           # Operational doctrine and technical specification

