# HermesStack

Portable AI Workstation for Android, Termux, Ubuntu, and Low-Cost Hardware.

## Vision

HermesStack aims to provide a portable AI workstation capable of running:

* Hermes Agent
* FreeLLMAPI
* Hermes WebUI
* MCP Servers
* Automation Workflows
* Monitoring Tools
* Local Models (optional)

on resource-constrained hardware such as Android phones, laptops, mini PCs, and cloud servers.

## Current Status

### v0.1.0

Completed:

* Ubuntu running in Termux via proot-distro
* Node.js environment configured
* FreeLLMAPI successfully deployed
* GitHub repository initialized
* UV-based Python environment created

Planned:

* Hermes Agent integration
* Hermes WebUI integration
* MCP server collection
* Unified startup scripts
* Monitoring stack
* Automated installer

## Project Structure

```text
HermesStack/
├── apps/
├── mcp/
├── scripts/
├── environments/
├── workspace/
├── monitoring/
├── automation/
├── models/
└── backups/
```

## Goals

* Low-cost AI workstation
* API-first architecture
* Portable deployment
* Reproducible environments
* Community-friendly setup
* Open-source tooling

## Installation Guide

```Bash
git clone --recursive git@github.com:Hardik-Sankhla/HermesStack.git

cd HermesStack

./scripts/install.sh

./scripts/start.sh
```
