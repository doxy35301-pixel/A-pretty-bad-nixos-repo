{ ... }:

{
  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "uk_UA.UTF-8";

  console.keyMap = "ua-utf";
  services.xserver.xkb = { layout = "us,ua"; variant = ""; };
}
