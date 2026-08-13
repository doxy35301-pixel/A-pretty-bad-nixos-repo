{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    nativeMessagingHosts.packages = [ pkgs.kdePackages.plasma-browser-integration ];

    preferences = {
      # Hardware Video Decoding & Graphics Acceleration
      "media.ffmpeg.vaapi.enabled" = true;
      "media.hardware-video-decoding.force-enabled" = true;
      "dom.webgpu.enabled" = true;
      "gfx.webgpu.ignore-blocklist" = true;
      "gfx.webrender.compositor" = true;
      "gfx.webrender.super-resolution.nvidia" = true;
      "image.mem.decode_on_draw.enabled" = true;
      "layers.acceleration.force-enabled" = true;

      # AI & Machine Learning Disables
      "browser.ai.control.default" = "blocked";
      "browser.ai.control.linkPreviewKeyPoints" = "blocked";
      "browser.ai.control.pdfjsAltText" = "blocked";
      "browser.ai.control.sidebarChatbot" = "blocked";
      "browser.ai.control.smartTabGroups" = "blocked";
      "browser.ai.control.translations" = "blocked";
      "browser.ml.chat.enabled" = false;
      "browser.ml.chat.page" = false;
      "browser.ml.linkPreview.enabled" = false;
      "extensions.ml.enabled" = false;

      # Privacy & Telemetry
      "browser.contentblocking.category" = "custom";
      "datareporting.healthreport.uploadEnabled" = false;
      "datareporting.usage.uploadEnabled" = false;
      "privacy.fingerprintingProtection" = true;
      "privacy.globalprivacycontrol.enabled" = true;
      "privacy.trackingprotection.emailtracking.enabled" = true;
      "privacy.trackingprotection.enabled" = true;
      "privacy.trackingprotection.socialtracking.enabled" = true;

      # Network & Prefetch
      "network.dns.disablePrefetch" = true;
      "network.http.speculative-parallel-limit" = 0;
      "network.prefetch-next" = false;

      # UI & Session Behavior
      "browser.bookmarks.showMobileBookmarks" = false;
      "browser.disableResetPrompt" = true;
      "browser.newtabpage.activity-stream.newtabWallpapers.wallpaper" = "black-waves";
      "browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;
      "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
      "browser.startup.page" = 3; # Restore previous session
      "browser.tabs.groups.smart.enabled" = false;
      "browser.tabs.groups.smart.userEnabled" = false;
      "browser.toolbars.bookmarks.visibility" = "never";
      "browser.translations.enable" = false;
      "pdfjs.enableAltText" = false;
      "sidebar.visibility" = "hide-sidebar";
    };

    policies = {
      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
      };
    };
  };
}
