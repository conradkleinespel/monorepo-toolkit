let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      cargo
      rustc
      pkg-config
      openssl
      libgit2
      zlib
    ];

    shellHook = ''
      export RUST_LOG=info
    '';
  }
