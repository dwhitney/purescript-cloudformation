module CloudFormation.AWS.IAM.InstanceProfile where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Roles" :: Array String
  , "InstanceProfileName" :: Maybe String
  , "Path" :: Maybe String
  }

derive instance newtypeInstanceProfile :: Newtype InstanceProfile _
instance resourceInstanceProfile :: Resource InstanceProfile where type_ _ = "AWS::IAM::InstanceProfile"

instanceProfile :: { "Roles" :: Array String } -> InstanceProfile
instanceProfile required = InstanceProfile
  (merge required
    { "InstanceProfileName" : Nothing
    , "Path" : Nothing
    })