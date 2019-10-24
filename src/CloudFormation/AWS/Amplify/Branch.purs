module CloudFormation.AWS.Amplify.Branch where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Branch =
  { "AppId" :: String
  , "BranchName" :: String
  , "Description" :: Maybe String
  , "EnvironmentVariables" :: Maybe (Array EnvironmentVariable)
  , "EnableAutoBuild" :: Maybe Boolean
  , "BuildSpec" :: Maybe String
  , "Stage" :: Maybe String
  , "BasicAuthConfig" :: Maybe BasicAuthConfig
  , "Tags" :: Maybe (Array Tag)
  }

branch :: { "AppId" :: String, "BranchName" :: String } -> Branch
branch required =
  merge required
    { "Description" : Nothing
    , "EnvironmentVariables" : Nothing
    , "EnableAutoBuild" : Nothing
    , "BuildSpec" : Nothing
    , "Stage" : Nothing
    , "BasicAuthConfig" : Nothing
    , "Tags" : Nothing
    }

type BasicAuthConfig =
  { "Username" :: String
  , "Password" :: String
  , "EnableBasicAuth" :: Maybe Boolean
  }

basicAuthConfig :: { "Username" :: String, "Password" :: String } -> BasicAuthConfig
basicAuthConfig required =
  merge required
    { "EnableBasicAuth" : Nothing
    }

type EnvironmentVariable =
  { "Value" :: String
  , "Name" :: String
  }

environmentVariable :: { "Value" :: String, "Name" :: String } -> EnvironmentVariable
environmentVariable required =
  required