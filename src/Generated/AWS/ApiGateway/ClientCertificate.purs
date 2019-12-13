module CloudFormation.AWS.ApiGateway.ClientCertificate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::ClientCertificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-tags
newtype ClientCertificate = ClientCertificate
  { "Description" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeClientCertificate :: Newtype ClientCertificate _
derive newtype instance writeClientCertificate :: WriteForeign ClientCertificate
instance resourceClientCertificate :: Resource ClientCertificate where type_ _ = "AWS::ApiGateway::ClientCertificate"

clientCertificate :: ClientCertificate
clientCertificate = ClientCertificate
  { "Description" : Nothing
  , "Tags" : Nothing
  }