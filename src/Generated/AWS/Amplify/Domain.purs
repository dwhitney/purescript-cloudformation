module CloudFormation.AWS.Amplify.Domain where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "SubDomainSettings" :: Value (Array SubDomainSetting)
  , "AppId" :: Value String
  , "DomainName" :: Value String
  }

derive instance newtypeDomain :: Newtype Domain _
derive newtype instance writeDomain :: WriteForeign Domain
instance resourceDomain :: Resource Domain where type_ _ = "AWS::Amplify::Domain"

domain :: { "SubDomainSettings" :: Value (Array SubDomainSetting), "AppId" :: Value String, "DomainName" :: Value String } -> Domain
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
  { "Prefix" :: Value String
  , "BranchName" :: Value String
  }

subDomainSetting :: { "Prefix" :: Value String, "BranchName" :: Value String } -> SubDomainSetting
subDomainSetting required =
  required