module CloudFormation.AWS.EC2.VPCEndpoint where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ServiceName" :: String
  , "VpcId" :: String
  , "PolicyDocument" :: Maybe CF.Json
  , "PrivateDnsEnabled" :: Maybe Boolean
  , "RouteTableIds" :: Maybe (Array String)
  , "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  , "VpcEndpointType" :: Maybe String
  }

derive instance newtypeVPCEndpoint :: Newtype VPCEndpoint _
instance resourceVPCEndpoint :: Resource VPCEndpoint where type_ _ = "AWS::EC2::VPCEndpoint"

vpcePCEndpoint :: { "ServiceName" :: String, "VpcId" :: String } -> VPCEndpoint
vpcePCEndpoint required = VPCEndpoint
  (merge required
    { "PolicyDocument" : Nothing
    , "PrivateDnsEnabled" : Nothing
    , "RouteTableIds" : Nothing
    , "SecurityGroupIds" : Nothing
    , "SubnetIds" : Nothing
    , "VpcEndpointType" : Nothing
    })