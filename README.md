# Praetorian Capabilities

Open-source security tools developed by Praetorian for offensive security testing, vulnerability discovery, and attack surface management.

## Our Mission

We prevent breaches by emulating attackers. Our goal is to help organisations proactively identify and address exploitable vulnerabilities through powerful tools, research, and capabilities. This repository is part of that mission: releasing select components of our internal research and product development to benefit the broader security community.

---

## 🌐 Nebula - Multi-Cloud Security Scanner

**Unified security scanning across AWS, Azure, and GCP.**

Nebula provides comprehensive cloud security assessment with findings formatted for the Chariot attack surface management platform.

**Key Features:**
- Multi-cloud support (AWS, Azure, GCP)
- IAM analysis and privilege escalation detection
- Resource misconfiguration scanning
- Chariot integration for centralized visibility

**Quick Start:**
```bash
go install github.com/praetorian-inc/nebula@latest
nebula aws summary
```

[Documentation](./modules/nebula) | [Configuration](./modules/nebula#configuration)

---

## 🔎 Fingerprintx - Service Fingerprinting

**Identify running services with precision.**

Fingerprintx performs accurate service fingerprinting to identify what's actually running on open ports, going beyond simple banner grabbing.

**Key Features:**
- Protocol-aware fingerprinting
- Support for 30+ service types
- Fast concurrent scanning
- JSON output for automation

**Quick Start:**
```bash
go install github.com/praetorian-inc/fingerprintx@latest
echo "example.com:443" | fingerprintx
```

[Documentation](./modules/fingerprintx) | [Supported Protocols](./modules/fingerprintx#protocols)

---

## 🔐 NoseyParker - Secret Scanner

**Find secrets in code repositories at scale.**

NoseyParker is a high-performance secret scanning engine written in Rust, designed to detect leaked credentials, API keys, and sensitive data.

**Key Features:**
- 150+ secret detection rules
- Git history scanning
- Fast parallel processing (Rust)
- Low false positive rate

**Quick Start:**
```bash
cargo install noseyparker
noseyparker scan --datastore np.db ./your-repo
noseyparker report --datastore np.db
```

[Documentation](./modules/noseyparker) | [NoseyParker Explorer](./modules/noseyparker-explorer)

---

## 📊 NoseyParker Explorer - Web UI

**Visualize and triage secret findings.**

A web-based interface for exploring NoseyParker scan results, designed for security teams to efficiently triage and manage findings.

**Key Features:**
- Interactive findings browser
- Filtering and search
- Export capabilities
- Team collaboration

[Documentation](./modules/noseyparker-explorer) | [Screenshots](./modules/noseyparker-explorer#screenshots)

---

## Installation

### Clone with all public tools:
```bash
git clone --recurse-submodules https://github.com/praetorian-inc/capabilities.git
cd capabilities
make setup
```

### Update all submodules:
```bash
make update
```

---

## About Chariot

Some of the tools shared here originate from our commercial product, Chariot — a unified managed service platform that combines:

* Attack Surface Management
* Vulnerability Management
* Breach and Attack Simulation
* Continuous Penetration Testing
* Cyber Threat & Exploit Intelligence

These tools are shared with the community under the Apache-2.0 license to help improve the global security posture.

## Who is this for?

This repository is intended for:

* Security researchers
* Red teamers and blue teamers
* SOC teams
* DevSecOps and infrastructure engineers
* Anyone working to strengthen their organisation's security posture

## Contributing

We welcome collaboration, bug reports, enhancements, and feedback from the community. See individual tool repositories for contribution guidelines.

## License

Individual tools maintain their own licenses. See each submodule for details.

## Contact & Community

For now, please use GitHub issues to communicate with us or suggest improvements.

We're excited to collaborate with the community — thank you for being a part of making the world more secure.
