module CloudFormation.AWS.IAM.AccessKey where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::IAM::AccessKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html
-- |
-- | - `Serial`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-serial
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-status
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-username
type AccessKey =
  { "UserName" :: String
  , "Serial" :: Maybe Int
  , "Status" :: Maybe String
  }

accessKey :: { "UserName" :: String } -> AccessKey
accessKey required =
  merge required
    { "Serial" : Nothing
    , "Status" : Nothing
    }