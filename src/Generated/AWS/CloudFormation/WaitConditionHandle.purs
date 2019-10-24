module CloudFormation.AWS.CloudFormation.WaitConditionHandle where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::CloudFormation::WaitConditionHandle`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waitconditionhandle.html
-- |

newtype WaitConditionHandle = WaitConditionHandle
  { 
  }

derive instance newtypeWaitConditionHandle :: Newtype WaitConditionHandle _
instance resourceWaitConditionHandle :: Resource WaitConditionHandle where type_ _ = "AWS::CloudFormation::WaitConditionHandle"

waitConditionHandle :: WaitConditionHandle
waitConditionHandle = WaitConditionHandle {}