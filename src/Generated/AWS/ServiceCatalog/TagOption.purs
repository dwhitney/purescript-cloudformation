module CloudFormation.AWS.ServiceCatalog.TagOption where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Value" :: Value String
  , "Key" :: Value String
  , "Active" :: Maybe (Value Boolean)
  }

derive instance newtypeTagOption :: Newtype TagOption _
derive newtype instance writeTagOption :: WriteForeign TagOption
instance resourceTagOption :: Resource TagOption where type_ _ = "AWS::ServiceCatalog::TagOption"

tagOption :: { "Value" :: Value String, "Key" :: Value String } -> TagOption
tagOption required = TagOption
  (merge required
    { "Active" : Nothing
    })