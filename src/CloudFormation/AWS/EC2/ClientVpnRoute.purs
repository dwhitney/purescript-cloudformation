module CloudFormation.AWS.EC2.ClientVpnRoute where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type ClientVpnRoute =
  { "ClientVpnEndpointId" :: String
  , "TargetVpcSubnetId" :: String
  , "DestinationCidrBlock" :: String
  , "Description" :: Maybe String
  }

clientVpnRoute :: { "ClientVpnEndpointId" :: String, "TargetVpcSubnetId" :: String, "DestinationCidrBlock" :: String } -> ClientVpnRoute
clientVpnRoute required =
  merge required
    { "Description" : Nothing
    }