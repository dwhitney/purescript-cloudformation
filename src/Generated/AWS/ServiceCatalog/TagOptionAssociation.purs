module CloudFormation.AWS.ServiceCatalog.TagOptionAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::TagOptionAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html
-- |
-- | - `TagOptionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-tagoptionid
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoptionassociation.html#cfn-servicecatalog-tagoptionassociation-resourceid
newtype TagOptionAssociation = TagOptionAssociation
  { "TagOptionId" :: Value String
  , "ResourceId" :: Value String
  }

derive instance newtypeTagOptionAssociation :: Newtype TagOptionAssociation _
derive newtype instance writeTagOptionAssociation :: WriteForeign TagOptionAssociation
instance resourceTagOptionAssociation :: Resource TagOptionAssociation where type_ _ = "AWS::ServiceCatalog::TagOptionAssociation"

tagOptionAssociation :: { "TagOptionId" :: Value String, "ResourceId" :: Value String } -> TagOptionAssociation
tagOptionAssociation required = TagOptionAssociation
  required