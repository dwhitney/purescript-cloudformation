module CloudFormation.AWS.ApiGateway.Account where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::Account`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html
-- |
-- | - `CloudWatchRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html#cfn-apigateway-account-cloudwatchrolearn
newtype Account = Account
  { "CloudWatchRoleArn" :: Maybe String
  }

derive instance newtypeAccount :: Newtype Account _
instance resourceAccount :: Resource Account where type_ _ = "AWS::ApiGateway::Account"

account :: Account
account = Account
  { "CloudWatchRoleArn" : Nothing
  }