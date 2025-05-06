{
  description = "Basic haskell cabal template";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
      nixpkgsFor = forAllSystems (system: import nixpkgs {
        inherit system;
        overlays = [ self.overlay ];
      });
    in
    {
      overlay = final: prev: {
        hsPkgs = prev.haskell.packages.ghc965.override {
          overrides = hfinal: hprev: {
            openapi3-code-generator = prev.haskell.lib.unmarkBroken (hprev.openapi3-code-generator.overrideAttrs (oldAttrs: {
              src = (builtins.fetchGit {
                url = "https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator";
                rev = "665374f465f214ffa766b5a43c6a6b8b921e4673";
                ref = "master";
              }) + "/openapi3-code-generator";
            }));
          };
        };
        authentik-hs = final.hsPkgs.callCabal2nix "authentik-hs" ./. { };
      };
      packages = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
        in
        {
          authentik-hs = pkgs.authentik-hs;
        });

      devShells = forAllSystems (system:
        let
          pkgs = nixpkgsFor.${system};
          generate-authentik = import ./nix/generate-authentik.nix { inherit pkgs; };
          fetch-schema = import ./nix/fetch-schema.nix { inherit pkgs; };
          push-to-cache = import ./nix/push-to-cache.nix { inherit pkgs; cache-name = builtins.getEnv "CACHE_NAME"; };
          libs = with pkgs; [
            zlib
          ];
        in
        {
          default = pkgs.hsPkgs.shellFor {
            packages = hsPkgs: [ ];
            buildInputs = with pkgs; [
              hsPkgs.cabal-install
              hsPkgs.cabal-fmt
              hsPkgs.ghc
              ormolu
              treefmt
              nixpkgs-fmt
              hsPkgs.cabal-fmt
              generate-authentik
              fetch-schema
              push-to-cache
            ] ++ libs;
            # shellHook = "";
            shellHook = ''
              export PS1='[$PWD]\n❄ '
            '';
            LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath libs;
          };
        });
    };
}
