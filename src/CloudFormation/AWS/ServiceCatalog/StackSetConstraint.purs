module CloudFormation.AWS.ServiceCatalog.StackSetConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


type StackSetConstraint =
  { "Description" :: String
  , "StackInstanceControl" :: String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "RegionList" :: Array String
  , "AdminRole" :: String
  , "AccountList" :: Array String
  , "ExecutionRole" :: String
  , "AcceptLanguage" :: Maybe String
  }

stackSetConstraint :: { "Description" :: String, "StackInstanceControl" :: String, "PortfolioId" :: String, "ProductId" :: String, "RegionList" :: Array String, "AdminRole" :: String, "AccountList" :: Array String, "ExecutionRole" :: String } -> StackSetConstraint
stackSetConstraint required =
  merge required
    { "AcceptLanguage" : Nothing
    }