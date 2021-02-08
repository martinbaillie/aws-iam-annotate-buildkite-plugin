{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  buildInputs = [ cacert procps jq bashInteractive git curl bats ];
  shellHook = ''
    export BUILDKITE_PLUGIN_AWS_IAM_ANNOTATE_FAILS_ONLY=true
    export BUILDKITE_LABEL="test"
  '';
}
