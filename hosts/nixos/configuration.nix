{ lib, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ] ++ (
    builtins.filter
      (path: lib.hasSuffix ".nix" (builtins.toString path))
      (lib.filesystem.listFilesRecursive ../../modules)
  );

  documentation.enable = false;
  system.stateVersion = "25.11";
}
