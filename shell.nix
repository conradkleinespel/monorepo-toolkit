let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      rustup
      pkg-config
      openssl
      libgit2
      zlib
    ];

    shellHook = ''
      rustup default stable
      rustup component add rust-src
    '';
  }
