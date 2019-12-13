module CloudFormation.AWS.Amplify.App where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "AutoBranchCreationConfig" :: Maybe (Value AutoBranchCreationConfig)
  , "OauthToken" :: Maybe (Value String)
  , "Repository" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "EnvironmentVariables" :: Maybe (Value (Array EnvironmentVariable))
  , "AccessToken" :: Maybe (Value String)
  , "BuildSpec" :: Maybe (Value String)
  , "CustomRules" :: Maybe (Value (Array CustomRule))
  , "BasicAuthConfig" :: Maybe (Value BasicAuthConfig)
  , "Tags" :: Maybe (Value (Array Tag))
  , "IAMServiceRole" :: Maybe (Value String)
  }

derive instance newtypeApp :: Newtype App _
derive newtype instance writeApp :: WriteForeign App
instance resourceApp :: Resource App where type_ _ = "AWS::Amplify::App"

app :: { "Name" :: Value String } -> App
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
-- | - `PullRequestEnvironmentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-pullrequestenvironmentname
-- | - `AutoBranchCreationPatterns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-autobranchcreationpatterns
-- | - `EnablePullRequestPreview`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enablepullrequestpreview
-- | - `EnableAutoBuild`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-enableautobuild
-- | - `BuildSpec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-buildspec
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-stage
-- | - `BasicAuthConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-autobranchcreationconfig.html#cfn-amplify-app-autobranchcreationconfig-basicauthconfig
type AutoBranchCreationConfig =
  { "EnvironmentVariables" :: Maybe (Value (Array EnvironmentVariable))
  , "EnableAutoBranchCreation" :: Maybe (Value Boolean)
  , "PullRequestEnvironmentName" :: Maybe (Value String)
  , "AutoBranchCreationPatterns" :: Maybe (Value (Array String))
  , "EnablePullRequestPreview" :: Maybe (Value Boolean)
  , "EnableAutoBuild" :: Maybe (Value Boolean)
  , "BuildSpec" :: Maybe (Value String)
  , "Stage" :: Maybe (Value String)
  , "BasicAuthConfig" :: Maybe (Value BasicAuthConfig)
  }

autoBranchCreationConfig :: AutoBranchCreationConfig
autoBranchCreationConfig =
  { "EnvironmentVariables" : Nothing
  , "EnableAutoBranchCreation" : Nothing
  , "PullRequestEnvironmentName" : Nothing
  , "AutoBranchCreationPatterns" : Nothing
  , "EnablePullRequestPreview" : Nothing
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
  { "Target" :: Value String
  , "Source" :: Value String
  , "Condition" :: Maybe (Value String)
  , "Status" :: Maybe (Value String)
  }

customRule :: { "Target" :: Value String, "Source" :: Value String } -> CustomRule
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
  { "Value" :: Value String
  , "Name" :: Value String
  }

environmentVariable :: { "Value" :: Value String, "Name" :: Value String } -> EnvironmentVariable
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
  { "Username" :: Maybe (Value String)
  , "EnableBasicAuth" :: Maybe (Value Boolean)
  , "Password" :: Maybe (Value String)
  }

basicAuthConfig :: BasicAuthConfig
basicAuthConfig =
  { "Username" : Nothing
  , "EnableBasicAuth" : Nothing
  , "Password" : Nothing
  }