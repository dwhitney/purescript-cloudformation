module CloudFormation.AWS.Inspector.ResourceGroup where 

import CloudFormation.Tag (Tag)


type ResourceGroup =
  { "ResourceGroupTags" :: Array Tag
  }

resourceGroup :: { "ResourceGroupTags" :: Array Tag } -> ResourceGroup
resourceGroup required =
  required