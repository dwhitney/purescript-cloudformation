module AWS.Batch.ComputeEnvironment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


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