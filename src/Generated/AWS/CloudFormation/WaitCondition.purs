module CloudFormation.AWS.CloudFormation.WaitCondition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Count" :: Maybe (Value Int)
  , "Handle" :: Maybe (Value String)
  , "Timeout" :: Maybe (Value String)
  }

derive instance newtypeWaitCondition :: Newtype WaitCondition _
derive newtype instance writeWaitCondition :: WriteForeign WaitCondition
instance resourceWaitCondition :: Resource WaitCondition where type_ _ = "AWS::CloudFormation::WaitCondition"

waitCondition :: WaitCondition
waitCondition = WaitCondition
  { "Count" : Nothing
  , "Handle" : Nothing
  , "Timeout" : Nothing
  }