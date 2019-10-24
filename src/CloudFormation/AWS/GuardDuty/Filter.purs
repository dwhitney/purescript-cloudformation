module CloudFormation.AWS.GuardDuty.Filter where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


type Filter =
  { "Action" :: String
  , "Description" :: String
  , "DetectorId" :: String
  , "FindingCriteria" :: FindingCriteria
  , "Rank" :: Int
  , "Name" :: Maybe String
  }

filter :: { "Action" :: String, "Description" :: String, "DetectorId" :: String, "FindingCriteria" :: FindingCriteria, "Rank" :: Int } -> Filter
filter required =
  merge required
    { "Name" : Nothing
    }

type Condition =
  { "Lt" :: Maybe Int
  , "Gte" :: Maybe Int
  , "Neq" :: Maybe (Array String)
  , "Eq" :: Maybe (Array String)
  , "Lte" :: Maybe Int
  }

condition :: Condition
condition =
  { "Lt" : Nothing
  , "Gte" : Nothing
  , "Neq" : Nothing
  , "Eq" : Nothing
  , "Lte" : Nothing
  }

type FindingCriteria =
  { "Criterion" :: Maybe Foreign
  , "ItemType" :: Maybe Condition
  }

findingCriteria :: FindingCriteria
findingCriteria =
  { "Criterion" : Nothing
  , "ItemType" : Nothing
  }