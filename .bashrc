#!/bin/bash

# Add nix to PATH if not already there
NIX_LINE='[ -e ~/.nix-profile/etc/profile.d/nix.sh ] && . ~/.nix-profile/etc/profile.d/nix.sh'

if ! grep -qF 'nix-profile/etc/profile.d/nix.sh' ~/.bashrc; then
  echo "$NIX_LINE" >> ~/.bashrc
fi
