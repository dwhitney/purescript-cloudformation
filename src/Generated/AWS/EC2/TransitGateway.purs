module CloudFormation.AWS.EC2.TransitGateway where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::TransitGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html
-- |
-- | - `DefaultRouteTablePropagation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-defaultroutetablepropagation
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-description
-- | - `AutoAcceptSharedAttachments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-autoacceptsharedattachments
-- | - `DefaultRouteTableAssociation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-defaultroutetableassociation
-- | - `VpnEcmpSupport`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-vpnecmpsupport
-- | - `DnsSupport`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-dnssupport
-- | - `AmazonSideAsn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-amazonsideasn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-tags
newtype TransitGateway = TransitGateway
  { "DefaultRouteTablePropagation" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "AutoAcceptSharedAttachments" :: Maybe (Value String)
  , "DefaultRouteTableAssociation" :: Maybe (Value String)
  , "VpnEcmpSupport" :: Maybe (Value String)
  , "DnsSupport" :: Maybe (Value String)
  , "AmazonSideAsn" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeTransitGateway :: Newtype TransitGateway _
derive newtype instance writeTransitGateway :: WriteForeign TransitGateway
instance resourceTransitGateway :: Resource TransitGateway where type_ _ = "AWS::EC2::TransitGateway"

transitGateway :: TransitGateway
transitGateway = TransitGateway
  { "DefaultRouteTablePropagation" : Nothing
  , "Description" : Nothing
  , "AutoAcceptSharedAttachments" : Nothing
  , "DefaultRouteTableAssociation" : Nothing
  , "VpnEcmpSupport" : Nothing
  , "DnsSupport" : Nothing
  , "AmazonSideAsn" : Nothing
  , "Tags" : Nothing
  }