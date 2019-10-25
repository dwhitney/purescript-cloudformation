module CloudFormation.AWS.Cognito.UserPoolDomain where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "UserPoolId" :: Value String
  , "Domain" :: Value String
  , "CustomDomainConfig" :: Maybe (Value CustomDomainConfigType)
  }

derive instance newtypeUserPoolDomain :: Newtype UserPoolDomain _
derive newtype instance writeUserPoolDomain :: WriteForeign UserPoolDomain
instance resourceUserPoolDomain :: Resource UserPoolDomain where type_ _ = "AWS::Cognito::UserPoolDomain"

userPoolDomain :: { "UserPoolId" :: Value String, "Domain" :: Value String } -> UserPoolDomain
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
  { "CertificateArn" :: Maybe (Value String)
  }

customDomainConfigType :: CustomDomainConfigType
customDomainConfigType =
  { "CertificateArn" : Nothing
  }