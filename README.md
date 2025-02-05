[![infra_backend_validation](https://github.com/fsavoia/homelab/actions/workflows/infra_backend-check.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/infra_backend-check.yml)
[![infra_backend_deploy](https://github.com/fsavoia/homelab/actions/workflows/infra_backend-deploy.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/infra_backend-deploy.yml)
[![kubernetes_validation](https://github.com/fsavoia/homelab/actions/workflows/kubernetes-check.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/kubernetes-check.yml)
[![kubernetes_deploy](https://github.com/fsavoia/homelab/actions/workflows/kubernetes-deploy.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/kubernetes-deploy.yml)
[![budget_validation](https://github.com/fsavoia/homelab/actions/workflows/budget-check.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/budget-check.yml)
[![budget_deploy](https://github.com/fsavoia/homelab/actions/workflows/budget-deploy.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/budget-deploy.yml)
[![Check Secrets](https://github.com/fsavoia/homelab/actions/workflows/check_secrets.yml/badge.svg)](https://github.com/fsavoia/homelab/actions/workflows/check_secrets.yml)

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

