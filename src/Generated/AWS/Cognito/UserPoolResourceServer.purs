module CloudFormation.AWS.Cognito.UserPoolResourceServer where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "UserPoolId" :: String
  , "Identifier" :: String
  , "Name" :: String
  , "Scopes" :: Maybe (Array ResourceServerScopeType)
  }

derive instance newtypeUserPoolResourceServer :: Newtype UserPoolResourceServer _
instance resourceUserPoolResourceServer :: Resource UserPoolResourceServer where type_ _ = "AWS::Cognito::UserPoolResourceServer"

userPoolResourceServer :: { "UserPoolId" :: String, "Identifier" :: String, "Name" :: String } -> UserPoolResourceServer
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
  { "ScopeName" :: String
  , "ScopeDescription" :: String
  }

resourceServerScopeType :: { "ScopeName" :: String, "ScopeDescription" :: String } -> ResourceServerScopeType
resourceServerScopeType required =
  required