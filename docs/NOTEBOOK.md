# Notebook

## MacOS

Topics for working on MacOS with devcontainers and vscode.

### MacOS VSCode GPG Setup

NOTE: the with combination of rancher-desktop, vscode, devcontainers and the Mac Host, this doesn't
appear to be enough.

On host:

```sh
brew install gpg2 gnupg pinentry-mac
mkdir -p ~/.gnupg
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
echo "use-agent" >> ~/.gnupg/gpg.conf
echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile # replace with ~/.zprofile if using ZSH
```
