module CloudFormation.AWS.Batch.ComputeEnvironment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::Batch::ComputeEnvironment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-type
-- | - `ServiceRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-servicerole
-- | - `ComputeEnvironmentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeenvironmentname
-- | - `ComputeResources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeresources
-- | - `State`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-state
newtype ComputeEnvironment = ComputeEnvironment
  { "Type" :: Value String
  , "ServiceRole" :: Value String
  , "ComputeEnvironmentName" :: Maybe (Value String)
  , "ComputeResources" :: Maybe (Value ComputeResources)
  , "State" :: Maybe (Value String)
  }

derive instance newtypeComputeEnvironment :: Newtype ComputeEnvironment _
derive newtype instance writeComputeEnvironment :: WriteForeign ComputeEnvironment
instance resourceComputeEnvironment :: Resource ComputeEnvironment where type_ _ = "AWS::Batch::ComputeEnvironment"

computeEnvironment :: { "Type" :: Value String, "ServiceRole" :: Value String } -> ComputeEnvironment
computeEnvironment required = ComputeEnvironment
  (merge required
    { "ComputeEnvironmentName" : Nothing
    , "ComputeResources" : Nothing
    , "State" : Nothing
    })

-- | `AWS::Batch::ComputeEnvironment.ComputeResources`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html
-- |
-- | - `SpotIamFleetRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-spotiamfleetrole
-- | - `MaxvCpus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-maxvcpus
-- | - `BidPercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-bidpercentage
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-securitygroupids
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-subnets
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-type
-- | - `AllocationStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-allocationstrategy
-- | - `MinvCpus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-minvcpus
-- | - `LaunchTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-launchtemplate
-- | - `ImageId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-imageid
-- | - `InstanceRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancerole
-- | - `InstanceTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-instancetypes
-- | - `Ec2KeyPair`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-ec2keypair
-- | - `PlacementGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-placementgroup
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-tags
-- | - `DesiredvCpus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html#cfn-batch-computeenvironment-computeresources-desiredvcpus
type ComputeResources =
  { "MaxvCpus" :: Value Int
  , "Subnets" :: Value (Array String)
  , "Type" :: Value String
  , "MinvCpus" :: Value Int
  , "InstanceRole" :: Value String
  , "InstanceTypes" :: Value (Array String)
  , "SpotIamFleetRole" :: Maybe (Value String)
  , "BidPercentage" :: Maybe (Value Int)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "AllocationStrategy" :: Maybe (Value String)
  , "LaunchTemplate" :: Maybe (Value LaunchTemplateSpecification)
  , "ImageId" :: Maybe (Value String)
  , "Ec2KeyPair" :: Maybe (Value String)
  , "PlacementGroup" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "DesiredvCpus" :: Maybe (Value Int)
  }

computeResources :: { "MaxvCpus" :: Value Int, "Subnets" :: Value (Array String), "Type" :: Value String, "MinvCpus" :: Value Int, "InstanceRole" :: Value String, "InstanceTypes" :: Value (Array String) } -> ComputeResources
computeResources required =
  (merge required
    { "SpotIamFleetRole" : Nothing
    , "BidPercentage" : Nothing
    , "SecurityGroupIds" : Nothing
    , "AllocationStrategy" : Nothing
    , "LaunchTemplate" : Nothing
    , "ImageId" : Nothing
    , "Ec2KeyPair" : Nothing
    , "PlacementGroup" : Nothing
    , "Tags" : Nothing
    , "DesiredvCpus" : Nothing
    })

-- | `AWS::Batch::ComputeEnvironment.LaunchTemplateSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html
-- |
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-launchtemplatename
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-version
-- | - `LaunchTemplateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-launchtemplateid
type LaunchTemplateSpecification =
  { "LaunchTemplateName" :: Maybe (Value String)
  , "Version" :: Maybe (Value String)
  , "LaunchTemplateId" :: Maybe (Value String)
  }

launchTemplateSpecification :: LaunchTemplateSpecification
launchTemplateSpecification =
  { "LaunchTemplateName" : Nothing
  , "Version" : Nothing
  , "LaunchTemplateId" : Nothing
  }