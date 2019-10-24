module CloudFormation.AWS.LakeFormation.Resource where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ResourceArn" :: String
  , "UseServiceLinkedRole" :: Boolean
  , "RoleArn" :: Maybe String
  }

derive instance newtypeResource :: Newtype Resource _
instance resourceResource :: Resource Resource where type_ _ = "AWS::LakeFormation::Resource"

resource :: { "ResourceArn" :: String, "UseServiceLinkedRole" :: Boolean } -> Resource
resource required = Resource
  (merge required
    { "RoleArn" : Nothing
    })