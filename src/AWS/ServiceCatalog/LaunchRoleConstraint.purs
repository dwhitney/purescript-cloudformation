module AWS.ServiceCatalog.LaunchRoleConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LaunchRoleConstraint =
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "RoleArn" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

launchRoleConstraint :: { "PortfolioId" :: String, "ProductId" :: String, "RoleArn" :: String } -> LaunchRoleConstraint
launchRoleConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }