#!/bin/sh
nix-shell --pure release.nix --run "/root/.nix-profile/bin/hie-wrapper"