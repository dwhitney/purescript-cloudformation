module CloudFormation.Tag where 




type Tag =
  { "Key" :: String
  , "Value" :: String
  }

tag :: { "Key" :: String, "Value" :: String } -> Tag
tag required =
  required