## Dockerfile for a haskell environment
FROM nixos/nix

# Use Cachix to avoid compilation
RUN nix-env -iA cachix -f https://cachix.org/api/v1/install 2>&1
RUN cachix use all-hies

# Install hasekll ide engine 8.6.5
RUN nix-env -iA selection --arg selector 'p: { inherit (p) ghc865; }' -f https://github.com/infinisil/all-hies/tarball/master

# Set the default shell to ash
ENV SHELL /bin/ash