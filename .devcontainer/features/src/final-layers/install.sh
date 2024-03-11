#!/usr/bin/env bash
set -eEo pipefail

echo "Clean up after naughty installers that came before us"
# Python feature creates /home/vscode/.local/share/main as root!
chown -R 1000:1000 "/home/vscode/.local"

# Enable completions and integrations for various tools
echo "Eanble tool completions in .zshrc"
# shellcheck disable=SC2129,SC2016
echo 'eval "$(atuin init zsh)"' >> "${HOME}/.zshrc"
# shellcheck disable=SC2129,SC2016
echo 'eval "$(starship init zsh)"' >> "${HOME}/.zshrc"
# shellcheck disable=SC2129,SC2016
echo 'eval "$(thefuck --alias)"' >> "${HOME}/.zshrc"

# Install markdownlint-cli2
#   N.B. DavidAnson has created this cli2 variant
npm install -g markdownlint-cli2
chown -R 1000:1000 "/home/vscode/.npm"

# Install docusaurus for node-y doc sites
npm install -g docusaurus

# Configure git to use delta
cat << 🐞 >> "${HOME}/.gitconfig"
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true    # use n and N to move between diff sections
    light = false      # set to true if you're in a terminal w/ a light background color

[merge]
    conflictstyle = diff3

[diff]
    colorMoved = default
🐞

# Install git-codereview for golang stuff
sudo -u vscode /usr/local/go/bin/go install golang.org/x/review/git-codereview@latest