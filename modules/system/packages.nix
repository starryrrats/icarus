{
  pkgs,
  inputs,
  ... 
}: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    
    nerd-fonts.inconsolata
    catppuccin-papirus-folders
    rofi
    waybar
    waybar-mpris
    mako

    neovim
    ripgrep
    neofetch
    wget
    rclone
    git
    pulsemixer
    bottom
    file
    yt-dlp
    ffmpeg
    qmk
    qmk-udev-rules
    playerctl


    feh
    obsidian
    pandoc
    warpinator
    watershot
    grimblast
    shutter
    maim
    autorandr
    appimage-run
    xclip
    easyeffects
    vesktop

    parsec-bin

    xarchiver
    unar
    unzip
    zip
    p7zip

    protontricks
    nicotine-plus
    picard
    mpv
    tauon

    rofi-power-menu
    rofi-pulse-select
  ];
}
