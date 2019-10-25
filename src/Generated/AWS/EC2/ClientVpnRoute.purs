module CloudFormation.AWS.EC2.ClientVpnRoute where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ClientVpnEndpointId" :: Value String
  , "TargetVpcSubnetId" :: Value String
  , "DestinationCidrBlock" :: Value String
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeClientVpnRoute :: Newtype ClientVpnRoute _
derive newtype instance writeClientVpnRoute :: WriteForeign ClientVpnRoute
instance resourceClientVpnRoute :: Resource ClientVpnRoute where type_ _ = "AWS::EC2::ClientVpnRoute"

clientVpnRoute :: { "ClientVpnEndpointId" :: Value String, "TargetVpcSubnetId" :: Value String, "DestinationCidrBlock" :: Value String } -> ClientVpnRoute
clientVpnRoute required = ClientVpnRoute
  (merge required
    { "Description" : Nothing
    })