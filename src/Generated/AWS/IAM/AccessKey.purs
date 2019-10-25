module CloudFormation.AWS.IAM.AccessKey where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "UserName" :: Value String
  , "Serial" :: Maybe (Value Int)
  , "Status" :: Maybe (Value String)
  }

derive instance newtypeAccessKey :: Newtype AccessKey _
derive newtype instance writeAccessKey :: WriteForeign AccessKey
instance resourceAccessKey :: Resource AccessKey where type_ _ = "AWS::IAM::AccessKey"

accessKey :: { "UserName" :: Value String } -> AccessKey
accessKey required = AccessKey
  (merge required
    { "Serial" : Nothing
    , "Status" : Nothing
    })