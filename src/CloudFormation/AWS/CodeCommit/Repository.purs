module CloudFormation.AWS.CodeCommit.Repository where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Repository =
  { "RepositoryName" :: String
  , "Triggers" :: Maybe (Array RepositoryTrigger)
  , "Code" :: Maybe Code
  , "RepositoryDescription" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

repository :: { "RepositoryName" :: String } -> Repository
repository required =
  merge required
    { "Triggers" : Nothing
    , "Code" : Nothing
    , "RepositoryDescription" : Nothing
    , "Tags" : Nothing
    }

type RepositoryTrigger =
  { "Events" :: Array String
  , "DestinationArn" :: String
  , "Name" :: String
  , "Branches" :: Maybe (Array String)
  , "CustomData" :: Maybe String
  }

repositoryTrigger :: { "Events" :: Array String, "DestinationArn" :: String, "Name" :: String } -> RepositoryTrigger
repositoryTrigger required =
  merge required
    { "Branches" : Nothing
    , "CustomData" : Nothing
    }

type S3 =
  { "Bucket" :: String
  , "Key" :: String
  , "ObjectVersion" :: Maybe String
  }

s3 :: { "Bucket" :: String, "Key" :: String } -> S3
s3 required =
  merge required
    { "ObjectVersion" : Nothing
    }

type Code =
  { "S3" :: S3
  }

code :: { "S3" :: S3 } -> Code
code required =
  required