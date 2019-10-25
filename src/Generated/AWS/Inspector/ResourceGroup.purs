module CloudFormation.AWS.Inspector.ResourceGroup where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Inspector::ResourceGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html
-- |
-- | - `ResourceGroupTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-inspector-resourcegroup.html#cfn-inspector-resourcegroup-resourcegrouptags
newtype ResourceGroup = ResourceGroup
  { "ResourceGroupTags" :: Value (Array Tag)
  }

derive instance newtypeResourceGroup :: Newtype ResourceGroup _
derive newtype instance writeResourceGroup :: WriteForeign ResourceGroup
instance resourceResourceGroup :: Resource ResourceGroup where type_ _ = "AWS::Inspector::ResourceGroup"

resourceGroup :: { "ResourceGroupTags" :: Value (Array Tag) } -> ResourceGroup
resourceGroup required = ResourceGroup
  required