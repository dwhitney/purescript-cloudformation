{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "my-project"
, dependencies =
    [ "console"
    , "effect"
    , "foreign"
    , "foreign-object"
    , "newtype"
    , "psci-support"
    , "record"
    , "record-extra"
    , "simple-json"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
