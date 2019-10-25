module CloudFormation.AWS.EC2.InternetGateway where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::InternetGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html#cfn-ec2-internetgateway-tags
newtype InternetGateway = InternetGateway
  { "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeInternetGateway :: Newtype InternetGateway _
derive newtype instance writeInternetGateway :: WriteForeign InternetGateway
instance resourceInternetGateway :: Resource InternetGateway where type_ _ = "AWS::EC2::InternetGateway"

internetGateway :: InternetGateway
internetGateway = InternetGateway
  { "Tags" : Nothing
  }