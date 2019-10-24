module CloudFormation.AWS.Cognito.UserPoolDomain where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Cognito::UserPoolDomain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html
-- |
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-userpoolid
-- | - `CustomDomainConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-customdomainconfig
-- | - `Domain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-domain
newtype UserPoolDomain = UserPoolDomain
  { "UserPoolId" :: String
  , "Domain" :: String
  , "CustomDomainConfig" :: Maybe CustomDomainConfigType
  }

derive instance newtypeUserPoolDomain :: Newtype UserPoolDomain _
instance resourceUserPoolDomain :: Resource UserPoolDomain where type_ _ = "AWS::Cognito::UserPoolDomain"

userPoolDomain :: { "UserPoolId" :: String, "Domain" :: String } -> UserPoolDomain
userPoolDomain required = UserPoolDomain
  (merge required
    { "CustomDomainConfig" : Nothing
    })

-- | `AWS::Cognito::UserPoolDomain.CustomDomainConfigType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html
-- |
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpooldomain-customdomainconfigtype.html#cfn-cognito-userpooldomain-customdomainconfigtype-certificatearn
type CustomDomainConfigType =
  { "CertificateArn" :: Maybe String
  }

customDomainConfigType :: CustomDomainConfigType
customDomainConfigType =
  { "CertificateArn" : Nothing
  }