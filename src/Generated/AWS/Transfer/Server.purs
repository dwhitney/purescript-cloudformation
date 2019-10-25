module CloudFormation.AWS.Transfer.Server where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Server = Server
  { "LoggingRole" :: Maybe (Value String)
  , "IdentityProviderDetails" :: Maybe (Value IdentityProviderDetails)
  , "EndpointType" :: Maybe (Value String)
  , "EndpointDetails" :: Maybe (Value EndpointDetails)
  , "IdentityProviderType" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeServer :: Newtype Server _
derive newtype instance writeServer :: WriteForeign Server
instance resourceServer :: Resource Server where type_ _ = "AWS::Transfer::Server"

server :: Server
server = Server
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
  { "VpcEndpointId" :: Value String
  }

endpointDetails :: { "VpcEndpointId" :: Value String } -> EndpointDetails
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
  { "InvocationRole" :: Value String
  , "Url" :: Value String
  }

identityProviderDetails :: { "InvocationRole" :: Value String, "Url" :: Value String } -> IdentityProviderDetails
identityProviderDetails required =
  required