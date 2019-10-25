module CloudFormation.AWS.LakeFormation.Resource where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::LakeFormation::Resource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html
-- |
-- | - `ResourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-resourcearn
-- | - `UseServiceLinkedRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-useservicelinkedrole
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-rolearn
newtype Resource = Resource
  { "ResourceArn" :: Value String
  , "UseServiceLinkedRole" :: Value Boolean
  , "RoleArn" :: Maybe (Value String)
  }

derive instance newtypeResource :: Newtype Resource _
derive newtype instance writeResource :: WriteForeign Resource
instance resourceResource :: Resource Resource where type_ _ = "AWS::LakeFormation::Resource"

resource :: { "ResourceArn" :: Value String, "UseServiceLinkedRole" :: Value Boolean } -> Resource
resource required = Resource
  (merge required
    { "RoleArn" : Nothing
    })