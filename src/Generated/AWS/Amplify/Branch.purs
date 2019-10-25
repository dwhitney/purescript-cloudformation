module CloudFormation.AWS.Amplify.Branch where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Amplify::Branch`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-description
-- | - `EnvironmentVariables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-environmentvariables
-- | - `AppId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-appid
-- | - `EnableAutoBuild`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-enableautobuild
-- | - `BuildSpec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-buildspec
-- | - `Stage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-stage
-- | - `BranchName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-branchname
-- | - `BasicAuthConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-basicauthconfig
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html#cfn-amplify-branch-tags
newtype Branch = Branch
  { "AppId" :: Value String
  , "BranchName" :: Value String
  , "Description" :: Maybe (Value String)
  , "EnvironmentVariables" :: Maybe (Value (Array EnvironmentVariable))
  , "EnableAutoBuild" :: Maybe (Value Boolean)
  , "BuildSpec" :: Maybe (Value String)
  , "Stage" :: Maybe (Value String)
  , "BasicAuthConfig" :: Maybe (Value BasicAuthConfig)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeBranch :: Newtype Branch _
derive newtype instance writeBranch :: WriteForeign Branch
instance resourceBranch :: Resource Branch where type_ _ = "AWS::Amplify::Branch"

branch :: { "AppId" :: Value String, "BranchName" :: Value String } -> Branch
branch required = Branch
  (merge required
    { "Description" : Nothing
    , "EnvironmentVariables" : Nothing
    , "EnableAutoBuild" : Nothing
    , "BuildSpec" : Nothing
    , "Stage" : Nothing
    , "BasicAuthConfig" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Amplify::Branch.BasicAuthConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html
-- |
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-username
-- | - `EnableBasicAuth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-enablebasicauth
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-password
type BasicAuthConfig =
  { "Username" :: Value String
  , "Password" :: Value String
  , "EnableBasicAuth" :: Maybe (Value Boolean)
  }

basicAuthConfig :: { "Username" :: Value String, "Password" :: Value String } -> BasicAuthConfig
basicAuthConfig required =
  (merge required
    { "EnableBasicAuth" : Nothing
    })

-- | `AWS::Amplify::Branch.EnvironmentVariable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-name
type EnvironmentVariable =
  { "Value" :: Value String
  , "Name" :: Value String
  }

environmentVariable :: { "Value" :: Value String, "Name" :: Value String } -> EnvironmentVariable
environmentVariable required =
  required