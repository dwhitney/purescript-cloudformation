module CloudFormation.AWS.ServiceCatalog.TagOption where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::TagOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html
-- |
-- | - `Active`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-active
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-tagoption.html#cfn-servicecatalog-tagoption-key
newtype TagOption = TagOption
  { "Value" :: String
  , "Key" :: String
  , "Active" :: Maybe Boolean
  }

derive instance newtypeTagOption :: Newtype TagOption _
instance resourceTagOption :: Resource TagOption where type_ _ = "AWS::ServiceCatalog::TagOption"

tagOption :: { "Value" :: String, "Key" :: String } -> TagOption
tagOption required = TagOption
  (merge required
    { "Active" : Nothing
    })