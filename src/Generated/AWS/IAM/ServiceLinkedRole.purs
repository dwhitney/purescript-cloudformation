module CloudFormation.AWS.IAM.ServiceLinkedRole where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "AWSServiceName" :: Value String
  , "CustomSuffix" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeServiceLinkedRole :: Newtype ServiceLinkedRole _
derive newtype instance writeServiceLinkedRole :: WriteForeign ServiceLinkedRole
instance resourceServiceLinkedRole :: Resource ServiceLinkedRole where type_ _ = "AWS::IAM::ServiceLinkedRole"

serviceLinkedRole :: { "AWSServiceName" :: Value String } -> ServiceLinkedRole
serviceLinkedRole required = ServiceLinkedRole
  (merge required
    { "CustomSuffix" : Nothing
    , "Description" : Nothing
    })