{ pkgs, ... }:

{
  nix.package = pkgs.lix;
  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
    allowed-users = [ "root" "@wheel" ];
  };
  nix.extraOptions = ''
    !include /etc/nix/access-tokens.conf
  '';
  nixpkgs.config.allowUnfree = true;
  chaotic.nyx.cache.enable = true;
}
