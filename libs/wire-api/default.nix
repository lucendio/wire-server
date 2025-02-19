# WARNING: GENERATED FILE, DO NOT EDIT.
# This file is generated by running hack/bin/generate-local-nix-packages.sh and
# must be regenerated whenever local packages are added or removed, or
# dependencies are added or removed.
{ mkDerivation
, aeson
, aeson-pretty
, aeson-qq
, async
, attoparsec
, base
, base64-bytestring
, binary
, binary-parsers
, bytestring
, bytestring-arbitrary
, bytestring-conversion
, case-insensitive
, cassandra-util
, cassava
, cereal
, comonad
, conduit
, constraints
, containers
, cookie
, cryptonite
, currency-codes
, deriving-aeson
, deriving-swagger2
, directory
, either
, email-validate
, errors
, extended
, extra
, filepath
, generic-random
, generics-sop
, ghc-prim
, gitignoreSource
, hashable
, hex
, hostname-validate
, hscim
, http-api-data
, http-media
, http-types
, imports
, insert-ordered-containers
, iproute
, iso3166-country-codes
, iso639
, lens
, lib
, memory
, metrics-wai
, mime
, mtl
, pem
, polysemy
, pretty
, process
, proto-lens
, protobuf
, QuickCheck
, quickcheck-instances
, random
, resourcet
, saml2-web-sso
, schema-profunctor
, scientific
, servant
, servant-client
, servant-client-core
, servant-conduit
, servant-multipart
, servant-server
, servant-swagger
, servant-swagger-ui
, singletons
, sop-core
, string-conversions
, swagger
, swagger2
, tagged
, tasty
, tasty-expected-failure
, tasty-hunit
, tasty-quickcheck
, text
, time
, types-common
, unliftio
, unordered-containers
, uri-bytestring
, utf8-string
, uuid
, vector
, wai
, wai-extra
, wai-utilities
, wai-websockets
, websockets
, wire-message-proto-lens
, x509
, zauth
}:
mkDerivation {
  pname = "wire-api";
  version = "0.1.0";
  src = gitignoreSource ./.;
  libraryHaskellDepends = [
    aeson
    attoparsec
    base
    base64-bytestring
    binary
    binary-parsers
    bytestring
    bytestring-conversion
    case-insensitive
    cassandra-util
    cassava
    cereal
    comonad
    conduit
    constraints
    containers
    cookie
    cryptonite
    currency-codes
    deriving-aeson
    deriving-swagger2
    either
    email-validate
    errors
    extended
    extra
    filepath
    generic-random
    generics-sop
    ghc-prim
    hashable
    hostname-validate
    hscim
    http-api-data
    http-media
    http-types
    imports
    insert-ordered-containers
    iproute
    iso3166-country-codes
    iso639
    lens
    memory
    metrics-wai
    mime
    mtl
    pem
    polysemy
    proto-lens
    protobuf
    QuickCheck
    quickcheck-instances
    random
    resourcet
    saml2-web-sso
    schema-profunctor
    scientific
    servant
    servant-client
    servant-client-core
    servant-conduit
    servant-multipart
    servant-server
    servant-swagger
    servant-swagger-ui
    singletons
    sop-core
    string-conversions
    swagger
    swagger2
    tagged
    text
    time
    types-common
    unordered-containers
    uri-bytestring
    utf8-string
    uuid
    vector
    wai
    wai-extra
    wai-utilities
    wai-websockets
    websockets
    wire-message-proto-lens
    x509
    zauth
  ];
  testHaskellDepends = [
    aeson
    aeson-pretty
    aeson-qq
    async
    base
    binary
    bytestring
    bytestring-arbitrary
    bytestring-conversion
    case-insensitive
    cassava
    containers
    cryptonite
    currency-codes
    directory
    either
    filepath
    hex
    hscim
    imports
    iso3166-country-codes
    iso639
    lens
    memory
    metrics-wai
    mime
    pem
    pretty
    process
    proto-lens
    QuickCheck
    saml2-web-sso
    schema-profunctor
    servant
    servant-swagger-ui
    string-conversions
    swagger2
    tasty
    tasty-expected-failure
    tasty-hunit
    tasty-quickcheck
    text
    time
    types-common
    unliftio
    unordered-containers
    uri-bytestring
    uuid
    vector
    wire-message-proto-lens
  ];
  license = lib.licenses.agpl3Only;
}
