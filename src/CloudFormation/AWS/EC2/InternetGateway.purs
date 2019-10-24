module CloudFormation.AWS.EC2.InternetGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))


-- | `AWS::EC2::InternetGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html#cfn-ec2-internetgateway-tags
type InternetGateway =
  { "Tags" :: Maybe (Array Tag)
  }

internetGateway :: InternetGateway
internetGateway =
  { "Tags" : Nothing
  }