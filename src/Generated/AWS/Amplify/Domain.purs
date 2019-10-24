module CloudFormation.AWS.Amplify.Domain where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Amplify::Domain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html
-- |
-- | - `SubDomainSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-subdomainsettings
-- | - `AppId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-appid
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplify-domain.html#cfn-amplify-domain-domainname
newtype Domain = Domain
  { "SubDomainSettings" :: Array SubDomainSetting
  , "AppId" :: String
  , "DomainName" :: String
  }

derive instance newtypeDomain :: Newtype Domain _
instance resourceDomain :: Resource Domain where type_ _ = "AWS::Amplify::Domain"

domain :: { "SubDomainSettings" :: Array SubDomainSetting, "AppId" :: String, "DomainName" :: String } -> Domain
domain required = Domain
  required

-- | `AWS::Amplify::Domain.SubDomainSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html
-- |
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-prefix
-- | - `BranchName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-branchname
type SubDomainSetting =
  { "Prefix" :: String
  , "BranchName" :: String
  }

subDomainSetting :: { "Prefix" :: String, "BranchName" :: String } -> SubDomainSetting
subDomainSetting required =
  required