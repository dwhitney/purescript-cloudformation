module CloudFormation.AWS.ApiGatewayV2.DomainName where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::DomainName`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html
-- |
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainname
-- | - `DomainNameConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainnameconfigurations
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-tags
newtype DomainName = DomainName
  { "DomainName" :: Value String
  , "DomainNameConfigurations" :: Maybe (Value (Array DomainNameConfiguration))
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeDomainName :: Newtype DomainName _
derive newtype instance writeDomainName :: WriteForeign DomainName
instance resourceDomainName :: Resource DomainName where type_ _ = "AWS::ApiGatewayV2::DomainName"

domainName :: { "DomainName" :: Value String } -> DomainName
domainName required = DomainName
  (merge required
    { "DomainNameConfigurations" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::ApiGatewayV2::DomainName.DomainNameConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html
-- |
-- | - `EndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-endpointtype
-- | - `CertificateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatename
-- | - `CertificateArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatearn
type DomainNameConfiguration =
  { "EndpointType" :: Maybe (Value String)
  , "CertificateName" :: Maybe (Value String)
  , "CertificateArn" :: Maybe (Value String)
  }

domainNameConfiguration :: DomainNameConfiguration
domainNameConfiguration =
  { "EndpointType" : Nothing
  , "CertificateName" : Nothing
  , "CertificateArn" : Nothing
  }