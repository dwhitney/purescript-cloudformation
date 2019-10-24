module CloudFormation.AWS.IoT1Click.Project where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


-- | `AWS::IoT1Click::Project`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-description
-- | - `PlacementTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-placementtemplate
-- | - `ProjectName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot1click-project.html#cfn-iot1click-project-projectname
type Project =
  { "PlacementTemplate" :: PlacementTemplate
  , "Description" :: Maybe String
  , "ProjectName" :: Maybe String
  }

project :: { "PlacementTemplate" :: PlacementTemplate } -> Project
project required =
  merge required
    { "Description" : Nothing
    , "ProjectName" : Nothing
    }

-- | `AWS::IoT1Click::Project.PlacementTemplate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html-- |
-- | - `DeviceTemplates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html#cfn-iot1click-project-placementtemplate-devicetemplates
-- | - `DefaultAttributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html#cfn-iot1click-project-placementtemplate-defaultattributes
type PlacementTemplate =
  { "DeviceTemplates" :: Maybe Foreign
  , "DefaultAttributes" :: Maybe Foreign
  }

placementTemplate :: PlacementTemplate
placementTemplate =
  { "DeviceTemplates" : Nothing
  , "DefaultAttributes" : Nothing
  }

-- | `AWS::IoT1Click::Project.DeviceTemplate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html-- |
-- | - `DeviceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html#cfn-iot1click-project-devicetemplate-devicetype
-- | - `CallbackOverrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html#cfn-iot1click-project-devicetemplate-callbackoverrides
type DeviceTemplate =
  { "DeviceType" :: Maybe String
  , "CallbackOverrides" :: Maybe Foreign
  }

deviceTemplate :: DeviceTemplate
deviceTemplate =
  { "DeviceType" : Nothing
  , "CallbackOverrides" : Nothing
  }