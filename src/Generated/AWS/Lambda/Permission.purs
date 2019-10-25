module CloudFormation.AWS.Lambda.Permission where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Action" :: Value String
  , "FunctionName" :: Value String
  , "Principal" :: Value String
  , "EventSourceToken" :: Maybe (Value String)
  , "SourceAccount" :: Maybe (Value String)
  , "SourceArn" :: Maybe (Value String)
  }

derive instance newtypePermission :: Newtype Permission _
derive newtype instance writePermission :: WriteForeign Permission
instance resourcePermission :: Resource Permission where type_ _ = "AWS::Lambda::Permission"

permission :: { "Action" :: Value String, "FunctionName" :: Value String, "Principal" :: Value String } -> Permission
permission required = Permission
  (merge required
    { "EventSourceToken" : Nothing
    , "SourceAccount" : Nothing
    , "SourceArn" : Nothing
    })