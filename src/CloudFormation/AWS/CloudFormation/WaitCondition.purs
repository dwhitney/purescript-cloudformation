module CloudFormation.AWS.CloudFormation.WaitCondition where 

import Data.Maybe (Maybe(..))


-- | `AWS::CloudFormation::WaitCondition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-count
-- | - `Handle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-handle
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-timeout
type WaitCondition =
  { "Count" :: Maybe Int
  , "Handle" :: Maybe String
  , "Timeout" :: Maybe String
  }

waitCondition :: WaitCondition
waitCondition =
  { "Count" : Nothing
  , "Handle" : Nothing
  , "Timeout" : Nothing
  }