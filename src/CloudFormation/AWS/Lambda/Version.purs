module CloudFormation.AWS.Lambda.Version where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Version =
  { "FunctionName" :: String
  , "CodeSha256" :: Maybe String
  , "Description" :: Maybe String
  }

version :: { "FunctionName" :: String } -> Version
version required =
  merge required
    { "CodeSha256" : Nothing
    , "Description" : Nothing
    }