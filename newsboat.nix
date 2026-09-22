{ ... }:
{
  programs.newsboat = {
    enable = true;
    autoReload = true;
    reloadTime = 60;
    reloadThreads = 10;
    browser = "\"open -a 'LibreWolf' %u\"";
    extraConfig = ''
      reload-only-visible-feeds no
      refresh-on-startup yes
      download-path "~/Downloads/newsboat/%n"
      max-downloads 4
      articlelist-format "%4i %f %D  %?T?|%-17T| ?%t"
      feedlist-format "%4i %n %11u %t"
      datetime-format "%b %d"
      feed-sort-order lastupdated
      bind-key j down
      bind-key k up
      bind-key J next-feed articlelist
      bind-key K prev-feed articlelist
      bind-key G end
      bind-key g home
      bind-key l open
      bind-key h quit
      show-read-feeds yes
      show-read-articles yes
      ignore-article "*" "link =~ \"/shorts/\""
      cleanup-on-quit yes
      confirm-exit no
      notify-program "terminal-notifier -title 'Newsboat' -message"
      notify-always yes
      notify-screen yes
    '';
    urls = [
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCqVEHtQoXHmUCfJ-9smpTSg"; title = "Answer in progress"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCJaD75W6cXF6KIBYM2Lshrw"; title = "Archifemme"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCVXEi6C_EdjqBUwLn9I804A"; title = "Aroundsquare"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCc9CjaAjsMMvaSghZB7-Kog"; title = "BeardMeatsFood"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCHs596idK1P0-wJZQSlk-Uw"; title = "Benita Larsson"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCK5R1BsMtGd4DtI5uGQRHIg"; title = "Best Damn EDC"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCTGHqw41qk_WyK3wJK7nweg"; title = "Brickcrafts"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCld68syR8Wi-GY_n4CaoJGA"; title = "Brodie Robertson"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCNZRaw6JTQLdyW9PNBPGZPw"; title = "Chris' Redhots"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCZNhwA1B5YqiY1nLzmM0ZRg"; title = "Christian Lempa"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCaSCt8s_4nfkRglWCvNSDrg"; title = "Code Aesthetic"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCpZHSdA35z3t1B6alZN1Z6Q"; title = "ContuberniumSPQR"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCdC0An4ZPNr_YiFiYoVbwaw"; title = "Daily Dose Of Internet"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCje6-Yak9u1msy5l7sE9pBA"; title = "Deconstructed"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCUQo7nzH1sXVpzL92VesANw"; title = "DIY Perks"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC0hPh-s57PdU215UJglALCw"; title = "Dr Insanity"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCnkXznqC7UlItjWu5nldTJQ"; title = "Ella Aafjes"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCDqjlCe_lt1les5qe-Kd0xQ"; title = "Em's Wild World"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCODHrzPMGbNv67e84WDZhQQ"; title = "fern"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCPD_bxCRGpmmeQcbe2kpPaA"; title = "First We Feast"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC2WHjPDvbE6O328n17ZGcfg"; title = "ForrestKnight"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC226u9zaUA5HT-TSiWHmiaQ"; title = "GanshirtArt"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCXgzOrkgJO9lvu9MAFWO39g"; title = "Granny Flat"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC08v9RkBLemtA4Y68LO9vUw"; title = "HaggisonToast"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCLqQ5m7AXj_oyUvLZPsts0Q"; title = "Hands On Katie"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCFQ4mhb74S_BRVY19fAPciw"; title = "Historic Alley"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCii9ezsUa_mBiSdw0PtSOaw"; title = "Hoog"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCczAxLCL79gHXKYaEc9k-ZQ"; title = "IMPERIAL"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCZXvtZFMfY9Urftv6m22_5Q"; title = "Imperium Romanum"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCbsfyGlrjrKQC0gbzK0-EiA"; title = "Jared Owen"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC-lOss13v6QhqkO9yfNVJEw"; title = "Jon Gadget"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCsuex3xS_UrEKqweowEbd_w"; title = "Josh Makeshift"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCsXVk37bltHxD1rDPwtNM8Q"; title = "Kurzgesagt – In a Nutshell"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC3XTzVzaHQEd30rQbuvCtTQ"; title = "LastWeekTonight"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCHqDTfIX-0DGaHlWvv6JZCw"; title = "Lateral with Tom Scott"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCx6yJsJ8qmJu7ja-hTQglRA"; title = "Layer Lab"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC5j4uME6bkiarQsWfRA3hng"; title = "Leighann Creates"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCn7xknPbWDjGQCzBLhtubiA"; title = "LUBACH"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCJ24N4O0bP7LGLBDvye7oCA"; title = "Matt D'Avella"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCZcBeMQLxvjhsW3PEYXuiAA"; title = "Memeable Data"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UChyJSVq_rJuxGi0wAfSTBvg"; title = "Midwest Safety"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCMrMVIBtqFW6O0-MWq26gqw"; title = "my mechanics"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCbHjx1o7A8eeGqQjPbfsWGA"; title = "Mujin Makes"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCvrLvII5oxSWEMEkszrxXEA"; title = "N-O-D-E"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCJT5qwrkkSp_bSs5NEwcDiA"; title = "Nate Martsolf"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCtYKe7-XbaDjpUwcU5x0bLg"; title = "neo"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCq8ZAAsI89IoJ-fn1gYpO3g"; title = "Nighshift"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC0intLFzLaudFG-xAvUEO-A"; title = "Not Just Bikes"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCyuj5evMBVwyGrqfoKegmBw"; title = "ODS"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCEEYC7-n3iCQSyZBAZOmpEg"; title = "OG Crew"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCAuEjBW8MgKN9DyCvjEPFew"; title = "OttiIie"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCNdpdXEV_Rt94Ff_FWgNrvA"; title = "Perry Daniels"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCmxePybUpZj8RRuWz6r8uTQ"; title = "Politievlogger Jan-Willem"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCAL3JXZSzSm8AlZyD3nQdBA"; title = "Primitive Technology"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCJkfUSH511jawedJ2zq8IIQ"; title = "Problemagic Comedy"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC2rzsm1Qi6N1X-wuOg_p0Ng"; title = "Project Farm"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCAbAsEZ-0LccTNbl8r-3EaQ"; title = "Scott Yu-Jan"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC6107grRI4m0o2-emgoDnAA"; title = "Smarter Every Day"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCj1VqrHhDte54oLgPG4xpuQ"; title = "Stuff Made Here"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCQD-0MjUbDBwm2UTVYr0Dag"; title = "Suibhne"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCT6AJiTYspOILBK3hMWEq2g"; title = "Switch and Click"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC2SMpy2oZV6BoyJEYShw9bw"; title = "TA Outdoors"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCBq5p-xOla8xhnrbhu8AIAg"; title = "Tech Over Tea"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCgRaK4A7yi4ZELCLUjdP_pg"; title = "Techdweeb"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCy0tKL1T7wFoYcxCe0xjN6Q"; title = "Technology Connections"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCylGUf9BvQooEFjgdNudoQg"; title = "The Linux Cast"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCB5Nin2VBUeNLqamqEVh-2A"; title = "The Next Layer"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UC2LVhJH_9cT2XKp0VAfsKOQ"; title = "The Tim Traveler"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCBa659QWEk1AI4Tg--mrJ2A"; title = "Tom Scott"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCL14t3D_hreM5WnorC3VJ5g"; title = "What On Earth Is This?"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCfJxmjbygyA5KEdzzZv6Pbw"; title = "Wizards with Guns"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCsnGwSIHyoYN0kiINAGUKxg"; title = "Wolfgang's Channel"; }
      { url = "https://www.youtube.com/feeds/videos.xml?channel_id=UCUW49KGPezggFi0PGyDvcvg"; title = "Zack Freedman"; }
      { url = "https://jorisvandijk.com/index.xml"; title = "Jorisvandijk.com"; }
      { url = "https://jorisvandijk.com/microblog/index.xml"; title = "Joris Microblog"; }
    ];
  };
}
