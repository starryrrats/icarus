{ pkgs, ...}: {
  services = {
    udisks2.enable = true;
    
    dbus = {
      enable = true;
      implementation = "broker";
      };
    
    openssh.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      };
  };
}
