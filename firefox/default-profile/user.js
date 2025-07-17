// GENERAL SETTINGS
user_pref("sidebar.verticalTabs", true);
user_pref("media.eme.enabled", true);
user_pref("media.gmp-widevinecdm.enabled", true);

// HOME PAGE SETTINGS
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.startup.homepage", "about:blank");
user_pref("browser.newtabpage.activity-stream.showTopSites", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", false);

// SEARCH SETTINGS
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.shortcuts.tabs", false);
user_pref("browser.urlbar.shortcuts.bookmarks", false);
user_pref("browser.urlbar.shortcuts.history", false);

// TELEMETRY SETTINGS
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.healthreport.service.enabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("app.normandy.enabled", false);
user_pref("experiments.supported", false);
user_pref("experiments.enabled", false);
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);

// ESSENTIAL FOR WEBSITE FUNCTIONALITY
user_pref("network.connectivity-service.enabled", true);
user_pref("network.captive-portal-service.enabled", true);
user_pref("network.dns.disabled", false);
user_pref("network.dns.disablePrefetch", false);
user_pref("network.http.use-cache", true);
user_pref("javascript.enabled", true);
user_pref("browser.cache.disk.enable", true);
user_pref("browser.cache.memory.enable", true);
user_pref("browser.cache.offline.enable", true);

// NETWORK SETTINGS
user_pref("network.http.max-connections", 256);
user_pref("network.http.max-connections-per-server", 15);
user_pref("network.http.http2.ping-threshold", 58000);
user_pref("network.http.http2.ping-timeout", 8000);
user_pref("network.cookie.cookieBehavior", 1);

// SAFE BROWSING
user_pref("browser.safebrowsing.downloads.remote.enabled", true);
user_pref("browser.safebrowsing.malware.enabled", true);
user_pref("browser.safebrowsing.phishing.enabled", true);
user_pref("extensions.blocklist.enabled", true);

// EXTENSION SETTINGS
user_pref("extensions.autoDisableScopes", 0);
user_pref("extensions.enabledScopes", 15);
user_pref("extensions.startupScanScopes", 15);
user_pref("extensions.unifiedExtensions.enabled", true);

// DISABLE WELCOME PAGES
user_pref("browser.aboutwelcome.enabled", false);
user_pref("browser.startup.firstrunSkipsHomepage", true);
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("browser.startup.homepage_override.buildID", "ignore");
user_pref("startup.homepage_welcome_url", "");
user_pref("startup.homepage_welcome_url.additional", "");
user_pref("startup.homepage_override_url", "");
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);

// SESSION AND STARTUP
user_pref("browser.startup.page", 0);
user_pref("browser.sessionstore.resume_from_crash", true);
user_pref("browser.shell.checkDefaultBrowser", false);

// UI CUSTOMIZATION
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("identity.fxaccounts.toolbar.enabled", false);
user_pref("extensions.pocket.enabled", false);
user_pref("identity.fxaccounts.enabled", false);
user_pref("layout.css.devPixelsPerPx", 2.2);

// PRIVACY SETTINGS
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.pbmode.enabled", true);
user_pref("browser.contentblocking.category", "strict");
user_pref("signon.rememberSignons", false);
user_pref("signon.autofillForms", false);
user_pref("signon.generation.enabled", false);

// ADDITIONAL BEHAVIOR
user_pref("browser.tabs.closeWindowWithLastTab", false);
user_pref("browser.backspace_action", 0);

// ESSENTIAL TELEMETRY SHUTDOWN
user_pref("toolkit.telemetry.dailyPI.enabled", false);
user_pref("toolkit.telemetry.daily.enabled", false);
user_pref("browser.usage.enabled", false);
user_pref("browser.usageStatistics.enabled", false);

// SESSION RESTORE
user_pref("browser.sessionstore.restore_on_demand", true);
user_pref("browser.sessionstore.restore_tabs_lazily", true);

// UI CUSTOMIZATION STATE
user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"ublock0_raymondhill_net-browser-action\",\"sponsorblocker_ajay_app-browser-action\",\"_446900e4-71c2-419f-a6a7-df9c091e268b_-browser-action\",\"clearurls_kevinr_io-browser-action\",\"jid1-kkzogwgsw3ao4q_jetpack-browser-action\",\"_20fc2e06-e3e4-4b2b-812b-ab431220cada_-browser-action\"],\"nav-bar\":[\"back-button\",\"forward-button\",\"stop-reload-button\",\"customizableui-special-spring1\",\"urlbar-container\",\"customizableui-special-spring1\",\"downloads-button\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"tabbrowser-tabs\"],\"PersonalToolbar\":[\"import-button\",\"personal-bookmarks\"]},\"seen\":[\"save-to-pocket-button\",\"developer-button\",\"ublock0_raymondhill_net-browser-action\",\"sponsorblocker_ajay_app-browser-action\",\"_446900e4-71c2-419f-a6a7-df9c091e268b_-browser-action\",\"clearurls_kevinr_io-browser-action\",\"jid1-kkzogwgsw3ao4q_jetpack-browser-action\",\"_20fc2e06-e3e4-4b2b-812b-ab431220cada_-browser-action\",\"firefox-view-button\",\"new-tab-button\",\"alltabs-button\"],\"dirtyAreaCache\":[\"nav-bar\",\"unified-extensions-area\",\"toolbar-menubar\",\"TabsToolbar\",\"PersonalToolbar\"],\"currentVersion\":20,\"newElementCount\":8}");
