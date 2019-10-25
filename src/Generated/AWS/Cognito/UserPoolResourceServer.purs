module CloudFormation.AWS.Cognito.UserPoolResourceServer where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Cognito::UserPoolResourceServer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html
-- |
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-userpoolid
-- | - `Identifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-identifier
-- | - `Scopes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-scopes
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolresourceserver.html#cfn-cognito-userpoolresourceserver-name
newtype UserPoolResourceServer = UserPoolResourceServer
  { "UserPoolId" :: Value String
  , "Identifier" :: Value String
  , "Name" :: Value String
  , "Scopes" :: Maybe (Value (Array ResourceServerScopeType))
  }

derive instance newtypeUserPoolResourceServer :: Newtype UserPoolResourceServer _
derive newtype instance writeUserPoolResourceServer :: WriteForeign UserPoolResourceServer
instance resourceUserPoolResourceServer :: Resource UserPoolResourceServer where type_ _ = "AWS::Cognito::UserPoolResourceServer"

userPoolResourceServer :: { "UserPoolId" :: Value String, "Identifier" :: Value String, "Name" :: Value String } -> UserPoolResourceServer
userPoolResourceServer required = UserPoolResourceServer
  (merge required
    { "Scopes" : Nothing
    })

-- | `AWS::Cognito::UserPoolResourceServer.ResourceServerScopeType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html
-- |
-- | - `ScopeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html#cfn-cognito-userpoolresourceserver-resourceserverscopetype-scopename
-- | - `ScopeDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolresourceserver-resourceserverscopetype.html#cfn-cognito-userpoolresourceserver-resourceserverscopetype-scopedescription
type ResourceServerScopeType =
  { "ScopeName" :: Value String
  , "ScopeDescription" :: Value String
  }

resourceServerScopeType :: { "ScopeName" :: Value String, "ScopeDescription" :: Value String } -> ResourceServerScopeType
resourceServerScopeType required =
  required