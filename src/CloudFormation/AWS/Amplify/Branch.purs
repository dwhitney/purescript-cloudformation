module CloudFormation.AWS.Amplify.Branch where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::Amplify::Branch`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-branch.html-- |
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

-- | `AWS::Amplify::Branch.BasicAuthConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html-- |
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-username
-- | - `EnableBasicAuth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-enablebasicauth
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-basicauthconfig.html#cfn-amplify-branch-basicauthconfig-password
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

-- | `AWS::Amplify::Branch.EnvironmentVariable`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-environmentvariable.html#cfn-amplify-branch-environmentvariable-name
type EnvironmentVariable =
  { "Value" :: String
  , "Name" :: String
  }

environmentVariable :: { "Value" :: String, "Name" :: String } -> EnvironmentVariable
environmentVariable required =
  required