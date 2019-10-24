module CloudFormation.AWS.SageMaker.CodeRepository where 

import Data.Maybe (Maybe(..))
import Record (merge)


type CodeRepository =
  { "GitConfig" :: GitConfig
  , "CodeRepositoryName" :: Maybe String
  }

codeRepository :: { "GitConfig" :: GitConfig } -> CodeRepository
codeRepository required =
  merge required
    { "CodeRepositoryName" : Nothing
    }

type GitConfig =
  { "RepositoryUrl" :: String
  , "SecretArn" :: Maybe String
  , "Branch" :: Maybe String
  }

gitConfig :: { "RepositoryUrl" :: String } -> GitConfig
gitConfig required =
  merge required
    { "SecretArn" : Nothing
    , "Branch" : Nothing
    }