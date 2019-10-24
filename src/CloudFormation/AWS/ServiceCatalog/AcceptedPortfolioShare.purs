module CloudFormation.AWS.ServiceCatalog.AcceptedPortfolioShare where 

import Data.Maybe (Maybe(..))
import Record (merge)


type AcceptedPortfolioShare =
  { "PortfolioId" :: String
  , "AcceptLanguage" :: Maybe String
  }

acceptedPortfolioShare :: { "PortfolioId" :: String } -> AcceptedPortfolioShare
acceptedPortfolioShare required =
  merge required
    { "AcceptLanguage" : Nothing
    }