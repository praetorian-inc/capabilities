# Praetorian Capabilities

Open-source security tools developed by Praetorian for offensive security testing, vulnerability discovery, and attack surface management.

## Our Mission

We prevent breaches by emulating attackers. Our goal is to help organisations proactively identify and address exploitable vulnerabilities through powerful tools, research, and capabilities. This repository is part of that mission: releasing select components of our internal research and product development to benefit the broader security community.

---

## Public Tools

These tools are open source and available to everyone.

### Nebula - Multi-Cloud Security Scanner

[![GitHub stars](https://img.shields.io/github/stars/praetorian-inc/nebula?style=flat-square)](https://github.com/praetorian-inc/nebula/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/praetorian-inc/nebula?style=flat-square)](https://github.com/praetorian-inc/nebula/network/members)
[![GitHub issues](https://img.shields.io/github/issues/praetorian-inc/nebula?style=flat-square)](https://github.com/praetorian-inc/nebula/issues)
[![Go Version](https://img.shields.io/github/go-mod/go-version/praetorian-inc/nebula?style=flat-square)](https://github.com/praetorian-inc/nebula)
[![License](https://img.shields.io/github/license/praetorian-inc/nebula?style=flat-square)](https://github.com/praetorian-inc/nebula/blob/main/LICENSE)

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

### Fingerprintx - Service Fingerprinting

[![GitHub stars](https://img.shields.io/github/stars/praetorian-inc/fingerprintx?style=flat-square)](https://github.com/praetorian-inc/fingerprintx/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/praetorian-inc/fingerprintx?style=flat-square)](https://github.com/praetorian-inc/fingerprintx/network/members)
[![GitHub issues](https://img.shields.io/github/issues/praetorian-inc/fingerprintx?style=flat-square)](https://github.com/praetorian-inc/fingerprintx/issues)
[![Go Version](https://img.shields.io/github/go-mod/go-version/praetorian-inc/fingerprintx?style=flat-square)](https://github.com/praetorian-inc/fingerprintx)
[![License](https://img.shields.io/github/license/praetorian-inc/fingerprintx?style=flat-square)](https://github.com/praetorian-inc/fingerprintx/blob/main/LICENSE)

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

### NoseyParker - Secret Scanner

[![GitHub stars](https://img.shields.io/github/stars/praetorian-inc/noseyparker?style=flat-square)](https://github.com/praetorian-inc/noseyparker/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/praetorian-inc/noseyparker?style=flat-square)](https://github.com/praetorian-inc/noseyparker/network/members)
[![GitHub issues](https://img.shields.io/github/issues/praetorian-inc/noseyparker?style=flat-square)](https://github.com/praetorian-inc/noseyparker/issues)
[![License](https://img.shields.io/github/license/praetorian-inc/noseyparker?style=flat-square)](https://github.com/praetorian-inc/noseyparker/blob/main/LICENSE)
![Rust](https://img.shields.io/badge/rust-%23000000.svg?style=flat-square&logo=rust&logoColor=white)

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

### NoseyParker Explorer - Web UI

[![GitHub stars](https://img.shields.io/github/stars/praetorian-inc/noseyparker-explorer?style=flat-square)](https://github.com/praetorian-inc/noseyparker-explorer/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/praetorian-inc/noseyparker-explorer?style=flat-square)](https://github.com/praetorian-inc/noseyparker-explorer/network/members)
[![GitHub issues](https://img.shields.io/github/issues/praetorian-inc/noseyparker-explorer?style=flat-square)](https://github.com/praetorian-inc/noseyparker-explorer/issues)
[![License](https://img.shields.io/github/license/praetorian-inc/noseyparker-explorer?style=flat-square)](https://github.com/praetorian-inc/noseyparker-explorer/blob/main/LICENSE)

**Visualize and triage secret findings.**

A web-based interface for exploring NoseyParker scan results, designed for security teams to efficiently triage and manage findings.

**Key Features:**
- Interactive findings browser
- Filtering and search
- Export capabilities
- Team collaboration

[Documentation](./modules/noseyparker-explorer) | [Screenshots](./modules/noseyparker-explorer#screenshots)

---

## Internal Tools

These tools are available to Praetorian team members and require GitHub organization access.

### Augustus - LLM Security Testing Framework

**Detect prompt injection, jailbreaks, and adversarial attacks against LLMs.**

Augustus is a comprehensive LLM security testing framework with 46+ probes and support for 19 providers, packaged as a single Go binary.

**Key Features:**
- 46+ security probes for LLM testing
- Support for 19 LLM providers
- Prompt injection and jailbreak detection
- Adversarial attack simulation

[Documentation](./modules/augustus)

---

### Brutus - Credential Testing Tool

**Fast, zero-dependency credential testing in Go.**

Brutus is a high-performance brute force tool supporting SSH, MySQL, PostgreSQL, Redis, MongoDB, SMB, and 20+ protocols. A modern Hydra alternative with native fingerprintx/naabu pipeline integration.

**Key Features:**
- 20+ protocol support
- Zero external dependencies
- Native integration with fingerprintx and naabu
- High-performance concurrent testing

[Documentation](./modules/brutus)

---

### Nero - Default Credential Scanner

**Scan for default and weak credentials across multiple protocols.**

Nero is a default credential scanner with a plugin architecture supporting multiple protocols, designed to identify systems using factory-default or commonly-used credentials.

**Key Features:**
- Plugin-based architecture
- Multi-protocol support
- Default credential database
- Extensible framework

[Documentation](./modules/nero)

---

### Trajan - CI/CD Security Scanner

**Detect security vulnerabilities in GitHub Actions workflows.**

Trajan scans CI/CD pipelines for Actions Injection, Pwn Requests, TOCTOU vulnerabilities, artifact poisoning, and AI prompt injection attacks.

**Key Features:**
- GitHub Actions security scanning
- Actions Injection detection
- Pwn Request identification
- Artifact poisoning detection
- AI prompt injection analysis

[Documentation](./modules/trajan)

---

### Diocletian - Cloud Security Assessment

**Comprehensive cloud security assessment tool.**

Diocletian provides cloud security assessment capabilities for identifying misconfigurations and security issues across cloud environments.

**Key Features:**
- Cloud security scanning
- Misconfiguration detection
- Security assessment reporting

[Documentation](./modules/diocletian)

---

### NoseyParker++ - Enhanced Secret Scanner

**Internal version of NoseyParker with additional ML features.**

An enhanced version of NoseyParker that includes machine learning capabilities for improved secret detection and reduced false positives.

**Key Features:**
- All NoseyParker features
- ML-enhanced detection
- Reduced false positive rate
- Internal rule sets

[Documentation](./modules/noseyparkerplusplus)

---

### Nuclei Templates - Custom Vulnerability Templates

**Internal version of Nuclei templates with custom detections.**

A curated collection of Nuclei templates including internal templates and customizations for Praetorian's security testing workflows.

**Key Features:**
- Custom vulnerability templates
- Internal detection rules
- Praetorian-specific checks

[Documentation](./modules/nuclei-templates)

---

### Capability SDK - Go Development Kit

**Go SDK for building security capabilities.**

A standardized SDK providing common types, formatters, and utilities for building security tools that integrate with the Chariot platform.

**Key Features:**
- Standardized output types
- Chariot integration helpers
- Common formatters
- Reusable utilities

[Documentation](./modules/capability-sdk)

---

## Installation

### Clone with all public tools:
```bash
git clone --recurse-submodules https://github.com/praetorian-inc/capabilities.git
cd capabilities
make setup
```

### Clone with internal tools (requires org access):
```bash
git clone --recurse-submodules https://github.com/praetorian-inc/capabilities.git
cd capabilities
make setup-all
```

### Update all submodules:
```bash
make submodule-pull
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
