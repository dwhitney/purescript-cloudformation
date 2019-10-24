module CloudFormation.AWS.Batch.ComputeEnvironment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


-- | `AWS::Batch::ComputeEnvironment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html-- |
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
type ComputeEnvironment =
  { "Type" :: String
  , "ServiceRole" :: String
  , "ComputeEnvironmentName" :: Maybe String
  , "ComputeResources" :: Maybe ComputeResources
  , "State" :: Maybe String
  }

computeEnvironment :: { "Type" :: String, "ServiceRole" :: String } -> ComputeEnvironment
computeEnvironment required =
  merge required
    { "ComputeEnvironmentName" : Nothing
    , "ComputeResources" : Nothing
    , "State" : Nothing
    }

-- | `AWS::Batch::ComputeEnvironment.ComputeResources`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-computeresources.html-- |
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
  { "MaxvCpus" :: Int
  , "Subnets" :: Array String
  , "Type" :: String
  , "MinvCpus" :: Int
  , "InstanceRole" :: String
  , "InstanceTypes" :: Array String
  , "SpotIamFleetRole" :: Maybe String
  , "BidPercentage" :: Maybe Int
  , "SecurityGroupIds" :: Maybe (Array String)
  , "AllocationStrategy" :: Maybe String
  , "LaunchTemplate" :: Maybe LaunchTemplateSpecification
  , "ImageId" :: Maybe String
  , "Ec2KeyPair" :: Maybe String
  , "PlacementGroup" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "DesiredvCpus" :: Maybe Int
  }

computeResources :: { "MaxvCpus" :: Int, "Subnets" :: Array String, "Type" :: String, "MinvCpus" :: Int, "InstanceRole" :: String, "InstanceTypes" :: Array String } -> ComputeResources
computeResources required =
  merge required
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
    }

-- | `AWS::Batch::ComputeEnvironment.LaunchTemplateSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html-- |
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-launchtemplatename
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-version
-- | - `LaunchTemplateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecification.html#cfn-batch-computeenvironment-launchtemplatespecification-launchtemplateid
type LaunchTemplateSpecification =
  { "LaunchTemplateName" :: Maybe String
  , "Version" :: Maybe String
  , "LaunchTemplateId" :: Maybe String
  }

launchTemplateSpecification :: LaunchTemplateSpecification
launchTemplateSpecification =
  { "LaunchTemplateName" : Nothing
  , "Version" : Nothing
  , "LaunchTemplateId" : Nothing
  }