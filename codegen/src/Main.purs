module Main where

import Prelude

import AST (File(..))
import Codegen as Codegen
import Effect (Effect)

main :: Effect Unit
main = do
  let ignore =
        [ (Directory "AWS" (Directory "EMR" (File "Cluster.purs")))
        , (Directory "AWS" (Directory "EMR" (File "InstanceFleetConfig.purs")))
        , (Directory "AWS" (Directory "EMR" (File "InstanceGroupConfig.purs")))
        ]
  typeMap <- Codegen.codegen ignore
  Codegen.write "../src/Generated" typeMap
  pure unit
