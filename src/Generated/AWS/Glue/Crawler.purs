module CloudFormation.AWS.Glue.Crawler where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Glue::Crawler`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html
-- |
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-role
-- | - `Classifiers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-classifiers
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-description
-- | - `SchemaChangePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-schemachangepolicy
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-configuration
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-schedule
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-databasename
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-targets
-- | - `CrawlerSecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-crawlersecurityconfiguration
-- | - `TablePrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-tableprefix
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-crawler.html#cfn-glue-crawler-name
newtype Crawler = Crawler
  { "Role" :: Value String
  , "Targets" :: Value Targets
  , "Classifiers" :: Maybe (Value (Array String))
  , "Description" :: Maybe (Value String)
  , "SchemaChangePolicy" :: Maybe (Value SchemaChangePolicy)
  , "Configuration" :: Maybe (Value String)
  , "Schedule" :: Maybe (Value Schedule)
  , "DatabaseName" :: Maybe (Value String)
  , "CrawlerSecurityConfiguration" :: Maybe (Value String)
  , "TablePrefix" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeCrawler :: Newtype Crawler _
derive newtype instance writeCrawler :: WriteForeign Crawler
instance resourceCrawler :: Resource Crawler where type_ _ = "AWS::Glue::Crawler"

crawler :: { "Role" :: Value String, "Targets" :: Value Targets } -> Crawler
crawler required = Crawler
  (merge required
    { "Classifiers" : Nothing
    , "Description" : Nothing
    , "SchemaChangePolicy" : Nothing
    , "Configuration" : Nothing
    , "Schedule" : Nothing
    , "DatabaseName" : Nothing
    , "CrawlerSecurityConfiguration" : Nothing
    , "TablePrefix" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::Glue::Crawler.S3Target`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html
-- |
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html#cfn-glue-crawler-s3target-path
-- | - `Exclusions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-s3target.html#cfn-glue-crawler-s3target-exclusions
type S3Target =
  { "Path" :: Maybe (Value String)
  , "Exclusions" :: Maybe (Value (Array String))
  }

s3Target :: S3Target
s3Target =
  { "Path" : Nothing
  , "Exclusions" : Nothing
  }

-- | `AWS::Glue::Crawler.SchemaChangePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html
-- |
-- | - `UpdateBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html#cfn-glue-crawler-schemachangepolicy-updatebehavior
-- | - `DeleteBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schemachangepolicy.html#cfn-glue-crawler-schemachangepolicy-deletebehavior
type SchemaChangePolicy =
  { "UpdateBehavior" :: Maybe (Value String)
  , "DeleteBehavior" :: Maybe (Value String)
  }

schemaChangePolicy :: SchemaChangePolicy
schemaChangePolicy =
  { "UpdateBehavior" : Nothing
  , "DeleteBehavior" : Nothing
  }

-- | `AWS::Glue::Crawler.DynamoDBTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html
-- |
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-dynamodbtarget.html#cfn-glue-crawler-dynamodbtarget-path
type DynamoDBTarget =
  { "Path" :: Maybe (Value String)
  }

dynamoDBTarget :: DynamoDBTarget
dynamoDBTarget =
  { "Path" : Nothing
  }

-- | `AWS::Glue::Crawler.Schedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html
-- |
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html#cfn-glue-crawler-schedule-scheduleexpression
type Schedule =
  { "ScheduleExpression" :: Maybe (Value String)
  }

schedule :: Schedule
schedule =
  { "ScheduleExpression" : Nothing
  }

-- | `AWS::Glue::Crawler.JdbcTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html
-- |
-- | - `ConnectionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-connectionname
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-path
-- | - `Exclusions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-jdbctarget.html#cfn-glue-crawler-jdbctarget-exclusions
type JdbcTarget =
  { "ConnectionName" :: Maybe (Value String)
  , "Path" :: Maybe (Value String)
  , "Exclusions" :: Maybe (Value (Array String))
  }

jdbcTarget :: JdbcTarget
jdbcTarget =
  { "ConnectionName" : Nothing
  , "Path" : Nothing
  , "Exclusions" : Nothing
  }

-- | `AWS::Glue::Crawler.CatalogTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html
-- |
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-databasename
-- | - `Tables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-catalogtarget.html#cfn-glue-crawler-catalogtarget-tables
type CatalogTarget =
  { "DatabaseName" :: Maybe (Value String)
  , "Tables" :: Maybe (Value (Array String))
  }

catalogTarget :: CatalogTarget
catalogTarget =
  { "DatabaseName" : Nothing
  , "Tables" : Nothing
  }

-- | `AWS::Glue::Crawler.Targets`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html
-- |
-- | - `S3Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-s3targets
-- | - `CatalogTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-catalogtargets
-- | - `JdbcTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-jdbctargets
-- | - `DynamoDBTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-dynamodbtargets
type Targets =
  { "S3Targets" :: Maybe (Value (Array S3Target))
  , "CatalogTargets" :: Maybe (Value (Array CatalogTarget))
  , "JdbcTargets" :: Maybe (Value (Array JdbcTarget))
  , "DynamoDBTargets" :: Maybe (Value (Array DynamoDBTarget))
  }

targets :: Targets
targets =
  { "S3Targets" : Nothing
  , "CatalogTargets" : Nothing
  , "JdbcTargets" : Nothing
  , "DynamoDBTargets" : Nothing
  }