module CloudFormation.AWS.EC2.VPCEndpoint where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPCEndpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-policydocument
-- | - `PrivateDnsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-privatednsenabled
-- | - `RouteTableIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-routetableids
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-securitygroupids
-- | - `ServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-servicename
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-subnetids
-- | - `VpcEndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcendpointtype
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpoint.html#cfn-ec2-vpcendpoint-vpcid
newtype VPCEndpoint = VPCEndpoint
  { "ServiceName" :: Value String
  , "VpcId" :: Value String
  , "PolicyDocument" :: Maybe (Value CF.Json)
  , "PrivateDnsEnabled" :: Maybe (Value Boolean)
  , "RouteTableIds" :: Maybe (Value (Array String))
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SubnetIds" :: Maybe (Value (Array String))
  , "VpcEndpointType" :: Maybe (Value String)
  }

derive instance newtypeVPCEndpoint :: Newtype VPCEndpoint _
derive newtype instance writeVPCEndpoint :: WriteForeign VPCEndpoint
instance resourceVPCEndpoint :: Resource VPCEndpoint where type_ _ = "AWS::EC2::VPCEndpoint"

vpcePCEndpoint :: { "ServiceName" :: Value String, "VpcId" :: Value String } -> VPCEndpoint
vpcePCEndpoint required = VPCEndpoint
  (merge required
    { "PolicyDocument" : Nothing
    , "PrivateDnsEnabled" : Nothing
    , "RouteTableIds" : Nothing
    , "SecurityGroupIds" : Nothing
    , "SubnetIds" : Nothing
    , "VpcEndpointType" : Nothing
    })