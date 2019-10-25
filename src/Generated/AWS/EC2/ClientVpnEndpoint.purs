module CloudFormation.AWS.EC2.ClientVpnEndpoint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::ClientVpnEndpoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html
-- |
-- | - `ClientCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-clientcidrblock
-- | - `ConnectionLogOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-connectionlogoptions
-- | - `SplitTunnel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-splittunnel
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-description
-- | - `TagSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-tagspecifications
-- | - `AuthenticationOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-authenticationoptions
-- | - `ServerCertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-servercertificatearn
-- | - `DnsServers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-dnsservers
-- | - `TransportProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html#cfn-ec2-clientvpnendpoint-transportprotocol
newtype ClientVpnEndpoint = ClientVpnEndpoint
  { "ClientCidrBlock" :: Value String
  , "ConnectionLogOptions" :: Value ConnectionLogOptions
  , "AuthenticationOptions" :: Value (Array ClientAuthenticationRequest)
  , "ServerCertificateArn" :: Value String
  , "SplitTunnel" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "TagSpecifications" :: Maybe (Value (Array TagSpecification))
  , "DnsServers" :: Maybe (Value (Array String))
  , "TransportProtocol" :: Maybe (Value String)
  }

derive instance newtypeClientVpnEndpoint :: Newtype ClientVpnEndpoint _
derive newtype instance writeClientVpnEndpoint :: WriteForeign ClientVpnEndpoint
instance resourceClientVpnEndpoint :: Resource ClientVpnEndpoint where type_ _ = "AWS::EC2::ClientVpnEndpoint"

clientVpnEndpoint :: { "ClientCidrBlock" :: Value String, "ConnectionLogOptions" :: Value ConnectionLogOptions, "AuthenticationOptions" :: Value (Array ClientAuthenticationRequest), "ServerCertificateArn" :: Value String } -> ClientVpnEndpoint
clientVpnEndpoint required = ClientVpnEndpoint
  (merge required
    { "SplitTunnel" : Nothing
    , "Description" : Nothing
    , "TagSpecifications" : Nothing
    , "DnsServers" : Nothing
    , "TransportProtocol" : Nothing
    })

-- | `AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html
-- |
-- | - `MutualAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-mutualauthentication
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-type
-- | - `ActiveDirectory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-activedirectory
type ClientAuthenticationRequest =
  { "Type" :: Value String
  , "MutualAuthentication" :: Maybe (Value CertificateAuthenticationRequest)
  , "ActiveDirectory" :: Maybe (Value DirectoryServiceAuthenticationRequest)
  }

clientAuthenticationRequest :: { "Type" :: Value String } -> ClientAuthenticationRequest
clientAuthenticationRequest required =
  (merge required
    { "MutualAuthentication" : Nothing
    , "ActiveDirectory" : Nothing
    })

-- | `AWS::EC2::ClientVpnEndpoint.TagSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html
-- |
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-resourcetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-tags
type TagSpecification =
  { "ResourceType" :: Value String
  , "Tags" :: Value (Array Tag)
  }

tagSpecification :: { "ResourceType" :: Value String, "Tags" :: Value (Array Tag) } -> TagSpecification
tagSpecification required =
  required

-- | `AWS::EC2::ClientVpnEndpoint.DirectoryServiceAuthenticationRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html
-- |
-- | - `DirectoryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html#cfn-ec2-clientvpnendpoint-directoryserviceauthenticationrequest-directoryid
type DirectoryServiceAuthenticationRequest =
  { "DirectoryId" :: Value String
  }

directoryServiceAuthenticationRequest :: { "DirectoryId" :: Value String } -> DirectoryServiceAuthenticationRequest
directoryServiceAuthenticationRequest required =
  required

-- | `AWS::EC2::ClientVpnEndpoint.CertificateAuthenticationRequest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html
-- |
-- | - `ClientRootCertificateChainArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html#cfn-ec2-clientvpnendpoint-certificateauthenticationrequest-clientrootcertificatechainarn
type CertificateAuthenticationRequest =
  { "ClientRootCertificateChainArn" :: Value String
  }

certificateAuthenticationRequest :: { "ClientRootCertificateChainArn" :: Value String } -> CertificateAuthenticationRequest
certificateAuthenticationRequest required =
  required

-- | `AWS::EC2::ClientVpnEndpoint.ConnectionLogOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html
-- |
-- | - `CloudwatchLogStream`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchlogstream
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-enabled
-- | - `CloudwatchLogGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchloggroup
type ConnectionLogOptions =
  { "Enabled" :: Value Boolean
  , "CloudwatchLogStream" :: Maybe (Value String)
  , "CloudwatchLogGroup" :: Maybe (Value String)
  }

connectionLogOptions :: { "Enabled" :: Value Boolean } -> ConnectionLogOptions
connectionLogOptions required =
  (merge required
    { "CloudwatchLogStream" : Nothing
    , "CloudwatchLogGroup" : Nothing
    })