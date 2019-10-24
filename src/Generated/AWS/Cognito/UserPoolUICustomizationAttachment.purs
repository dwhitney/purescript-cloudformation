module CloudFormation.AWS.Cognito.UserPoolUICustomizationAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Cognito::UserPoolUICustomizationAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html
-- |
-- | - `CSS`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-css
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-userpoolid
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-clientid
newtype UserPoolUICustomizationAttachment = UserPoolUICustomizationAttachment
  { "UserPoolId" :: String
  , "ClientId" :: String
  , "CSS" :: Maybe String
  }

derive instance newtypeUserPoolUICustomizationAttachment :: Newtype UserPoolUICustomizationAttachment _
instance resourceUserPoolUICustomizationAttachment :: Resource UserPoolUICustomizationAttachment where type_ _ = "AWS::Cognito::UserPoolUICustomizationAttachment"

userPoolUICustomizationAttachment :: { "UserPoolId" :: String, "ClientId" :: String } -> UserPoolUICustomizationAttachment
userPoolUICustomizationAttachment required = UserPoolUICustomizationAttachment
  (merge required
    { "CSS" : Nothing
    })