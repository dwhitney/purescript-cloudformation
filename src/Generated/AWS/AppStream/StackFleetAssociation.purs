module CloudFormation.AWS.AppStream.StackFleetAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppStream::StackFleetAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html
-- |
-- | - `FleetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-fleetname
-- | - `StackName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stackfleetassociation.html#cfn-appstream-stackfleetassociation-stackname
newtype StackFleetAssociation = StackFleetAssociation
  { "FleetName" :: String
  , "StackName" :: String
  }

derive instance newtypeStackFleetAssociation :: Newtype StackFleetAssociation _
instance resourceStackFleetAssociation :: Resource StackFleetAssociation where type_ _ = "AWS::AppStream::StackFleetAssociation"

stackFleetAssociation :: { "FleetName" :: String, "StackName" :: String } -> StackFleetAssociation
stackFleetAssociation required = StackFleetAssociation
  required