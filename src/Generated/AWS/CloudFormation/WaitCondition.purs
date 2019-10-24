module CloudFormation.AWS.CloudFormation.WaitCondition where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::CloudFormation::WaitCondition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html
-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-count
-- | - `Handle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-handle
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitcondition.html#cfn-waitcondition-timeout
newtype WaitCondition = WaitCondition
  { "Count" :: Maybe Int
  , "Handle" :: Maybe String
  , "Timeout" :: Maybe String
  }

derive instance newtypeWaitCondition :: Newtype WaitCondition _
instance resourceWaitCondition :: Resource WaitCondition where type_ _ = "AWS::CloudFormation::WaitCondition"

waitCondition :: WaitCondition
waitCondition = WaitCondition
  { "Count" : Nothing
  , "Handle" : Nothing
  , "Timeout" : Nothing
  }