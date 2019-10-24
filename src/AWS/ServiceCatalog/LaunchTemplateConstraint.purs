module AWS.ServiceCatalog.LaunchTemplateConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LaunchTemplateConstraint =
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "Rules" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

launchTemplateConstraint :: { "PortfolioId" :: String, "ProductId" :: String, "Rules" :: String } -> LaunchTemplateConstraint
launchTemplateConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }