module CloudFormation.AWS.AppStream.StackFleetAssociation where 




-- | `AWS::AppStream::StackFleetAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html
-- |
-- | - `FleetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-fleetname
-- | - `StackName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-stackname
type StackFleetAssociation =
  { "FleetName" :: String
  , "StackName" :: String
  }

stackFleetAssociation :: { "FleetName" :: String, "StackName" :: String } -> StackFleetAssociation
stackFleetAssociation required =
  required