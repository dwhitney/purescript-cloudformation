module CloudFormation.AWS.EC2.ClientVpnAuthorizationRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::ClientVpnAuthorizationRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html
-- |
-- | - `ClientVpnEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-clientvpnendpointid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-description
-- | - `AccessGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-accessgroupid
-- | - `TargetNetworkCidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-targetnetworkcidr
-- | - `AuthorizeAllGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnauthorizationrule.html#cfn-ec2-clientvpnauthorizationrule-authorizeallgroups
type ClientVpnAuthorizationRule =
  { "ClientVpnEndpointId" :: String
  , "TargetNetworkCidr" :: String
  , "Description" :: Maybe String
  , "AccessGroupId" :: Maybe String
  , "AuthorizeAllGroups" :: Maybe Boolean
  }

clientVpnAuthorizationRule :: { "ClientVpnEndpointId" :: String, "TargetNetworkCidr" :: String } -> ClientVpnAuthorizationRule
clientVpnAuthorizationRule required =
  merge required
    { "Description" : Nothing
    , "AccessGroupId" : Nothing
    , "AuthorizeAllGroups" : Nothing
    }