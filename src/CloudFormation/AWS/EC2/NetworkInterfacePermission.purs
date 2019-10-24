module CloudFormation.AWS.EC2.NetworkInterfacePermission where 




-- | `AWS::EC2::NetworkInterfacePermission`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html-- |
-- | - `AwsAccountId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-awsaccountid
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-networkinterfaceid
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfacepermission.html#cfn-ec2-networkinterfacepermission-permission
type NetworkInterfacePermission =
  { "AwsAccountId" :: String
  , "NetworkInterfaceId" :: String
  , "Permission" :: String
  }

networkInterfacePermission :: { "AwsAccountId" :: String, "NetworkInterfaceId" :: String, "Permission" :: String } -> NetworkInterfacePermission
networkInterfacePermission required =
  required