module CloudFormation.AWS.Glue.Workflow where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype Workflow = Workflow
  { "Description" :: Maybe String
  , "DefaultRunProperties" :: Maybe CF.Json
  , "Tags" :: Maybe CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeWorkflow :: Newtype Workflow _
instance resourceWorkflow :: Resource Workflow where type_ _ = "AWS::Glue::Workflow"

workflow :: Workflow
workflow = Workflow
  { "Description" : Nothing
  , "DefaultRunProperties" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }