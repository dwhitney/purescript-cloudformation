module AWS.ServiceCatalog.PortfolioShare where 

import Data.Maybe (Maybe(..))
import Record (merge)


type PortfolioShare =
  { "AccountId" :: String
  , "PortfolioId" :: String
  , "AcceptLanguage" :: Maybe String
  }

portfolioShare :: { "AccountId" :: String, "PortfolioId" :: String } -> PortfolioShare
portfolioShare required =
  merge required
    { "AcceptLanguage" : Nothing
    }