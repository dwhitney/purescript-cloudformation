module CloudFormation.Resource where


import Prim.RowList as RL
import Record.Extra (class MapRecord, mapRecord)
import Simple.JSON (class WriteForeign, writeJSON)


class Resource a where
  type_ :: a -> String

type Template a = ( "Type" :: String, "Properties" :: a )

writeTemplate :: forall row xs a row'
  .  RL.RowToList row xs
  => Resource a
  => MapRecord xs row a (Record (Template a)) () row'
  => WriteForeign (Record row')
  => WriteForeign a
  => Record row
  -> String
writeTemplate r = do
  let resources = mapRecord (\resource -> { "Type" : type_ resource , "Properties" : resource }) r
  let template = { "Resources" : resources }
  writeJSON template