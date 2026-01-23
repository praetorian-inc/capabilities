# Private Tools (Internal Only)

**This document is for internal Praetorian use only. These tools are NOT public.**

## Internal Setup

To initialize all submodules including private ones:

```bash
git clone git@github.com:praetorian-inc/capabilities.git
cd capabilities
make setup-internal
```

This requires SSH access to the praetorian-inc organization.

---

## 🔍 Trajan - CI/CD Security Scanner

**Secure your CI/CD pipelines before attackers exploit them.**

Trajan is a comprehensive security scanner for GitHub Actions and CI/CD pipelines. It analyzes workflow configurations, detects misconfigurations, and identifies potential attack vectors.

**Key Features:**
- 15+ vulnerability detectors for GitHub Actions
- 7 attack plugins for exploitation validation
- SARIF output for GitHub Security integration
- Organization-wide scanning capabilities

**Location:** `modules/trajan`

---

## 👑 Augustus - LLM Security Testing Framework

**Detect prompt injection, jailbreaks, and adversarial attacks against LLMs.**

Augustus is a comprehensive LLM security testing framework with 46+ probes and support for 19 providers, packaged as a single Go binary.

**Location:** `modules/augustus`

---

## 🏛️ Brutus - Credential Testing Tool

**Fast, zero-dependency credential testing in Go.**

Brutus is a high-performance brute force tool supporting SSH, MySQL, PostgreSQL, Redis, MongoDB, SMB, and 20+ protocols. A modern Hydra alternative with native fingerprintx/naabu pipeline integration.

**Location:** `modules/brutus`

---

## 🛠️ Capability SDK - Go Development Kit

**Go SDK for building security capabilities.**

A standardized SDK providing common types, formatters, and utilities for building security tools that integrate with the Chariot platform.

**Location:** `modules/capability-sdk`

---

## ☁️ Diocletian - Cloud Security Assessment

**Comprehensive cloud security assessment tool.**

Diocletian provides cloud security assessment capabilities for identifying misconfigurations and security issues across cloud environments.

**Location:** `modules/diocletian`

---

## 🔑 Nero - Default Credential Scanner

**Scan for default and weak credentials across multiple protocols.**

Nero is a default credential scanner with a plugin architecture supporting multiple protocols, designed to identify systems using factory-default or commonly-used credentials.

**Location:** `modules/nero`

---

## 🔐 NoseyParker++ - Enhanced Secret Scanner

**Enhanced secret scanning with additional detection rules.**

Extended version of NoseyParker with proprietary detection capabilities.

**Location:** `modules/noseyparkerplusplus`

---

## 🛡️ Nuclei Templates - Vulnerability Detection

**Praetorian's custom Nuclei templates for vulnerability detection.**

Custom vulnerability detection templates developed by Praetorian security researchers.

**Location:** `modules/nuclei-templates`

---

## Security Notice

These tools are proprietary and confidential. Do not share access or documentation externally.
