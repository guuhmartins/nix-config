{
  description = "Guuh's Advanced NixOS & Home Manager Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # Snow-Niri / iNiR references
    inir = {
      url = "github:snowarch/iNiR";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      system = "x86_64-linux";
      
      # Importando nossa biblioteca customizada
      lib = import ./lib { inherit (nixpkgs) lib; };
      
      # Configurando overlays
      overlays = import ./overlays { inherit inputs; };
      
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ overlays ];
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs pkgs lib; };
        modules = [
          ./modules/system/configuration.nix
        ];
      };

      homeConfigurations."guuh@nixos" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs lib; };
        modules = [
          ./modules/home/home.nix
        ];
      };
    };
}
