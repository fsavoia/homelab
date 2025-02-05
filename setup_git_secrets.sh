#!/bin/bash

# Function to print colored messages
print_color() {
    case $1 in
        "green") color="\033[0;32m" ;;
        "yellow") color="\033[0;33m" ;;
        "red") color="\033[0;31m" ;;
        *) color="\033[0m" ;;
    esac
    echo -e "${color}$2\033[0m"
}

# Install git-secrets
if ! command -v git-secrets &> /dev/null
then
    print_color "yellow" "git-secrets not found, installing..."
    if [ "$(uname)" = "Darwin" ]; then
        brew install git-secrets
    elif [ "$(uname)" = "Linux" ]; then
        sudo apt-get update
        sudo apt-get install -y git make
        git clone https://github.com/awslabs/git-secrets.git
        cd git-secrets
        sudo make install
        cd ..
        sudo rm -rf git-secrets
    fi
else
    print_color "green" "git-secrets is already installed."
fi

# Configure git-secrets
print_color "yellow" "Configuring git-secrets..."
git secrets --install
git secrets --register-aws
git secrets --install -f

print_color "green" "git-secrets configuration completed!"