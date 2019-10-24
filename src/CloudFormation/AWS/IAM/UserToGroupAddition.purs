module CloudFormation.AWS.IAM.UserToGroupAddition where 




-- | `AWS::IAM::UserToGroupAddition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html
-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-groupname
-- | - `Users`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-users
type UserToGroupAddition =
  { "GroupName" :: String
  , "Users" :: Array String
  }

userToGroupAddition :: { "GroupName" :: String, "Users" :: Array String } -> UserToGroupAddition
userToGroupAddition required =
  required