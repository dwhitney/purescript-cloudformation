module CloudFormation.AWS.EC2.VPCEndpointConnectionNotification where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPCEndpointConnectionNotification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html
-- |
-- | - `ConnectionEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionevents
-- | - `VPCEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-vpcendpointid
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-serviceid
-- | - `ConnectionNotificationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionnotificationarn
newtype VPCEndpointConnectionNotification = VPCEndpointConnectionNotification
  { "ConnectionEvents" :: Array String
  , "ConnectionNotificationArn" :: String
  , "VPCEndpointId" :: Maybe String
  , "ServiceId" :: Maybe String
  }

derive instance newtypeVPCEndpointConnectionNotification :: Newtype VPCEndpointConnectionNotification _
instance resourceVPCEndpointConnectionNotification :: Resource VPCEndpointConnectionNotification where type_ _ = "AWS::EC2::VPCEndpointConnectionNotification"

vpcePCEndpointConnectionNotification :: { "ConnectionEvents" :: Array String, "ConnectionNotificationArn" :: String } -> VPCEndpointConnectionNotification
vpcePCEndpointConnectionNotification required = VPCEndpointConnectionNotification
  (merge required
    { "VPCEndpointId" : Nothing
    , "ServiceId" : Nothing
    })