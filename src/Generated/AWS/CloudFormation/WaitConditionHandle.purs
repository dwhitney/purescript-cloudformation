module CloudFormation.AWS.CloudFormation.WaitConditionHandle where 

import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudFormation::WaitConditionHandle`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitconditionhandle.html
-- |

newtype WaitConditionHandle = WaitConditionHandle
  { 
  }

derive instance newtypeWaitConditionHandle :: Newtype WaitConditionHandle _
derive newtype instance writeWaitConditionHandle :: WriteForeign WaitConditionHandle
instance resourceWaitConditionHandle :: Resource WaitConditionHandle where type_ _ = "AWS::CloudFormation::WaitConditionHandle"

waitConditionHandle :: WaitConditionHandle
waitConditionHandle = WaitConditionHandle {}