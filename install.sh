#!/usr/bin/env bash
curl -fsSL https://nixos.org/nix/install | sh -s -- --no-daemon
NIX_LINE='[ -e ~/.nix-profile/etc/profile.d/nix.sh ] && . ~/.nix-profile/etc/profile.d/nix.sh'

# Create .bashrc if it doesn't exist, then append nix sourcing if not already there
touch ~/.bashrc

if ! grep -qF 'nix-profile/etc/profile.d/nix.sh' ~/.bashrc; then
  echo "$NIX_LINE" >> ~/.bashrc
fi

mkdir -p ~/.config/nix && echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
