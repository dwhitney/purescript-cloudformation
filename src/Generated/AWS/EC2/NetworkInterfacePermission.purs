module CloudFormation.AWS.EC2.NetworkInterfacePermission where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "AwsAccountId" :: String
  , "NetworkInterfaceId" :: String
  , "Permission" :: String
  }

derive instance newtypeNetworkInterfacePermission :: Newtype NetworkInterfacePermission _
instance resourceNetworkInterfacePermission :: Resource NetworkInterfacePermission where type_ _ = "AWS::EC2::NetworkInterfacePermission"

networkInterfacePermission :: { "AwsAccountId" :: String, "NetworkInterfaceId" :: String, "Permission" :: String } -> NetworkInterfacePermission
networkInterfacePermission required = NetworkInterfacePermission
  required