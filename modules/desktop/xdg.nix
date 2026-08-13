{ ... }:

{
  xdg.portal = {
    enable = true;
    config.common.default = "*";
  };

  services.power-profiles-daemon.enable = true;
}
