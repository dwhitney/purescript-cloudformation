module CloudFormation.AWS.EMR.Step where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
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
  { "ActionOnFailure" :: String
  , "HadoopJarStep" :: HadoopJarStepConfig
  , "JobFlowId" :: String
  , "Name" :: String
  }

derive instance newtypeStep :: Newtype Step _
instance resourceStep :: Resource Step where type_ _ = "AWS::EMR::Step"

step :: { "ActionOnFailure" :: String, "HadoopJarStep" :: HadoopJarStepConfig, "JobFlowId" :: String, "Name" :: String } -> Step
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
  { "Key" :: Maybe String
  , "Value" :: Maybe String
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
  { "Jar" :: String
  , "Args" :: Maybe (Array String)
  , "MainClass" :: Maybe String
  , "StepProperties" :: Maybe (Array KeyValue)
  }

hadoopJarStepConfig :: { "Jar" :: String } -> HadoopJarStepConfig
hadoopJarStepConfig required =
  (merge required
    { "Args" : Nothing
    , "MainClass" : Nothing
    , "StepProperties" : Nothing
    })