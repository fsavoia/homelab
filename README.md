[![Backend_Infra_Apply](https://github.com/fsavoia/homelab/actions/workflows/infra_backend-apply.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/infra_backend-apply.yml)
[![Budget_Alert_Apply](https://github.com/fsavoia/homelab/actions/workflows/budget_alert-apply.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/budget_alert-apply.yml)
[![Kubernetes_Apply](https://github.com/fsavoia/homelab/actions/workflows/kubernetes-apply.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/kubernetes-apply.yml)
[![Check_Secrets](https://github.com/fsavoia/homelab/actions/workflows/check_secrets.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/check_secrets.yml)

# Homelab

This repository contains the code to create my homelab and cloud lab environments.

## Git-Secrets Configuration

### Importance

`git-secrets` is an essential tool to ensure that sensitive information, such as passwords and API keys, are not accidentally included in the Git repository. It scans commits and Git hooks to detect patterns that match known secrets and prevents these secrets from being added to the repository.

### How to Configure

To ensure that all developers have `git-secrets` installed and configured correctly, follow the steps below:

1. **Clone the repository**:
   ```bash
   git clone <repository_url>
   cd <repository_name>

1. **Run the setup script**:
   ```bash
   ./setup_git_secrets.sh


### Pipeline

The pipeline is configured to run the `git-secrets` scan before the build process. If any secrets are detected, the pipeline will fail, and the developer will need to remove the secrets before the pipeline can be run successfully.

## Contributing

If you want to contribute to this project, please read the [CONTRIBUTING.md](CONTRIBUTING.md) file.

