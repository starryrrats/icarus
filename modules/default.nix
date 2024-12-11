{
  inputs,
  outputs,
  ...
}: { 
  imports = [ 
    ./system
    inputs.home-manager.nixosModules.home-manager
    ];

    home-manager = { 
      extraSpecialArgs = {inherit inputs outputs;};
      useGlobalPkgs = false;
      useUserPackages = true;
      users = { 
        rigel = import ./home-manager;
      };
    };
}
