let
  pkgs = import <nixpkgs> {};
in pkgs.stdenv.mkDerivation {
  name = "latex-env";
  buildInputs = with pkgs; [ (texlive.combine { inherit (texlive) scheme-small enumitem latexmk tocbibind; }) ];
}
