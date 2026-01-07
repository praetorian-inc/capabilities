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

## 🏛️ Nero - Internal Security Tool

**Internal security capabilities.**

**Location:** `modules/nero`

---

## 👑 Augustus - Internal Security Tool

**Internal security capabilities.**

**Location:** `modules/augustus`

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
