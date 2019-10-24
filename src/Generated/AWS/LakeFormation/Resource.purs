module CloudFormation.AWS.LakeFormation.Resource where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::LakeFormation::Resource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html
-- |
-- | - `ResourceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-resourcearn
-- | - `UseServiceLinkedRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-useservicelinkedrole
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-resource.html#cfn-lakeformation-resource-rolearn
type Resource =
  { "ResourceArn" :: String
  , "UseServiceLinkedRole" :: Boolean
  , "RoleArn" :: Maybe String
  }

resource :: { "ResourceArn" :: String, "UseServiceLinkedRole" :: Boolean } -> Resource
resource required =
  merge required
    { "RoleArn" : Nothing
    }