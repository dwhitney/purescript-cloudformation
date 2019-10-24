module CloudFormation.AWS.ApiGatewayV2.ApiMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApiMapping =
  { "DomainName" :: String
  , "Stage" :: String
  , "ApiId" :: String
  , "ApiMappingKey" :: Maybe String
  }

apiMapping :: { "DomainName" :: String, "Stage" :: String, "ApiId" :: String } -> ApiMapping
apiMapping required =
  merge required
    { "ApiMappingKey" : Nothing
    }