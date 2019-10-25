module CloudFormation.AWS.Glue.Workflow where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Maybe (Value String)
  , "DefaultRunProperties" :: Maybe (Value CF.Json)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeWorkflow :: Newtype Workflow _
derive newtype instance writeWorkflow :: WriteForeign Workflow
instance resourceWorkflow :: Resource Workflow where type_ _ = "AWS::Glue::Workflow"

workflow :: Workflow
workflow = Workflow
  { "Description" : Nothing
  , "DefaultRunProperties" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }