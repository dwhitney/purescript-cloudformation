module CloudFormation.AWS.Lambda.Permission where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Lambda::Permission`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-action
-- | - `EventSourceToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-eventsourcetoken
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-functionname
-- | - `Principal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-principal
-- | - `SourceAccount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-sourceaccount
-- | - `SourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html#cfn-lambda-permission-sourcearn
newtype Permission = Permission
  { "Action" :: String
  , "FunctionName" :: String
  , "Principal" :: String
  , "EventSourceToken" :: Maybe String
  , "SourceAccount" :: Maybe String
  , "SourceArn" :: Maybe String
  }

derive instance newtypePermission :: Newtype Permission _
instance resourcePermission :: Resource Permission where type_ _ = "AWS::Lambda::Permission"

permission :: { "Action" :: String, "FunctionName" :: String, "Principal" :: String } -> Permission
permission required = Permission
  (merge required
    { "EventSourceToken" : Nothing
    , "SourceAccount" : Nothing
    , "SourceArn" : Nothing
    })