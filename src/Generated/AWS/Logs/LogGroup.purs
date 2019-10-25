module CloudFormation.AWS.Logs.LogGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Logs::LogGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html
-- |
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-loggroupname
-- | - `RetentionInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-retentionindays
newtype LogGroup = LogGroup
  { "LogGroupName" :: Maybe (Value String)
  , "RetentionInDays" :: Maybe (Value Int)
  }

derive instance newtypeLogGroup :: Newtype LogGroup _
derive newtype instance writeLogGroup :: WriteForeign LogGroup
instance resourceLogGroup :: Resource LogGroup where type_ _ = "AWS::Logs::LogGroup"

logGroup :: LogGroup
logGroup = LogGroup
  { "LogGroupName" : Nothing
  , "RetentionInDays" : Nothing
  }