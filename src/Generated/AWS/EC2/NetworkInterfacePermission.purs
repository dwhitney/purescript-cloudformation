module CloudFormation.AWS.EC2.NetworkInterfacePermission where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::NetworkInterfacePermission`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html
-- |
-- | - `AwsAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-awsaccountid
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-networkinterfaceid
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-permission
newtype NetworkInterfacePermission = NetworkInterfacePermission
  { "AwsAccountId" :: Value String
  , "NetworkInterfaceId" :: Value String
  , "Permission" :: Value String
  }

derive instance newtypeNetworkInterfacePermission :: Newtype NetworkInterfacePermission _
derive newtype instance writeNetworkInterfacePermission :: WriteForeign NetworkInterfacePermission
instance resourceNetworkInterfacePermission :: Resource NetworkInterfacePermission where type_ _ = "AWS::EC2::NetworkInterfacePermission"

networkInterfacePermission :: { "AwsAccountId" :: Value String, "NetworkInterfaceId" :: Value String, "Permission" :: Value String } -> NetworkInterfacePermission
networkInterfacePermission required = NetworkInterfacePermission
  required