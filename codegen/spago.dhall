{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "my-project"
, dependencies =
    [ "console"
    , "debug"
    , "effect"
    , "exceptions"
    , "foreign-object"
    , "node-fs"
    , "psci-support"
    , "simple-json"
    , "stringutils"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
