# Notebook

## Installs

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

### MacOS XQuartz and X11

Install the brew cask.

```sh
brew install --cask xquartz
```

Logout/login after installation.

Then launch XQuartz and configure security settings to allow localhost connections.

```sh
open -a XQuartz
```

Update security settings: `XQuartz → Settings → Security(tab) → Allow connections from network clients`

```sh
xhost +localhost
xhost +127.0.0.1
```

Ensure devcontainer is configured with the correct DISPLAY variable for your host.

```json
{
    "name": "my_docker_environment",
    "dockerFile": "Dockerfile",
    "extensions": [
        "ms-vscode.cpptools",
        "twxs.cmake",
        "eamodio.gitlens",
        "ms-vscode.cmake-tools"
    ],
    "containerEnv": {
        // "DISPLAY": "unix:0",
        // "DISPLAY": "host.docker.internal:0",
        "DISPLAY": "host.lima.internal:0",
    },
    "runArgs": ["--privileged"]
}
```

In the devcontainer, test your setup with xeyes.

```sh
sudo apt install x11-apps
xeyes
```
