{
  config,
  pkgs,
  ...
  }: {
    boot = {
      kernelPackages = pkgs.linuxPackages_xanmod_latest;
      extraModulePackages = [
        config.boot.kernelPackages.v4l2loopback
	];
	extraModprobeConfig = ''
	  options v4l2loopback exclusive_caps=1
	  '';
	  kernelParams = [
	    "quiet"
	  ];
	    loader.timeout = 0;

	    loader = {
	      systemd-boot.enable = true;
	      efi.canTouchEfiVariables = true;
	    };

	    initrd.checkJournalingFS = false;
	  };
}
