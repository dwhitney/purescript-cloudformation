module CloudFormation.AWS.Glue.Workflow where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


-- | `AWS::Glue::Workflow`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-description
-- | - `DefaultRunProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-defaultrunproperties
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-workflow.html#cfn-glue-workflow-name
type Workflow =
  { "Description" :: Maybe String
  , "DefaultRunProperties" :: Maybe Foreign
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

workflow :: Workflow
workflow =
  { "Description" : Nothing
  , "DefaultRunProperties" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }