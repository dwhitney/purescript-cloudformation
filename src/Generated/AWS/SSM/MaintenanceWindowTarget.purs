module CloudFormation.AWS.SSM.MaintenanceWindowTarget where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype MaintenanceWindowTarget = MaintenanceWindowTarget
  { "WindowId" :: Value String
  , "ResourceType" :: Value String
  , "Targets" :: Value (Array Targets)
  , "OwnerInformation" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeMaintenanceWindowTarget :: Newtype MaintenanceWindowTarget _
derive newtype instance writeMaintenanceWindowTarget :: WriteForeign MaintenanceWindowTarget
instance resourceMaintenanceWindowTarget :: Resource MaintenanceWindowTarget where type_ _ = "AWS::SSM::MaintenanceWindowTarget"

maintenanceWindowTarget :: { "WindowId" :: Value String, "ResourceType" :: Value String, "Targets" :: Value (Array Targets) } -> MaintenanceWindowTarget
maintenanceWindowTarget required = MaintenanceWindowTarget
  (merge required
    { "OwnerInformation" : Nothing
    , "Description" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::SSM::MaintenanceWindowTarget.Targets`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-values
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtarget-targets.html#cfn-ssm-maintenancewindowtarget-targets-key
type Targets =
  { "Key" :: Value String
  , "Values" :: Maybe (Value (Array String))
  }

targets :: { "Key" :: Value String } -> Targets
targets required =
  (merge required
    { "Values" : Nothing
    })