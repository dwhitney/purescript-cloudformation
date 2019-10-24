module AWS.Glue.Crawler where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Crawler =
  { "Role" :: String
  , "DatabaseName" :: String
  , "Targets" :: Targets
  , "Classifiers" :: Maybe (Array String)
  , "Description" :: Maybe String
  , "SchemaChangePolicy" :: Maybe SchemaChangePolicy
  , "Configuration" :: Maybe String
  , "Schedule" :: Maybe Schedule
  , "CrawlerSecurityConfiguration" :: Maybe String
  , "TablePrefix" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

crawler :: { "Role" :: String, "DatabaseName" :: String, "Targets" :: Targets } -> Crawler
crawler required =
  merge required
    { "Classifiers" : Nothing
    , "Description" : Nothing
    , "SchemaChangePolicy" : Nothing
    , "Configuration" : Nothing
    , "Schedule" : Nothing
    , "CrawlerSecurityConfiguration" : Nothing
    , "TablePrefix" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }

type S3Target =
  { "Path" :: Maybe String
  , "Exclusions" :: Maybe (Array String)
  }

s3Target :: S3Target
s3Target =
  { "Path" : Nothing
  , "Exclusions" : Nothing
  }

type SchemaChangePolicy =
  { "UpdateBehavior" :: Maybe String
  , "DeleteBehavior" :: Maybe String
  }

schemaChangePolicy :: SchemaChangePolicy
schemaChangePolicy =
  { "UpdateBehavior" : Nothing
  , "DeleteBehavior" : Nothing
  }

type Schedule =
  { "ScheduleExpression" :: Maybe String
  }

schedule :: Schedule
schedule =
  { "ScheduleExpression" : Nothing
  }

type JdbcTarget =
  { "ConnectionName" :: Maybe String
  , "Path" :: Maybe String
  , "Exclusions" :: Maybe (Array String)
  }

jdbcTarget :: JdbcTarget
jdbcTarget =
  { "ConnectionName" : Nothing
  , "Path" : Nothing
  , "Exclusions" : Nothing
  }

type Targets =
  { "S3Targets" :: Maybe (Array S3Target)
  , "JdbcTargets" :: Maybe (Array JdbcTarget)
  }

targets :: Targets
targets =
  { "S3Targets" : Nothing
  , "JdbcTargets" : Nothing
  }