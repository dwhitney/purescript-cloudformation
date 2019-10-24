module CloudFormation.AWS.Glue.Crawler where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  , "Tags" :: Maybe CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeCrawler :: Newtype Crawler _
instance resourceCrawler :: Resource Crawler where type_ _ = "AWS::Glue::Crawler"

crawler :: { "Role" :: String, "DatabaseName" :: String, "Targets" :: Targets } -> Crawler
crawler required = Crawler
  (merge required
    { "Classifiers" : Nothing
    , "Description" : Nothing
    , "SchemaChangePolicy" : Nothing
    , "Configuration" : Nothing
    , "Schedule" : Nothing
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
  { "Path" :: Maybe String
  , "Exclusions" :: Maybe (Array String)
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
  { "UpdateBehavior" :: Maybe String
  , "DeleteBehavior" :: Maybe String
  }

schemaChangePolicy :: SchemaChangePolicy
schemaChangePolicy =
  { "UpdateBehavior" : Nothing
  , "DeleteBehavior" : Nothing
  }

-- | `AWS::Glue::Crawler.Schedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html
-- |
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-schedule.html#cfn-glue-crawler-schedule-scheduleexpression
type Schedule =
  { "ScheduleExpression" :: Maybe String
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

-- | `AWS::Glue::Crawler.Targets`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html
-- |
-- | - `S3Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-s3targets
-- | - `JdbcTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-crawler-targets.html#cfn-glue-crawler-targets-jdbctargets
type Targets =
  { "S3Targets" :: Maybe (Array S3Target)
  , "JdbcTargets" :: Maybe (Array JdbcTarget)
  }

targets :: Targets
targets =
  { "S3Targets" : Nothing
  , "JdbcTargets" : Nothing
  }