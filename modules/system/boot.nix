{ pkgs, lib, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_cachyos-lto;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = lib.mkForce false;

  boot.lanzaboote = {
    enable = true;
    pkiBundle = "/var/lib/sbctl";
    autoGenerateKeys.enable = true;
    autoEnrollKeys.enable = true;
  };

  boot.initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];

  boot.kernelParams = [
    "clocksource=tsc"
    "nvidia_drm.fbdev=1"
    "nvidia.NVreg_PreserveVideoMemoryAllocations=1"
    "zswap.enabled=1"
    "zswap.compressor=zstd"
    "zswap.zpool=zsmalloc"
    "zswap.max_pool_percent=20"
    "transparent_hugepage=madvise"
    "nosgx"
    "preempt=full"
    "systemd.show_status=true"
    "rd.udev.log_level=info"
    "8250.nr_uarts=0"
  ];

  boot.blacklistedKernelModules = [
    "dccp" "sctp" "rds" "tipc" "cramfs" "freevxfs"
    "jffs2" "hfs" "hfsplus" "intel_oc_wdt" "ip6_tunnel" "tunnel6"
  ];
}
