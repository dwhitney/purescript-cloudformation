module CloudFormation.AWS.CloudFormation.Stack where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "TemplateURL" :: String
  , "NotificationARNs" :: Maybe (Array String)
  , "Parameters" :: Maybe (Object String)
  , "Tags" :: Maybe (Array Tag)
  , "TimeoutInMinutes" :: Maybe Int
  }

derive instance newtypeStack :: Newtype Stack _
instance resourceStack :: Resource Stack where type_ _ = "AWS::CloudFormation::Stack"

stack :: { "TemplateURL" :: String } -> Stack
stack required = Stack
  (merge required
    { "NotificationARNs" : Nothing
    , "Parameters" : Nothing
    , "Tags" : Nothing
    , "TimeoutInMinutes" : Nothing
    })