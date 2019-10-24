module CloudFormation.AWS.Logs.LogGroup where 

import Data.Maybe (Maybe(..))


-- | `AWS::Logs::LogGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html
-- |
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-loggroupname
-- | - `RetentionInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-cwl-loggroup-retentionindays
type LogGroup =
  { "LogGroupName" :: Maybe String
  , "RetentionInDays" :: Maybe Int
  }

logGroup :: LogGroup
logGroup =
  { "LogGroupName" : Nothing
  , "RetentionInDays" : Nothing
  }