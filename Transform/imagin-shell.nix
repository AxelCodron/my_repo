# This imports the nix package collection,
# so we can access the `pkgs` and `stdenv` variables
with import <nixpkgs> {};
 
# Make a new "derivation" that represents our shell
stdenv.mkDerivation {
  name = "my-environment";
 
  # The packages in the `buildInputs` list will be added to the PATH in our shell
  buildInputs = [
    # see https://nixos.org/nixos/packages.html to search for more packages
    pkgs.python39Packages.jupyter
#    pkgs.python39Packages.jupyterlab-widgets
    pkgs.python39Packages.widgetsnbextension
    pkgs.python39Packages.ipywidgets
    pkgs.python39Packages.scikitimage
    pkgs.python39Packages.matplotlib
    pkgs.python39Packages.numpy
#    pkgs.python39Packages.opencv4
    pkgs.python39Packages.scikit-learn  # Just in case
  ];
}
