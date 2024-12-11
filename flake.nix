{

inputs = {
  nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
    };
    
  hyprland = {
    url = "github:hyprwm/hyprland";
  };
};

outputs = {
  nixpkgs, 
  home-manager, 
  ...
  }@ inputs: let
    system = "x86_64-linux";
    
    unfreePkgs = import nixpkgs {
      system = "x86_64-linux";
      config.allowUnfree = true;
    };
    in {
      nixosConfigurations = {
        icarus = nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux"; 
	  specialArgs = {inherit inputs;};
          modules = [
            ./configuration.nix
            ./modules
            home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}
