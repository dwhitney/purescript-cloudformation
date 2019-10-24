module CloudFormation.AWS.ServiceCatalog.TagOptionAssociation where 




-- | `AWS::ServiceCatalog::TagOptionAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html-- |
-- | - `TagOptionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-tagoptionid
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-resourceid
type TagOptionAssociation =
  { "TagOptionId" :: String
  , "ResourceId" :: String
  }

tagOptionAssociation :: { "TagOptionId" :: String, "ResourceId" :: String } -> TagOptionAssociation
tagOptionAssociation required =
  required