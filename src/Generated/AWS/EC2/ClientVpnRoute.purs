module CloudFormation.AWS.EC2.ClientVpnRoute where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::ClientVpnRoute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html
-- |
-- | - `ClientVpnEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-clientvpnendpointid
-- | - `TargetVpcSubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-targetvpcsubnetid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-description
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnroute.html#cfn-ec2-clientvpnroute-destinationcidrblock
newtype ClientVpnRoute = ClientVpnRoute
  { "ClientVpnEndpointId" :: String
  , "TargetVpcSubnetId" :: String
  , "DestinationCidrBlock" :: String
  , "Description" :: Maybe String
  }

derive instance newtypeClientVpnRoute :: Newtype ClientVpnRoute _
instance resourceClientVpnRoute :: Resource ClientVpnRoute where type_ _ = "AWS::EC2::ClientVpnRoute"

clientVpnRoute :: { "ClientVpnEndpointId" :: String, "TargetVpcSubnetId" :: String, "DestinationCidrBlock" :: String } -> ClientVpnRoute
clientVpnRoute required = ClientVpnRoute
  (merge required
    { "Description" : Nothing
    })