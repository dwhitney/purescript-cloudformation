module CloudFormation.AWS.IAM.ServiceLinkedRole where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::IAM::ServiceLinkedRole`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html
-- |
-- | - `CustomSuffix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-customsuffix
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-description
-- | - `AWSServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-servicelinkedrole.html#cfn-iam-servicelinkedrole-awsservicename
type ServiceLinkedRole =
  { "AWSServiceName" :: String
  , "CustomSuffix" :: Maybe String
  , "Description" :: Maybe String
  }

serviceLinkedRole :: { "AWSServiceName" :: String } -> ServiceLinkedRole
serviceLinkedRole required =
  merge required
    { "CustomSuffix" : Nothing
    , "Description" : Nothing
    }