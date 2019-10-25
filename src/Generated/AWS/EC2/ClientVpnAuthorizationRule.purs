module CloudFormation.AWS.EC2.ClientVpnAuthorizationRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ClientVpnEndpointId" :: Value String
  , "TargetNetworkCidr" :: Value String
  , "Description" :: Maybe (Value String)
  , "AccessGroupId" :: Maybe (Value String)
  , "AuthorizeAllGroups" :: Maybe (Value Boolean)
  }

derive instance newtypeClientVpnAuthorizationRule :: Newtype ClientVpnAuthorizationRule _
derive newtype instance writeClientVpnAuthorizationRule :: WriteForeign ClientVpnAuthorizationRule
instance resourceClientVpnAuthorizationRule :: Resource ClientVpnAuthorizationRule where type_ _ = "AWS::EC2::ClientVpnAuthorizationRule"

clientVpnAuthorizationRule :: { "ClientVpnEndpointId" :: Value String, "TargetNetworkCidr" :: Value String } -> ClientVpnAuthorizationRule
clientVpnAuthorizationRule required = ClientVpnAuthorizationRule
  (merge required
    { "Description" : Nothing
    , "AccessGroupId" : Nothing
    , "AuthorizeAllGroups" : Nothing
    })