module CloudFormation.AWS.Logs.LogGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Logs::LogGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html
-- |
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-loggroupname
-- | - `RetentionInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-retentionindays
newtype LogGroup = LogGroup
  { "LogGroupName" :: Maybe String
  , "RetentionInDays" :: Maybe Int
  }

derive instance newtypeLogGroup :: Newtype LogGroup _
instance resourceLogGroup :: Resource LogGroup where type_ _ = "AWS::Logs::LogGroup"

logGroup :: LogGroup
logGroup = LogGroup
  { "LogGroupName" : Nothing
  , "RetentionInDays" : Nothing
  }