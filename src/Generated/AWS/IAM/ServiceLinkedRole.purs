module CloudFormation.AWS.IAM.ServiceLinkedRole where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IAM::ServiceLinkedRole`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html
-- |
-- | - `CustomSuffix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-customsuffix
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-description
-- | - `AWSServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-awsservicename
newtype ServiceLinkedRole = ServiceLinkedRole
  { "AWSServiceName" :: String
  , "CustomSuffix" :: Maybe String
  , "Description" :: Maybe String
  }

derive instance newtypeServiceLinkedRole :: Newtype ServiceLinkedRole _
instance resourceServiceLinkedRole :: Resource ServiceLinkedRole where type_ _ = "AWS::IAM::ServiceLinkedRole"

serviceLinkedRole :: { "AWSServiceName" :: String } -> ServiceLinkedRole
serviceLinkedRole required = ServiceLinkedRole
  (merge required
    { "CustomSuffix" : Nothing
    , "Description" : Nothing
    })