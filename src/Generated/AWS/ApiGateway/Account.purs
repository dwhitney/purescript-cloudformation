module CloudFormation.AWS.ApiGateway.Account where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::Account`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html
-- |
-- | - `CloudWatchRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html#cfn-apigateway-account-cloudwatchrolearn
newtype Account = Account
  { "CloudWatchRoleArn" :: Maybe (Value String)
  }

derive instance newtypeAccount :: Newtype Account _
derive newtype instance writeAccount :: WriteForeign Account
instance resourceAccount :: Resource Account where type_ _ = "AWS::ApiGateway::Account"

account :: Account
account = Account
  { "CloudWatchRoleArn" : Nothing
  }