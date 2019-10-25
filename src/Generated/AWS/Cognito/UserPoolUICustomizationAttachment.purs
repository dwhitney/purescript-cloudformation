module CloudFormation.AWS.Cognito.UserPoolUICustomizationAttachment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "UserPoolId" :: Value String
  , "ClientId" :: Value String
  , "CSS" :: Maybe (Value String)
  }

derive instance newtypeUserPoolUICustomizationAttachment :: Newtype UserPoolUICustomizationAttachment _
derive newtype instance writeUserPoolUICustomizationAttachment :: WriteForeign UserPoolUICustomizationAttachment
instance resourceUserPoolUICustomizationAttachment :: Resource UserPoolUICustomizationAttachment where type_ _ = "AWS::Cognito::UserPoolUICustomizationAttachment"

userPoolUICustomizationAttachment :: { "UserPoolId" :: Value String, "ClientId" :: Value String } -> UserPoolUICustomizationAttachment
userPoolUICustomizationAttachment required = UserPoolUICustomizationAttachment
  (merge required
    { "CSS" : Nothing
    })