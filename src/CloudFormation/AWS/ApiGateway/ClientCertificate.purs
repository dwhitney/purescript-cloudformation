module CloudFormation.AWS.ApiGateway.ClientCertificate where 

import Data.Maybe (Maybe(..))


-- | `AWS::ApiGateway::ClientCertificate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description
type ClientCertificate =
  { "Description" :: Maybe String
  }

clientCertificate :: ClientCertificate
clientCertificate =
  { "Description" : Nothing
  }