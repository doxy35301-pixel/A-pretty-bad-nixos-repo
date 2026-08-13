{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  networking.networkmanager.dns = "systemd-resolved";
  networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 25565 ];
    allowedUDPPortRanges = [ { from = 45000; to = 65535; } ];
  };

  services.resolved = {
    enable = true;
    settings.Resolve = { DNSOverTLS = "opportunistic"; DNSSEC = "false"; };
  };
}
