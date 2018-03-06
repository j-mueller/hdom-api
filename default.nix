{ mkDerivation, base, containers, stdenv }:
mkDerivation {
  pname = "hdom-api";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base containers ];
  description = "common interface for hdom-server and hdom-client";
  license = stdenv.lib.licenses.bsd3;
}
