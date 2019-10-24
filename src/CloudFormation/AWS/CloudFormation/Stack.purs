module CloudFormation.AWS.CloudFormation.Stack where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::CloudFormation::Stack`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stack.html-- |
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
type Stack =
  { "TemplateURL" :: String
  , "NotificationARNs" :: Maybe (Array String)
  , "Parameters" :: Maybe (Object String)
  , "Tags" :: Maybe (Array Tag)
  , "TimeoutInMinutes" :: Maybe Int
  }

stack :: { "TemplateURL" :: String } -> Stack
stack required =
  merge required
    { "NotificationARNs" : Nothing
    , "Parameters" : Nothing
    , "Tags" : Nothing
    , "TimeoutInMinutes" : Nothing
    }