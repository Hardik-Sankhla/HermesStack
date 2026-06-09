# HermesStack on Termux

## Clone Repository

```bash
git clone --recursive git@github.com:Hardik-Sankhla/HermesStack.git

cd HermesStack
```

## Fix Script Permissions (Recommended)

Run once after cloning:

```bash
chmod +x scripts/*.sh
```

Verify:

```bash
ls -l scripts
```

You should see:

```text
-rwxr-xr-x install.sh
-rwxr-xr-x start.sh
-rwxr-xr-x stop.sh
-rwxr-xr-x update.sh
```

## Installation

```bash
./scripts/install.sh
```

## Start

```bash
./scripts/start.sh
```

## Stop

```bash
./scripts/stop.sh
```

## Update

```bash
./scripts/update.sh
```

## Hermes Agent

Hermes Agent is installed using the official Nous Research installer.

HermesStack intentionally delegates Hermes installation to upstream installers so that Android, Linux, and future dependency fixes remain maintained by the Hermes project.

Current tested version:

```text
Hermes Agent v0.15.1
```
