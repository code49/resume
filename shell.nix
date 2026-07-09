{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-medium
        titlesec
        enumitem
        fontawesome5
        eso-pic
        bookmark
        changepage
        paracol
        needspace
        charter
        latexmk;
    })
    pkgs.poppler-utils
  ];
}
