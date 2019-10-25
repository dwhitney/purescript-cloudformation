module CloudFormation.AWS.EMR.Step where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EMR::Step`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html
-- |
-- | - `ActionOnFailure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-actiononfailure
-- | - `HadoopJarStep`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-hadoopjarstep
-- | - `JobFlowId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-jobflowid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-step.html#cfn-elasticmapreduce-step-name
newtype Step = Step
  { "ActionOnFailure" :: Value String
  , "HadoopJarStep" :: Value HadoopJarStepConfig
  , "JobFlowId" :: Value String
  , "Name" :: Value String
  }

derive instance newtypeStep :: Newtype Step _
derive newtype instance writeStep :: WriteForeign Step
instance resourceStep :: Resource Step where type_ _ = "AWS::EMR::Step"

step :: { "ActionOnFailure" :: Value String, "HadoopJarStep" :: Value HadoopJarStepConfig, "JobFlowId" :: Value String, "Name" :: Value String } -> Step
step required = Step
  required

-- | `AWS::EMR::Step.KeyValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html#cfn-elasticmapreduce-step-keyvalue-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html#cfn-elasticmapreduce-step-keyvalue-value
type KeyValue =
  { "Key" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
  }

keyValue :: KeyValue
keyValue =
  { "Key" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::EMR::Step.HadoopJarStepConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html
-- |
-- | - `Args`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-args
-- | - `Jar`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-jar
-- | - `MainClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-mainclass
-- | - `StepProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-hadoopjarstepconfig.html#cfn-elasticmapreduce-step-hadoopjarstepconfig-stepproperties
type HadoopJarStepConfig =
  { "Jar" :: Value String
  , "Args" :: Maybe (Value (Array String))
  , "MainClass" :: Maybe (Value String)
  , "StepProperties" :: Maybe (Value (Array KeyValue))
  }

hadoopJarStepConfig :: { "Jar" :: Value String } -> HadoopJarStepConfig
hadoopJarStepConfig required =
  (merge required
    { "Args" : Nothing
    , "MainClass" : Nothing
    , "StepProperties" : Nothing
    })