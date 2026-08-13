{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.symlinkJoin {
      name = "vesktop";
      paths = [ pkgs.vesktop ];
      nativeBuildInputs = [ pkgs.makeWrapper ];
      postBuild = ''
        wrapProgram $out/bin/vesktop \
          --add-flags "--ozone-platform-hint=wayland" \
          --add-flags "--enable-features=UseOzonePlatform,WaylandWindowDecorations,AcceleratedVideoDecodeLinuxZeroCopyGL" \
          --add-flags "--disable-features=AcceleratedVideoDecodeLinuxGL"
      '';
    })
  ];
}
