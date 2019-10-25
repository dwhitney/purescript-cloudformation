module CloudFormation.AWS.CloudFormation.Stack where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudFormation::Stack`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html
-- |
-- | - `NotificationARNs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-notificationarns
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-parameters
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-tags
-- | - `TemplateURL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-templateurl
-- | - `TimeoutInMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html#cfn-cloudformation-stack-timeoutinminutes
newtype Stack = Stack
  { "TemplateURL" :: Value String
  , "NotificationARNs" :: Maybe (Value (Array String))
  , "Parameters" :: Maybe (Value (Object String))
  , "Tags" :: Maybe (Value (Array Tag))
  , "TimeoutInMinutes" :: Maybe (Value Int)
  }

derive instance newtypeStack :: Newtype Stack _
derive newtype instance writeStack :: WriteForeign Stack
instance resourceStack :: Resource Stack where type_ _ = "AWS::CloudFormation::Stack"

stack :: { "TemplateURL" :: Value String } -> Stack
stack required = Stack
  (merge required
    { "NotificationARNs" : Nothing
    , "Parameters" : Nothing
    , "Tags" : Nothing
    , "TimeoutInMinutes" : Nothing
    })