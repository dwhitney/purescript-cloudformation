module AWS.ServiceCatalog.ResourceUpdateConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ResourceUpdateConstraint =
  { "TagUpdateOnProvisionedProduct" :: String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

resourceUpdateConstraint :: { "TagUpdateOnProvisionedProduct" :: String, "PortfolioId" :: String, "ProductId" :: String } -> ResourceUpdateConstraint
resourceUpdateConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }