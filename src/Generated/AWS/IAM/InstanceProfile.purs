module CloudFormation.AWS.IAM.InstanceProfile where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IAM::InstanceProfile`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html
-- |
-- | - `InstanceProfileName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-instanceprofilename
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-path
-- | - `Roles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-roles
newtype InstanceProfile = InstanceProfile
  { "Roles" :: Value (Array String)
  , "InstanceProfileName" :: Maybe (Value String)
  , "Path" :: Maybe (Value String)
  }

derive instance newtypeInstanceProfile :: Newtype InstanceProfile _
derive newtype instance writeInstanceProfile :: WriteForeign InstanceProfile
instance resourceInstanceProfile :: Resource InstanceProfile where type_ _ = "AWS::IAM::InstanceProfile"

instanceProfile :: { "Roles" :: Value (Array String) } -> InstanceProfile
instanceProfile required = InstanceProfile
  (merge required
    { "InstanceProfileName" : Nothing
    , "Path" : Nothing
    })