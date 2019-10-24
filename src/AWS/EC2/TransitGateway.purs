module AWS.EC2.TransitGateway where 

import Data.Maybe (Maybe(..))
import Tag


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