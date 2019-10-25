module CloudFormation.AWS.EC2.TransitGatewayAttachment where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "TransitGatewayId" :: Value String
  , "VpcId" :: Value String
  , "SubnetIds" :: Value (Array String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeTransitGatewayAttachment :: Newtype TransitGatewayAttachment _
derive newtype instance writeTransitGatewayAttachment :: WriteForeign TransitGatewayAttachment
instance resourceTransitGatewayAttachment :: Resource TransitGatewayAttachment where type_ _ = "AWS::EC2::TransitGatewayAttachment"

transitGatewayAttachment :: { "TransitGatewayId" :: Value String, "VpcId" :: Value String, "SubnetIds" :: Value (Array String) } -> TransitGatewayAttachment
transitGatewayAttachment required = TransitGatewayAttachment
  (merge required
    { "Tags" : Nothing
    })