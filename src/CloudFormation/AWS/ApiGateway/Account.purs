module CloudFormation.AWS.ApiGateway.Account where 

import Data.Maybe (Maybe(..))


-- | `AWS::ApiGateway::Account`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html-- |
-- | - `CloudWatchRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-account.html#cfn-apigateway-account-cloudwatchrolearn
type Account =
  { "CloudWatchRoleArn" :: Maybe String
  }

account :: Account
account =
  { "CloudWatchRoleArn" : Nothing
  }