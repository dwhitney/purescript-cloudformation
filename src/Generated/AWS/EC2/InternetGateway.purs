module CloudFormation.AWS.EC2.InternetGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::InternetGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html#cfn-ec2-internetgateway-tags
newtype InternetGateway = InternetGateway
  { "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeInternetGateway :: Newtype InternetGateway _
instance resourceInternetGateway :: Resource InternetGateway where type_ _ = "AWS::EC2::InternetGateway"

internetGateway :: InternetGateway
internetGateway = InternetGateway
  { "Tags" : Nothing
  }