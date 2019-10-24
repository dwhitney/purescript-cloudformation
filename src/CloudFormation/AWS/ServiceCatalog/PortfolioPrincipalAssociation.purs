module CloudFormation.AWS.ServiceCatalog.PortfolioPrincipalAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


type PortfolioPrincipalAssociation =
  { "PrincipalARN" :: String
  , "PortfolioId" :: String
  , "PrincipalType" :: String
  , "AcceptLanguage" :: Maybe String
  }

portfolioPrincipalAssociation :: { "PrincipalARN" :: String, "PortfolioId" :: String, "PrincipalType" :: String } -> PortfolioPrincipalAssociation
portfolioPrincipalAssociation required =
  merge required
    { "AcceptLanguage" : Nothing
    }