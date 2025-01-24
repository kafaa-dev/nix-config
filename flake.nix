{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    nixosConfigurations.nixos-mint = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };

  };
}
