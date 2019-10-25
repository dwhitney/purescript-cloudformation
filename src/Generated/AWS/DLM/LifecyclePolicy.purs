module CloudFormation.AWS.DLM.LifecyclePolicy where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::DLM::LifecyclePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html
-- |
-- | - `ExecutionRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-executionrolearn
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-description
-- | - `State`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-state
-- | - `PolicyDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dlm-lifecyclepolicy.html#cfn-dlm-lifecyclepolicy-policydetails
newtype LifecyclePolicy = LifecyclePolicy
  { "ExecutionRoleArn" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "State" :: Maybe (Value String)
  , "PolicyDetails" :: Maybe (Value PolicyDetails)
  }

derive instance newtypeLifecyclePolicy :: Newtype LifecyclePolicy _
derive newtype instance writeLifecyclePolicy :: WriteForeign LifecyclePolicy
instance resourceLifecyclePolicy :: Resource LifecyclePolicy where type_ _ = "AWS::DLM::LifecyclePolicy"

lifecyclePolicy :: LifecyclePolicy
lifecyclePolicy = LifecyclePolicy
  { "ExecutionRoleArn" : Nothing
  , "Description" : Nothing
  , "State" : Nothing
  , "PolicyDetails" : Nothing
  }

-- | `AWS::DLM::LifecyclePolicy.Parameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html
-- |
-- | - `ExcludeBootVolume`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-parameters.html#cfn-dlm-lifecyclepolicy-parameters-excludebootvolume
type Parameters =
  { "ExcludeBootVolume" :: Maybe (Value Boolean)
  }

parameters :: Parameters
parameters =
  { "ExcludeBootVolume" : Nothing
  }

-- | `AWS::DLM::LifecyclePolicy.PolicyDetails`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html
-- |
-- | - `ResourceTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-resourcetypes
-- | - `Schedules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-schedules
-- | - `PolicyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-policytype
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-parameters
-- | - `TargetTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-policydetails.html#cfn-dlm-lifecyclepolicy-policydetails-targettags
type PolicyDetails =
  { "ResourceTypes" :: Maybe (Value (Array String))
  , "Schedules" :: Maybe (Value (Array Schedule))
  , "PolicyType" :: Maybe (Value String)
  , "Parameters" :: Maybe (Value Parameters)
  , "TargetTags" :: Maybe (Value (Array Tag))
  }

policyDetails :: PolicyDetails
policyDetails =
  { "ResourceTypes" : Nothing
  , "Schedules" : Nothing
  , "PolicyType" : Nothing
  , "Parameters" : Nothing
  , "TargetTags" : Nothing
  }

-- | `AWS::DLM::LifecyclePolicy.RetainRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html
-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-count
type RetainRule =
  { "Count" :: Value Int
  }

retainRule :: { "Count" :: Value Int } -> RetainRule
retainRule required =
  required

-- | `AWS::DLM::LifecyclePolicy.CreateRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html
-- |
-- | - `IntervalUnit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-intervalunit
-- | - `Times`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-times
-- | - `Interval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-interval
type CreateRule =
  { "IntervalUnit" :: Value String
  , "Interval" :: Value Int
  , "Times" :: Maybe (Value (Array String))
  }

createRule :: { "IntervalUnit" :: Value String, "Interval" :: Value Int } -> CreateRule
createRule required =
  (merge required
    { "Times" : Nothing
    })

-- | `AWS::DLM::LifecyclePolicy.Schedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html
-- |
-- | - `TagsToAdd`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-tagstoadd
-- | - `CreateRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-createrule
-- | - `VariableTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-variabletags
-- | - `RetainRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-retainrule
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-name
-- | - `CopyTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-copytags
type Schedule =
  { "TagsToAdd" :: Maybe (Value (Array Tag))
  , "CreateRule" :: Maybe (Value CreateRule)
  , "VariableTags" :: Maybe (Value (Array Tag))
  , "RetainRule" :: Maybe (Value RetainRule)
  , "Name" :: Maybe (Value String)
  , "CopyTags" :: Maybe (Value Boolean)
  }

schedule :: Schedule
schedule =
  { "TagsToAdd" : Nothing
  , "CreateRule" : Nothing
  , "VariableTags" : Nothing
  , "RetainRule" : Nothing
  , "Name" : Nothing
  , "CopyTags" : Nothing
  }