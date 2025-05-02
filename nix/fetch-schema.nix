{ pkgs }:
pkgs.writeScriptBin "fetch-schema" ''
  ${pkgs.curl}/bin/curl -o authentik-api.yaml https://raw.githubusercontent.com/goauthentik/authentik/main/schema.yml
''
