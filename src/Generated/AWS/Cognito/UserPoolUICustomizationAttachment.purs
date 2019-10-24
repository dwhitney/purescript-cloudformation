module CloudFormation.AWS.Cognito.UserPoolUICustomizationAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Cognito::UserPoolUICustomizationAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html
-- |
-- | - `CSS`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-css
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-userpoolid
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluicustomizationattachment.html#cfn-cognito-userpooluicustomizationattachment-clientid
type UserPoolUICustomizationAttachment =
  { "UserPoolId" :: String
  , "ClientId" :: String
  , "CSS" :: Maybe String
  }

userPoolUICustomizationAttachment :: { "UserPoolId" :: String, "ClientId" :: String } -> UserPoolUICustomizationAttachment
userPoolUICustomizationAttachment required =
  merge required
    { "CSS" : Nothing
    }