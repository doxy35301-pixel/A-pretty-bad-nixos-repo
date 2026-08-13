{ ... }:

{
  services.envfs.enable = true;
  services.earlyoom = {
    enable = true;
    freeMemThreshold = 5;
  };

  systemd.services = {
    NetworkManager-wait-online.enable = false;
    ModemManager.enable = false;
    systemd-userdbd.enable = false;
    systemd-oomd.enable = false;
    systemd-firstboot.enable = false;
  };
}
