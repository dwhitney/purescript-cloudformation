module CloudFormation.AWS.CodeStar.GitHubRepository where 

import Data.Maybe (Maybe(..))
import Record (merge)


type GitHubRepository =
  { "RepositoryName" :: String
  , "RepositoryAccessToken" :: String
  , "RepositoryOwner" :: String
  , "EnableIssues" :: Maybe Boolean
  , "IsPrivate" :: Maybe Boolean
  , "Code" :: Maybe Code
  , "RepositoryDescription" :: Maybe String
  }

gitHubRepository :: { "RepositoryName" :: String, "RepositoryAccessToken" :: String, "RepositoryOwner" :: String } -> GitHubRepository
gitHubRepository required =
  merge required
    { "EnableIssues" : Nothing
    , "IsPrivate" : Nothing
    , "Code" : Nothing
    , "RepositoryDescription" : Nothing
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