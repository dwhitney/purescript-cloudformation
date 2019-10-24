module CloudFormation.AWS.EC2.ClientVpnEndpoint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::ClientVpnEndpoint`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpnendpoint.html-- |
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
type ClientVpnEndpoint =
  { "ClientCidrBlock" :: String
  , "ConnectionLogOptions" :: ConnectionLogOptions
  , "AuthenticationOptions" :: Array ClientAuthenticationRequest
  , "ServerCertificateArn" :: String
  , "SplitTunnel" :: Maybe Boolean
  , "Description" :: Maybe String
  , "TagSpecifications" :: Maybe (Array TagSpecification)
  , "DnsServers" :: Maybe (Array String)
  , "TransportProtocol" :: Maybe String
  }

clientVpnEndpoint :: { "ClientCidrBlock" :: String, "ConnectionLogOptions" :: ConnectionLogOptions, "AuthenticationOptions" :: Array ClientAuthenticationRequest, "ServerCertificateArn" :: String } -> ClientVpnEndpoint
clientVpnEndpoint required =
  merge required
    { "SplitTunnel" : Nothing
    , "Description" : Nothing
    , "TagSpecifications" : Nothing
    , "DnsServers" : Nothing
    , "TransportProtocol" : Nothing
    }

-- | `AWS::EC2::ClientVpnEndpoint.ClientAuthenticationRequest`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html-- |
-- | - `MutualAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-mutualauthentication
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-type
-- | - `ActiveDirectory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientauthenticationrequest.html#cfn-ec2-clientvpnendpoint-clientauthenticationrequest-activedirectory
type ClientAuthenticationRequest =
  { "Type" :: String
  , "MutualAuthentication" :: Maybe CertificateAuthenticationRequest
  , "ActiveDirectory" :: Maybe DirectoryServiceAuthenticationRequest
  }

clientAuthenticationRequest :: { "Type" :: String } -> ClientAuthenticationRequest
clientAuthenticationRequest required =
  merge required
    { "MutualAuthentication" : Nothing
    , "ActiveDirectory" : Nothing
    }

-- | `AWS::EC2::ClientVpnEndpoint.TagSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html-- |
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-resourcetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-tagspecification.html#cfn-ec2-clientvpnendpoint-tagspecification-tags
type TagSpecification =
  { "ResourceType" :: String
  , "Tags" :: Array Tag
  }

tagSpecification :: { "ResourceType" :: String, "Tags" :: Array Tag } -> TagSpecification
tagSpecification required =
  required

-- | `AWS::EC2::ClientVpnEndpoint.DirectoryServiceAuthenticationRequest`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html-- |
-- | - `DirectoryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-directoryserviceauthenticationrequest.html#cfn-ec2-clientvpnendpoint-directoryserviceauthenticationrequest-directoryid
type DirectoryServiceAuthenticationRequest =
  { "DirectoryId" :: String
  }

directoryServiceAuthenticationRequest :: { "DirectoryId" :: String } -> DirectoryServiceAuthenticationRequest
directoryServiceAuthenticationRequest required =
  required

-- | `AWS::EC2::ClientVpnEndpoint.CertificateAuthenticationRequest`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html-- |
-- | - `ClientRootCertificateChainArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-certificateauthenticationrequest.html#cfn-ec2-clientvpnendpoint-certificateauthenticationrequest-clientrootcertificatechainarn
type CertificateAuthenticationRequest =
  { "ClientRootCertificateChainArn" :: String
  }

certificateAuthenticationRequest :: { "ClientRootCertificateChainArn" :: String } -> CertificateAuthenticationRequest
certificateAuthenticationRequest required =
  required

-- | `AWS::EC2::ClientVpnEndpoint.ConnectionLogOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html-- |
-- | - `CloudwatchLogStream`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchlogstream
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-enabled
-- | - `CloudwatchLogGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-connectionlogoptions.html#cfn-ec2-clientvpnendpoint-connectionlogoptions-cloudwatchloggroup
type ConnectionLogOptions =
  { "Enabled" :: Boolean
  , "CloudwatchLogStream" :: Maybe String
  , "CloudwatchLogGroup" :: Maybe String
  }

connectionLogOptions :: { "Enabled" :: Boolean } -> ConnectionLogOptions
connectionLogOptions required =
  merge required
    { "CloudwatchLogStream" : Nothing
    , "CloudwatchLogGroup" : Nothing
    }