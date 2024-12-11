{...}: {
  programs.git = {
    enable = true;
    userEmail = "rattiusjr@gmail.com";
    userName = "starryrrats";
    extraConfig = {
      credential.helper = "cache --timeout=3600";
    };
  };
}
