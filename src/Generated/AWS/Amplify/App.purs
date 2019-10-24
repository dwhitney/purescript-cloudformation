module CloudFormation.AWS.Amplify.App where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Amplify::App`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html
-- |
-- | - `AutoBranchCreationConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-autobranchcreationconfig
-- | - `OauthToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-oauthtoken
-- | - `Repository`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-repository
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-description
-- | - `EnvironmentVariables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-environmentvariables
-- | - `AccessToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-accesstoken
-- | - `BuildSpec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-buildspec
-- | - `CustomRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-customrules
-- | - `BasicAuthConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-basicauthconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-name
-- | - `IAMServiceRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-app.html#cfn-amplify-app-iamservicerole
newtype App = App
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

derive instance newtypeApp :: Newtype App _
instance resourceApp :: Resource App where type_ _ = "AWS::Amplify::App"

app :: { "Name" :: String } -> App
app required = App
  (merge required
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
    })

-- | `AWS::Amplify::App.AutoBranchCreationConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html
-- |
-- | - `EnvironmentVariables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-environmentvariables
-- | - `EnableAutoBranchCreation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobranchcreation
-- | - `AutoBranchCreationPatterns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-autobranchcreationpatterns
-- | - `EnableAutoBuild`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobuild
-- | - `BuildSpec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-buildspec
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-stage
-- | - `BasicAuthConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-basicauthconfig
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

-- | `AWS::Amplify::App.CustomRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html
-- |
-- | - `Condition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-condition
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-status
-- | - `Target`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-target
-- | - `Source`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-source
type CustomRule =
  { "Target" :: String
  , "Source" :: String
  , "Condition" :: Maybe String
  , "Status" :: Maybe String
  }

customRule :: { "Target" :: String, "Source" :: String } -> CustomRule
customRule required =
  (merge required
    { "Condition" : Nothing
    , "Status" : Nothing
    })

-- | `AWS::Amplify::App.EnvironmentVariable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-environmentvariable.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-environmentvariable.html#cfn-amplify-app-environmentvariable-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-environmentvariable.html#cfn-amplify-app-environmentvariable-name
type EnvironmentVariable =
  { "Value" :: String
  , "Name" :: String
  }

environmentVariable :: { "Value" :: String, "Name" :: String } -> EnvironmentVariable
environmentVariable required =
  required

-- | `AWS::Amplify::App.BasicAuthConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html
-- |
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-username
-- | - `EnableBasicAuth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-enablebasicauth
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-basicauthconfig.html#cfn-amplify-app-basicauthconfig-password
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