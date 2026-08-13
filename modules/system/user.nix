{ pkgs, ... }:

{
  users.users.doxy = {
    isNormalUser = true;
    description = "doxy";
    extraGroups = [ "networkmanager" "wheel" "gamemode" ];
    shell = pkgs.oksh;
  };

  environment.shells = [ pkgs.oksh ];
}
