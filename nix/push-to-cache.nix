{ pkgs, cache-name }:
pkgs.writeScriptBin "push-to-cache" ''

outputs=$(nix build .#authentik-hs --no-link --print-out-paths --refresh)

nix-store --query --requisites --include-outputs $outputs | xargs -r -n1 nix store sign --key-file ../$CACHE_NAME-priv.key

nix copy --to 's3://$CACHE_NAME?endpoint=nyc3.digitaloceanspaces.com&region=nyc3' --refresh \
  .#authentik-hs
''
