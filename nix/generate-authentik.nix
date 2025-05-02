{ pkgs }:
pkgs.writeScriptBin "generate-authentik" ''
  ${pkgs.hsPkgs.openapi3-code-generator}/bin/openapi3-code-generator-exe authentik-api.yaml \
    --force \
    --property-type-suffix="'"\
    --module-name "AuthentikAPI"\
    --convert-to-camel-case\
    --omit-additional-operation-functions\
    --package-name "authentikapi"

  rm -r ./src

  mv out/* .

  ${pkgs.treefmt}/bin/treefmt
''
