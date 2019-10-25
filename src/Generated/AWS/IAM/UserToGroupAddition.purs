module CloudFormation.AWS.IAM.UserToGroupAddition where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IAM::UserToGroupAddition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-groupname
-- | - `Users`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-users
newtype UserToGroupAddition = UserToGroupAddition
  { "GroupName" :: Value String
  , "Users" :: Value (Array String)
  }

derive instance newtypeUserToGroupAddition :: Newtype UserToGroupAddition _
derive newtype instance writeUserToGroupAddition :: WriteForeign UserToGroupAddition
instance resourceUserToGroupAddition :: Resource UserToGroupAddition where type_ _ = "AWS::IAM::UserToGroupAddition"

userToGroupAddition :: { "GroupName" :: Value String, "Users" :: Value (Array String) } -> UserToGroupAddition
userToGroupAddition required = UserToGroupAddition
  required