module CloudFormation.AWS.Inspector.ResourceGroup where 

import CloudFormation.Tag (Tag)


-- | `AWS::Inspector::ResourceGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html
-- |
-- | - `ResourceGroupTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html#cfn-inspector-resourcegroup-resourcegrouptags
type ResourceGroup =
  { "ResourceGroupTags" :: Array Tag
  }

resourceGroup :: { "ResourceGroupTags" :: Array Tag } -> ResourceGroup
resourceGroup required =
  required