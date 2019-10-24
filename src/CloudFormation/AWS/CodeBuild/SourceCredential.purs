module CloudFormation.AWS.CodeBuild.SourceCredential where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SourceCredential =
  { "ServerType" :: String
  , "Token" :: String
  , "AuthType" :: String
  , "Username" :: Maybe String
  }

sourceCredential :: { "ServerType" :: String, "Token" :: String, "AuthType" :: String } -> SourceCredential
sourceCredential required =
  merge required
    { "Username" : Nothing
    }