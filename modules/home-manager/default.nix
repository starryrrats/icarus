{...}: {
  imports = [
    ./firefox.nix
    ./hyprland.nix
    ./rofi.nix
    ./kitty.nix
    ./mako.nix
    ./git.nix
    ./gtk.nix
    ./home.nix
  ];
  programs.home-manager.enable = true;

}
