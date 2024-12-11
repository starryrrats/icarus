{pkgs, ...}: {
  programs.firefox = {
    enable = true; 
#    profiles.rigelius = {
#      isDefault = true; 
#      userChrome = 
#      .. 
#       @import "${
#	  builtins.fetchGit {
#	    url = "https://github.com/migueravila/SimpleFox?tab=readme-ov-file#-customization";
#	    ref = "master";
#	    rev = "";
#	    }
#	}/userChrome.css";
  };
}
