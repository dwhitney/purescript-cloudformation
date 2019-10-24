module CloudFormation.AWS.EC2.TransitGatewayAttachment where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::TransitGatewayAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html
-- |
-- | - `TransitGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-transitgatewayid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-vpcid
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-subnetids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-tags
newtype TransitGatewayAttachment = TransitGatewayAttachment
  { "TransitGatewayId" :: String
  , "VpcId" :: String
  , "SubnetIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeTransitGatewayAttachment :: Newtype TransitGatewayAttachment _
instance resourceTransitGatewayAttachment :: Resource TransitGatewayAttachment where type_ _ = "AWS::EC2::TransitGatewayAttachment"

transitGatewayAttachment :: { "TransitGatewayId" :: String, "VpcId" :: String, "SubnetIds" :: Array String } -> TransitGatewayAttachment
transitGatewayAttachment required = TransitGatewayAttachment
  (merge required
    { "Tags" : Nothing
    })