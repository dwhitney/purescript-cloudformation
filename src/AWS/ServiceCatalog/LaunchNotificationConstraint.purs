module AWS.ServiceCatalog.LaunchNotificationConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LaunchNotificationConstraint =
  { "NotificationArns" :: Array String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

launchNotificationConstraint :: { "NotificationArns" :: Array String, "PortfolioId" :: String, "ProductId" :: String } -> LaunchNotificationConstraint
launchNotificationConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }