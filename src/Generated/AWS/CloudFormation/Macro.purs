module CloudFormation.AWS.CloudFormation.Macro where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudFormation::Macro`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudformation-macro.html
-- |
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
newtype Macro = Macro
  { "FunctionName" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "LogGroupName" :: Maybe (Value String)
  , "LogRoleARN" :: Maybe (Value String)
  }

derive instance newtypeMacro :: Newtype Macro _
derive newtype instance writeMacro :: WriteForeign Macro
instance resourceMacro :: Resource Macro where type_ _ = "AWS::CloudFormation::Macro"

macro :: { "FunctionName" :: Value String, "Name" :: Value String } -> Macro
macro required = Macro
  (merge required
    { "Description" : Nothing
    , "LogGroupName" : Nothing
    , "LogRoleARN" : Nothing
    })