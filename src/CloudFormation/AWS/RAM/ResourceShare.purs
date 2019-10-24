module CloudFormation.AWS.RAM.ResourceShare where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type ResourceShare =
  { "Name" :: String
  , "Principals" :: Maybe (Array String)
  , "AllowExternalPrincipals" :: Maybe Boolean
  , "ResourceArns" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

resourceShare :: { "Name" :: String } -> ResourceShare
resourceShare required =
  merge required
    { "Principals" : Nothing
    , "AllowExternalPrincipals" : Nothing
    , "ResourceArns" : Nothing
    , "Tags" : Nothing
    }