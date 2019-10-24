module CloudFormation.AWS.WAFRegional.WebACLAssociation where 




type WebACLAssociation =
  { "ResourceArn" :: String
  , "WebACLId" :: String
  }

webACLAssociation :: { "ResourceArn" :: String, "WebACLId" :: String } -> WebACLAssociation
webACLAssociation required =
  required