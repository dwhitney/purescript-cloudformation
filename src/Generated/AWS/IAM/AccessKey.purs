module CloudFormation.AWS.IAM.AccessKey where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IAM::AccessKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
-- |
-- | - `Serial`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-serial
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-status
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-username
newtype AccessKey = AccessKey
  { "UserName" :: String
  , "Serial" :: Maybe Int
  , "Status" :: Maybe String
  }

derive instance newtypeAccessKey :: Newtype AccessKey _
instance resourceAccessKey :: Resource AccessKey where type_ _ = "AWS::IAM::AccessKey"

accessKey :: { "UserName" :: String } -> AccessKey
accessKey required = AccessKey
  (merge required
    { "Serial" : Nothing
    , "Status" : Nothing
    })