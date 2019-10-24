module CloudFormation.AWS.IAM.InstanceProfile where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::IAM::InstanceProfile`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html-- |
-- | - `InstanceProfileName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-instanceprofilename
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-path
-- | - `Roles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-roles
type InstanceProfile =
  { "Roles" :: Array String
  , "InstanceProfileName" :: Maybe String
  , "Path" :: Maybe String
  }

instanceProfile :: { "Roles" :: Array String } -> InstanceProfile
instanceProfile required =
  merge required
    { "InstanceProfileName" : Nothing
    , "Path" : Nothing
    }