module CloudFormation.AWS.ApiGateway.ClientCertificate where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::ClientCertificate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description
newtype ClientCertificate = ClientCertificate
  { "Description" :: Maybe String
  }

derive instance newtypeClientCertificate :: Newtype ClientCertificate _
instance resourceClientCertificate :: Resource ClientCertificate where type_ _ = "AWS::ApiGateway::ClientCertificate"

clientCertificate :: ClientCertificate
clientCertificate = ClientCertificate
  { "Description" : Nothing
  }