# Praetorian Capabilities

Open-source security tools developed by Praetorian for offensive security testing, vulnerability discovery, and attack surface management.

## Our Mission

We prevent breaches by emulating attackers. Our goal is to help organisations proactively identify and address exploitable vulnerabilities through powerful tools, research, and capabilities. This repository is part of that mission: releasing select components of our internal research and product development to benefit the broader security community.

---

## Enumeration Tools

Tools for discovering assets, services, endpoints, and secrets across your attack surface.

### Nerva - Service Fingerprinting

[![GitHub stars](https://img.shields.io/github/stars/praetorian-inc/nerva?style=flat-square)](https://github.com/praetorian-inc/nerva/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/praetorian-inc/nerva?style=flat-square)](https://github.com/praetorian-inc/nerva/network/members)
[![GitHub issues](https://img.shields.io/github/issues/praetorian-inc/nerva?style=flat-square)](https://github.com/praetorian-inc/nerva/issues)
[![Go Version](https://img.shields.io/github/go-mod/go-version/praetorian-inc/nerva?style=flat-square)](https://github.com/praetorian-inc/nerva)
[![License](https://img.shields.io/github/license/praetorian-inc/nerva?style=flat-square)](https://github.com/praetorian-inc/nerva/blob/main/LICENSE)

**Identify running services with precision.**

Nerva performs accurate service fingerprinting to identify what's actually running on open ports, going beyond simple banner grabbing.

**Key Features:**
- Protocol-aware fingerprinting
- Support for 30+ service types
- Fast concurrent scanning
- JSON output for automation

**Quick Start:**
```bash
go install github.com/praetorian-inc/nerva@latest
echo "example.com:443" | nerva
```

[Documentation](./modules/nerva) | [Supported Protocols](./modules/nerva#protocols)

---

### Julius - LLM Service Enumeration 

**Identify LLM services running on target endpoints.**

Julius is an LLM service fingerprinting tool that detects what AI/ML platform is running on a target by sending HTTP probes and matching responses. Supports 15+ services including Ollama, vLLM, llama.cpp, and enterprise platforms like NVIDIA NIM.

**Key Features:**
- 15+ LLM service fingerprints (self-hosted, RAG platforms, cloud)
- YAML-based extensible probe definitions
- Model extraction and Augustus generator integration
- Multiple output formats (table, JSON, JSONL)

[Documentation](./modules/julius)

---

### Pius - Asset Enumeration

**Discover and enumerate assets across your attack surface.**

Pius is an asset enumeration tool designed to identify and catalog assets within target environments, supporting attack surface management and reconnaissance workflows.

**Key Features:**
- Comprehensive asset discovery
- Multiple enumeration techniques
- Structured output for pipeline integration
- Chariot platform integration

[Documentation](./modules/pius)

---

### Titus - Secret Enumeration

**High-performance secrets detection with Burp Suite integration.**

Titus is a Go port of NoseyParker, a secrets scanning engine with 444+ detection rules, server mode for Burp Suite integration, and a Chrome browser extension.

**Key Features:**
- 444+ secret detection rules
- Burp Suite extension with passive/active scanning
- Chrome browser extension for web page scanning
- NDJSON streaming protocol for integrations

**Quick Start:**
```bash
make build
titus scan --file config.json
titus serve  # Server mode for Burp integration
```

[Documentation](./modules/titus)

---

### Vespasian - API Surface Enumeration

**Discover API endpoints across OpenAPI, GraphQL, gRPC, WebSocket, and WSDL.**

Vespasian is a comprehensive API surface enumeration tool that discovers API endpoints from multiple sources including OpenAPI/Swagger, GraphQL introspection, gRPC reflection, WebSocket detection, and JavaScript analysis.

**Key Features:**
- Multi-protocol discovery (HTTP, gRPC, WebSocket, SOAP)
- OpenAPI/Swagger, GraphQL, gRPC, WSDL parsing
- JavaScript API endpoint extraction
- Multiple output formats (JSON, SARIF, Markdown)

**Quick Start:**
```bash
go install github.com/praetorian-inc/vespasian/cmd/vespasian@latest
vespasian scan config.yaml https://api.example.com
```

[Documentation](./modules/vespasian)

---

## Attack Tools

Tools for testing vulnerabilities, exploiting weaknesses, and validating security controls.

### Augustus - LLM Attack Framework

**Detect prompt injection, jailbreaks, and adversarial attacks against LLMs.**

Augustus is a comprehensive LLM security testing framework with 46+ probes and support for 19 providers, packaged as a single Go binary.

**Key Features:**
- 46+ security probes for LLM testing
- Support for 19 LLM providers
- Prompt injection and jailbreak detection
- Adversarial attack simulation

[Documentation](./modules/augustus)

---

### Aurelian - Cloud Attack Framework

**Comprehensive cloud attack tool.**

Aurelian provides cloud attack capabilities for identifying misconfigurations and security issues across cloud environments.

**Key Features:**
- Cloud security scanning
- Misconfiguration detection
- Security assessment reporting

[Documentation](./modules/aurelian)

---

### Brutus - Credential Attack Framework

**Fast, zero-dependency credential testing in Go.**

Brutus is a high-performance brute force tool supporting SSH, MySQL, PostgreSQL, Redis, MongoDB, SMB, and 20+ protocols. A modern Hydra alternative with native nerva/naabu pipeline integration.

**Key Features:**
- 20+ protocol support
- Zero external dependencies
- Native integration with nerva and naabu
- High-performance concurrent testing

[Documentation](./modules/brutus)

---

### Hadrian - API Attack Framework

**Detect OWASP API vulnerabilities with role-based authorization testing.**

Hadrian is a security testing framework for REST APIs that tests for OWASP API vulnerabilities using role-based authorization testing and YAML-driven templates.

**Key Features:**
- OWASP API Top 10 coverage (BOLA, broken authentication)
- Role-based authorization testing
- Template-driven security tests
- LLM triage integration (Anthropic, OpenAI, Ollama)

**Quick Start:**
```bash
go install github.com/praetorian-inc/hadrian/cmd/hadrian@latest
hadrian test --api api.yaml --roles roles.yaml
```

[Documentation](./modules/hadrian)

---

### Nero - Phishing Attack Framework

**Man-in-the-middle phishing framework for credential and session token harvesting.**

Nero is a phishing campaign capability that achieves feature parity with Evilginx2, implementing reverse proxy-based credential harvesting with real-time 2FA/MFA bypass through session cookie capture.

**Key Features:**
- Reverse proxy phishing engine for MitM attacks
- Phishlet system with YAML-based target templates
- Real-time session and credential harvesting
- 2FA/MFA bypass through session cookie capture
- Campaign management with lures, tracking, and analytics
- Infrastructure automation (DNS, TLS, deployment)
- Bot detection and evasion capabilities
- GoPhish integration for campaign management

[Documentation](./modules/nero)

---

### Trajan - CI/CD Attack Framework 

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

## Supporting Tools

Shared libraries and templates that power our security capabilities.

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

### Nuclei Templates - Custom Vulnerability Templates

**Internal version of Nuclei templates with custom detections.**

A curated collection of Nuclei templates including internal templates and customizations for Praetorian's security testing workflows.

**Key Features:**
- Custom vulnerability templates
- Internal detection rules
- Praetorian-specific checks

[Documentation](./modules/nuclei-templates)

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
