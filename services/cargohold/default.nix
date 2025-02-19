# WARNING: GENERATED FILE, DO NOT EDIT.
# This file is generated by running hack/bin/generate-local-nix-packages.sh and
# must be regenerated whenever local packages are added or removed, or
# dependencies are added or removed.
{ mkDerivation
, aeson
, amazonka
, amazonka-core
, amazonka-s3
, attoparsec
, auto-update
, base
, base64-bytestring
, bilge
, bytestring
, bytestring-conversion
, cargohold-types
, case-insensitive
, conduit
, conduit-extra
, containers
, cryptonite
, data-default
, errors
, exceptions
, extended
, federator
, gitignoreSource
, HsOpenSSL
, HsOpenSSL-x509-system
, http-api-data
, http-client
, http-client-openssl
, http-client-tls
, http-media
, http-types
, imports
, kan-extensions
, lens
, lib
, metrics-core
, metrics-wai
, mime
, mmorph
, mtl
, optparse-applicative
, resourcet
, retry
, safe
, servant
, servant-client
, servant-client-core
, servant-server
, swagger
, tagged
, tasty
, tasty-hunit
, text
, time
, tinylog
, types-common
, types-common-aws
, unliftio
, unordered-containers
, uri-bytestring
, uuid
, wai
, wai-extra
, wai-utilities
, wire-api
, wire-api-federation
, yaml
}:
mkDerivation {
  pname = "cargohold";
  version = "1.5.0";
  src = gitignoreSource ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson
    amazonka
    amazonka-core
    amazonka-s3
    attoparsec
    auto-update
    base
    base64-bytestring
    bilge
    bytestring
    bytestring-conversion
    cargohold-types
    case-insensitive
    conduit
    conduit-extra
    containers
    cryptonite
    data-default
    errors
    exceptions
    extended
    HsOpenSSL
    HsOpenSSL-x509-system
    http-client
    http-client-openssl
    http-types
    imports
    kan-extensions
    lens
    metrics-core
    metrics-wai
    mime
    optparse-applicative
    resourcet
    retry
    safe
    servant
    servant-server
    swagger
    text
    time
    tinylog
    types-common
    types-common-aws
    unliftio
    unordered-containers
    uri-bytestring
    uuid
    wai
    wai-extra
    wai-utilities
    wire-api
    wire-api-federation
    yaml
  ];
  executableHaskellDepends = [
    aeson
    base
    base64-bytestring
    bilge
    bytestring
    bytestring-conversion
    cargohold-types
    conduit
    containers
    cryptonite
    data-default
    errors
    exceptions
    extended
    federator
    HsOpenSSL
    http-api-data
    http-client
    http-client-tls
    http-media
    http-types
    imports
    kan-extensions
    lens
    mime
    mmorph
    mtl
    optparse-applicative
    safe
    servant-client
    servant-client-core
    tagged
    tasty
    tasty-hunit
    text
    time
    types-common
    uuid
    wai
    wai-utilities
    wire-api
    wire-api-federation
    yaml
  ];
  description = "Asset Storage API";
  license = lib.licenses.agpl3Only;
}
