module CloudFormation.AWS.ServiceCatalog.TagOptionAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::TagOptionAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html
-- |
-- | - `TagOptionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-tagoptionid
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-resourceid
newtype TagOptionAssociation = TagOptionAssociation
  { "TagOptionId" :: String
  , "ResourceId" :: String
  }

derive instance newtypeTagOptionAssociation :: Newtype TagOptionAssociation _
instance resourceTagOptionAssociation :: Resource TagOptionAssociation where type_ _ = "AWS::ServiceCatalog::TagOptionAssociation"

tagOptionAssociation :: { "TagOptionId" :: String, "ResourceId" :: String } -> TagOptionAssociation
tagOptionAssociation required = TagOptionAssociation
  required