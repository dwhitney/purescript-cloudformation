module CloudFormation.AWS.ElasticBeanstalk.ApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApplicationVersion =
  { "ApplicationName" :: String
  , "SourceBundle" :: SourceBundle
  , "Description" :: Maybe String
  }

applicationVersion :: { "ApplicationName" :: String, "SourceBundle" :: SourceBundle } -> ApplicationVersion
applicationVersion required =
  merge required
    { "Description" : Nothing
    }

type SourceBundle =
  { "S3Bucket" :: String
  , "S3Key" :: String
  }

sourceBundle :: { "S3Bucket" :: String, "S3Key" :: String } -> SourceBundle
sourceBundle required =
  required