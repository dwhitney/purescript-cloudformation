module AWS.ServiceCatalog.TagOptionAssociation where 




type TagOptionAssociation =
  { "TagOptionId" :: String
  , "ResourceId" :: String
  }

tagOptionAssociation :: { "TagOptionId" :: String, "ResourceId" :: String } -> TagOptionAssociation
tagOptionAssociation required =
  required