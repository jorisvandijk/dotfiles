{ pkgs, ... }:
{
  programs.librewolf = {
    enable = true;
    policies = {
      "3rdparty" = {
        Extensions = {
          "uBlock0@raymondhill.net" = {
            toOverwrite = {
              filters = [
                "! === Kill Google login prompts ==="
                "||accounts.google.com/gsi/iframe/*"
                ""
                "! === Kill homepage feed ==="
                "www.youtube.com##ytd-browse[page-subtype=\"home\"] #contents"
                "www.youtube.com##ytd-browse[page-subtype=\"home\"] ytd-rich-grid-renderer"
                ""
                "! === Kill left sidebar ==="
                "www.youtube.com##ytd-guide-renderer"
                "www.youtube.com##tp-yt-app-drawer"
                "www.youtube.com##ytd-mini-guide-renderer"
                ""
                "! === Kill sign in ==="
                "www.youtube.com##ytd-button-renderer:has-text(Sign in)"
                ""
                "! === Kill voice search ==="
                "www.youtube.com###voice-search-button"
                ""
                "! === Kill hamburger menu ==="
                "www.youtube.com###masthead #guide-button"
                ""
                "! === Kill right three-dot menu ==="
                "www.youtube.com###masthead #button"
                ""
                "! === Kill video suggestions pane ==="
                "www.youtube.com##ytd-watch-next-secondary-results-renderer"
                ""
                "! === Kill startpage ad nag ==="
                "www.startpage.com##.css-13k8eon"
                ""
              ];
            };
            userSettings = [
              [ "userFiltersTrusted" "true" ]
            ];
          };
        };
      };
      SearchEngines = {
        Default = "Startpage";
        Add = [{
          Name = "Startpage";
          URLTemplate = "https://www.startpage.com/search?q={searchTerms}";
          Method = "GET";
          IconURL = "https://www.startpage.com/favicon.ico";
        }];
      };
    };
    profiles.default = {
      isDefault = true;
      extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
        istilldontcareaboutcookies
        sponsorblock
        ublock-origin
      ];
      bookmarks = {
        force = true;
        settings = [
          {
            name = "Homelab";
            url = "https://jorisvandijk.github.io/startpage/";
          }
          {
            name = "jorisvandijk.com";
            url = "https://jorisvandijk.com";
          }
        ];
      };
      search = {
        default = "Startpage";
        force = true;
        engines = {
          "Startpage" = {
            urls = [{
              template = "https://www.startpage.com/search";
              params = [{ name = "q"; value = "{searchTerms}"; }];
            }];
            icon = "https://www.startpage.com/favicon.ico";
            definedAliases = [ "@sp" ];
          };
        };
      };
      settings = {
        "extensions.autoDisableScopes" = 0;
        "accessibility.typeaheadfind.flashBar" = 0;
        "browser.backspace_action" = 0;
        "browser.toolbars.bookmarks.visibility" = "never";
        "browser.translations.neverTranslateLanguages" = "nl";
        "browser.urlbar.shortcuts.actions" = false;
        "browser.urlbar.shortcuts.tabs" = false;
        "browser.urlbar.suggest.engines" = false;
        "browser.urlbar.suggest.quickactions" = false;
        "browser.urlbar.suggest.topsites" = false;
        "layout.css.prefers-color-scheme.content-override" = 0;
        "privacy.resistFingerprinting" = false;
        "privacy.sanitize.sanitizeOnShutdown" = false;
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
        "browser.uiCustomization.state" = builtins.toJSON {
          placements = {
            "nav-bar" = [
              "back-button"
              "forward-button"
              "stop-reload-button"
              "spring"
              "urlbar-container"
              "spring"
              "unified-extensions-button"
              "PanelUI-button"
            ];
            "unified-extensions-area" = [
              "ublock0_raymondhill_net-browser-action"
              "sponsorblocker_ajay_app-browser-action"
              "idcac-pub_guus_ninja-browser-action"
            ];
            "PersonalToolbar" = [ "personal-bookmarks" ];
            "TabsToolbar" = [];
            "toolbar-menubar" = [ "menubar-items" ];
            "widget-overflow-fixed-list" = [];
          };
          seen = [
            "ublock0_raymondhill_net-browser-action"
            "sponsorblocker_ajay_app-browser-action"
            "idcac-pub_guus_ninja-browser-action"
            "developer-button"
          ];
          dirtyAreaCache = [ "nav-bar" "unified-extensions-area" ];
          currentVersion = 20;
          newElementCount = 0;
        };
      };
      userChrome = ''
        #tabs-newtab-button,
        .tabs-newtab-button,
        #TabsToolbar .new-tab-button,
        #vertical-tabs .new-tab-button,
        #sidebar-main .new-tab-button,
        #vertical-tabs-newtab-button,
        [data-l10n-id="tabs-toolbar-new-tab"],
        [data-l10n-id="newtab-button-label"],
        .tabbrowser-arrowscrollbox-periphery,
        #alltabs-button {
          display: none !important;
        }

      '';
    };
  };
}
