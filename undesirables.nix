{ lib, ... }:
let
  removable = [
    "GarageBand"
    "iMovie"
    "Keynote"
    "Numbers"
    "Pages"
  ];
in
{
  system.activationScripts.removeUndesirables.text = ''
    for app in ${lib.concatStringsSep " " removable}; do
      rm -rf "/Applications/$app.app"
    done
  '';
}
