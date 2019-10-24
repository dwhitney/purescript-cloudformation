module CloudFormation.AWS.ServiceCatalog.PortfolioProductAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


type PortfolioProductAssociation =
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "SourcePortfolioId" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

portfolioProductAssociation :: { "PortfolioId" :: String, "ProductId" :: String } -> PortfolioProductAssociation
portfolioProductAssociation required =
  merge required
    { "SourcePortfolioId" : Nothing
    , "AcceptLanguage" : Nothing
    }