module CloudFormation.AWS.Amplify.App where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type App =
  { "Name" :: String
  , "AutoBranchCreationConfig" :: Maybe AutoBranchCreationConfig
  , "OauthToken" :: Maybe String
  , "Repository" :: Maybe String
  , "Description" :: Maybe String
  , "EnvironmentVariables" :: Maybe (Array EnvironmentVariable)
  , "AccessToken" :: Maybe String
  , "BuildSpec" :: Maybe String
  , "CustomRules" :: Maybe (Array CustomRule)
  , "BasicAuthConfig" :: Maybe BasicAuthConfig
  , "Tags" :: Maybe (Array Tag)
  , "IAMServiceRole" :: Maybe String
  }

app :: { "Name" :: String } -> App
app required =
  merge required
    { "AutoBranchCreationConfig" : Nothing
    , "OauthToken" : Nothing
    , "Repository" : Nothing
    , "Description" : Nothing
    , "EnvironmentVariables" : Nothing
    , "AccessToken" : Nothing
    , "BuildSpec" : Nothing
    , "CustomRules" : Nothing
    , "BasicAuthConfig" : Nothing
    , "Tags" : Nothing
    , "IAMServiceRole" : Nothing
    }

type AutoBranchCreationConfig =
  { "EnvironmentVariables" :: Maybe (Array EnvironmentVariable)
  , "EnableAutoBranchCreation" :: Maybe Boolean
  , "AutoBranchCreationPatterns" :: Maybe (Array String)
  , "EnableAutoBuild" :: Maybe Boolean
  , "BuildSpec" :: Maybe String
  , "Stage" :: Maybe String
  , "BasicAuthConfig" :: Maybe BasicAuthConfig
  }

autoBranchCreationConfig :: AutoBranchCreationConfig
autoBranchCreationConfig =
  { "EnvironmentVariables" : Nothing
  , "EnableAutoBranchCreation" : Nothing
  , "AutoBranchCreationPatterns" : Nothing
  , "EnableAutoBuild" : Nothing
  , "BuildSpec" : Nothing
  , "Stage" : Nothing
  , "BasicAuthConfig" : Nothing
  }

type CustomRule =
  { "Target" :: String
  , "Source" :: String
  , "Condition" :: Maybe String
  , "Status" :: Maybe String
  }

customRule :: { "Target" :: String, "Source" :: String } -> CustomRule
customRule required =
  merge required
    { "Condition" : Nothing
    , "Status" : Nothing
    }

type EnvironmentVariable =
  { "Value" :: String
  , "Name" :: String
  }

environmentVariable :: { "Value" :: String, "Name" :: String } -> EnvironmentVariable
environmentVariable required =
  required

type BasicAuthConfig =
  { "Username" :: Maybe String
  , "EnableBasicAuth" :: Maybe Boolean
  , "Password" :: Maybe String
  }

basicAuthConfig :: BasicAuthConfig
basicAuthConfig =
  { "Username" : Nothing
  , "EnableBasicAuth" : Nothing
  , "Password" : Nothing
  }