module CloudFormation.AWS.EC2.VPCEndpointConnectionNotification where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ConnectionEvents" :: Value (Array String)
  , "ConnectionNotificationArn" :: Value String
  , "VPCEndpointId" :: Maybe (Value String)
  , "ServiceId" :: Maybe (Value String)
  }

derive instance newtypeVPCEndpointConnectionNotification :: Newtype VPCEndpointConnectionNotification _
derive newtype instance writeVPCEndpointConnectionNotification :: WriteForeign VPCEndpointConnectionNotification
instance resourceVPCEndpointConnectionNotification :: Resource VPCEndpointConnectionNotification where type_ _ = "AWS::EC2::VPCEndpointConnectionNotification"

vpcePCEndpointConnectionNotification :: { "ConnectionEvents" :: Value (Array String), "ConnectionNotificationArn" :: Value String } -> VPCEndpointConnectionNotification
vpcePCEndpointConnectionNotification required = VPCEndpointConnectionNotification
  (merge required
    { "VPCEndpointId" : Nothing
    , "ServiceId" : Nothing
    })