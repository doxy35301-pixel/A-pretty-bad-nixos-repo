{ pkgs, ... }:

{
  security.doas = {
    enable = true;
    extraRules = [{ users = [ "doxy" ]; keepEnv = true; persist = true; }];
  };
  security.sudo.enable = false;

  security.rtkit.enable = true;
  security.pam.loginLimits = [
    { domain = "@wheel"; item = "rtprio"; type = "-"; value = "99"; }
  ];

  environment.shellAliases = { sudo = "doas"; };
}
