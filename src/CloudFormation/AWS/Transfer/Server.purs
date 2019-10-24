module CloudFormation.AWS.Transfer.Server where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::Transfer::Server`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html
-- |
-- | - `LoggingRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-loggingrole
-- | - `IdentityProviderDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-identityproviderdetails
-- | - `EndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-endpointtype
-- | - `EndpointDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-endpointdetails
-- | - `IdentityProviderType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-identityprovidertype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-server.html#cfn-transfer-server-tags
type Server =
  { "LoggingRole" :: Maybe String
  , "IdentityProviderDetails" :: Maybe IdentityProviderDetails
  , "EndpointType" :: Maybe String
  , "EndpointDetails" :: Maybe EndpointDetails
  , "IdentityProviderType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

server :: Server
server =
  { "LoggingRole" : Nothing
  , "IdentityProviderDetails" : Nothing
  , "EndpointType" : Nothing
  , "EndpointDetails" : Nothing
  , "IdentityProviderType" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::Transfer::Server.EndpointDetails`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html
-- |
-- | - `VpcEndpointId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
type EndpointDetails =
  { "VpcEndpointId" :: String
  }

endpointDetails :: { "VpcEndpointId" :: String } -> EndpointDetails
endpointDetails required =
  required

-- | `AWS::Transfer::Server.IdentityProviderDetails`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html
-- |
-- | - `InvocationRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html#cfn-transfer-server-identityproviderdetails-invocationrole
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-identityproviderdetails.html#cfn-transfer-server-identityproviderdetails-url
type IdentityProviderDetails =
  { "InvocationRole" :: String
  , "Url" :: String
  }

identityProviderDetails :: { "InvocationRole" :: String, "Url" :: String } -> IdentityProviderDetails
identityProviderDetails required =
  required