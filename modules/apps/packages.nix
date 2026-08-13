{ pkgs, ... }:

{
  services.flatpak = {
    enable = true;
    uninstallUnmanaged = true;

    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];

    packages = [
      { appId = "org.vinegarhq.Sober"; origin = "flathub"; }
    ];
  };

  environment.systemPackages = with pkgs; [
    telegram-desktop vlc qbittorrent
    prismlauncher protonplus kid3
    git curl wget kdotool sassc
    fastfetch imagemagick ffmpeg mesa-demos cpu-x
  ];
}
