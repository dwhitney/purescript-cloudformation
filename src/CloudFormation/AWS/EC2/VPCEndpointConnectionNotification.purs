module CloudFormation.AWS.EC2.VPCEndpointConnectionNotification where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::VPCEndpointConnectionNotification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html-- |
-- | - `ConnectionEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionevents
-- | - `VPCEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-vpcendpointid
-- | - `ServiceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-serviceid
-- | - `ConnectionNotificationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcendpointconnectionnotification.html#cfn-ec2-vpcendpointconnectionnotification-connectionnotificationarn
type VPCEndpointConnectionNotification =
  { "ConnectionEvents" :: Array String
  , "ConnectionNotificationArn" :: String
  , "VPCEndpointId" :: Maybe String
  , "ServiceId" :: Maybe String
  }

vpcePCEndpointConnectionNotification :: { "ConnectionEvents" :: Array String, "ConnectionNotificationArn" :: String } -> VPCEndpointConnectionNotification
vpcePCEndpointConnectionNotification required =
  merge required
    { "VPCEndpointId" : Nothing
    , "ServiceId" : Nothing
    }