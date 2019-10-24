module CloudFormation.AWS.SSM.MaintenanceWindowTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SSM::MaintenanceWindowTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html
-- |
-- | - `OwnerInformation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-ownerinformation
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-description
-- | - `WindowId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-windowid
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-resourcetype
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-targets
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtarget.html#cfn-ssm-maintenancewindowtarget-name
type MaintenanceWindowTarget =
  { "WindowId" :: String
  , "ResourceType" :: String
  , "Targets" :: Array Targets
  , "OwnerInformation" :: Maybe String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  }

maintenanceWindowTarget :: { "WindowId" :: String, "ResourceType" :: String, "Targets" :: Array Targets } -> MaintenanceWindowTarget
maintenanceWindowTarget required =
  merge required
    { "OwnerInformation" : Nothing
    , "Description" : Nothing
    , "Name" : Nothing
    }

-- | `AWS::SSM::MaintenanceWindowTarget.Targets`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-values
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-key
type Targets =
  { "Key" :: String
  , "Values" :: Maybe (Array String)
  }

targets :: { "Key" :: String } -> Targets
targets required =
  merge required
    { "Values" : Nothing
    }