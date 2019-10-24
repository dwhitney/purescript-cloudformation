module CloudFormation.AWS.EC2.TransitGateway where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


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
type TransitGateway =
  { "DefaultRouteTablePropagation" :: Maybe String
  , "Description" :: Maybe String
  , "AutoAcceptSharedAttachments" :: Maybe String
  , "DefaultRouteTableAssociation" :: Maybe String
  , "VpnEcmpSupport" :: Maybe String
  , "DnsSupport" :: Maybe String
  , "AmazonSideAsn" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  }

transitGateway :: TransitGateway
transitGateway =
  { "DefaultRouteTablePropagation" : Nothing
  , "Description" : Nothing
  , "AutoAcceptSharedAttachments" : Nothing
  , "DefaultRouteTableAssociation" : Nothing
  , "VpnEcmpSupport" : Nothing
  , "DnsSupport" : Nothing
  , "AmazonSideAsn" : Nothing
  , "Tags" : Nothing
  }