module CloudFormation.AWS.CloudFormation.Macro where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CloudFormation::Macro`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-description
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-functionname
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-loggroupname
-- | - `LogRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-logrolearn
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html#cfn-cloudformation-macro-name
type Macro =
  { "FunctionName" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "LogGroupName" :: Maybe String
  , "LogRoleARN" :: Maybe String
  }

macro :: { "FunctionName" :: String, "Name" :: String } -> Macro
macro required =
  merge required
    { "Description" : Nothing
    , "LogGroupName" : Nothing
    , "LogRoleARN" : Nothing
    }