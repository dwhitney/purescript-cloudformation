module CloudFormation.AWS.IAM.UserToGroupAddition where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IAM::UserToGroupAddition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-groupname
-- | - `Users`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-users
newtype UserToGroupAddition = UserToGroupAddition
  { "GroupName" :: String
  , "Users" :: Array String
  }

derive instance newtypeUserToGroupAddition :: Newtype UserToGroupAddition _
instance resourceUserToGroupAddition :: Resource UserToGroupAddition where type_ _ = "AWS::IAM::UserToGroupAddition"

userToGroupAddition :: { "GroupName" :: String, "Users" :: Array String } -> UserToGroupAddition
userToGroupAddition required = UserToGroupAddition
  required