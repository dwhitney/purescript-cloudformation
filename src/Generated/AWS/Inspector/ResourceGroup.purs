module CloudFormation.AWS.Inspector.ResourceGroup where 

import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Inspector::ResourceGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html
-- |
-- | - `ResourceGroupTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html#cfn-inspector-resourcegroup-resourcegrouptags
newtype ResourceGroup = ResourceGroup
  { "ResourceGroupTags" :: Array Tag
  }

derive instance newtypeResourceGroup :: Newtype ResourceGroup _
instance resourceResourceGroup :: Resource ResourceGroup where type_ _ = "AWS::Inspector::ResourceGroup"

resourceGroup :: { "ResourceGroupTags" :: Array Tag } -> ResourceGroup
resourceGroup required = ResourceGroup
  required