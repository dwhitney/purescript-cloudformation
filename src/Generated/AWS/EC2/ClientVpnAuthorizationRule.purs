module CloudFormation.AWS.EC2.ClientVpnAuthorizationRule where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype ClientVpnAuthorizationRule = ClientVpnAuthorizationRule
  { "ClientVpnEndpointId" :: String
  , "TargetNetworkCidr" :: String
  , "Description" :: Maybe String
  , "AccessGroupId" :: Maybe String
  , "AuthorizeAllGroups" :: Maybe Boolean
  }

derive instance newtypeClientVpnAuthorizationRule :: Newtype ClientVpnAuthorizationRule _
instance resourceClientVpnAuthorizationRule :: Resource ClientVpnAuthorizationRule where type_ _ = "AWS::EC2::ClientVpnAuthorizationRule"

clientVpnAuthorizationRule :: { "ClientVpnEndpointId" :: String, "TargetNetworkCidr" :: String } -> ClientVpnAuthorizationRule
clientVpnAuthorizationRule required = ClientVpnAuthorizationRule
  (merge required
    { "Description" : Nothing
    , "AccessGroupId" : Nothing
    , "AuthorizeAllGroups" : Nothing
    })