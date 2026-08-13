{ ... }:

{
  programs.gamemode.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  services.scx = {
    enable = true;
    scheduler = "scx_bpfland";
  };
}
