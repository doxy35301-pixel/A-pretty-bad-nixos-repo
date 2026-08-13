{ ... }:

{
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/9dc3cb52-8c76-46e9-921e-9e40e5c31395";
    fsType = "ext4";
    options = [ "noatime" ];
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/4961-87CA";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
    noCheck = true;
  };

  fileSystems."/mnt/games" = {
    device = "/dev/disk/by-uuid/6d05d176-d80f-48ca-86f3-06718976b54c";
    fsType = "ext4";
    options = [ "nofail" "noatime" ];
  };

  zramSwap.enable = false;
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 8192;
      options = [ "defaults" ];
    }
  ];

  services.fstrim.enable = true;

  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep-since 4d --keep 3";
    };
    flake = "/etc/nixos";
  };
}
