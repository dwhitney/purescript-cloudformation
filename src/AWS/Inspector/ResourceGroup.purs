module AWS.Inspector.ResourceGroup where 

import Tag


type ResourceGroup =
  { "ResourceGroupTags" :: Array Tag
  }

resourceGroup :: { "ResourceGroupTags" :: Array Tag } -> ResourceGroup
resourceGroup required =
  required