module CloudFormation.AWS.RoboMaker.RobotApplication where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RoboMaker::RobotApplication`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html
-- |
-- | - `CurrentRevisionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-currentrevisionid
-- | - `RobotSoftwareSuite`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-robotsoftwaresuite
-- | - `Sources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-sources
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-name
newtype RobotApplication = RobotApplication
  { "RobotSoftwareSuite" :: RobotSoftwareSuite
  , "Sources" :: Array SourceConfig
  , "CurrentRevisionId" :: Maybe String
  , "Tags" :: Maybe CF.Json
  , "Name" :: Maybe String
  }

derive instance newtypeRobotApplication :: Newtype RobotApplication _
instance resourceRobotApplication :: Resource RobotApplication where type_ _ = "AWS::RoboMaker::RobotApplication"

robotApplication :: { "RobotSoftwareSuite" :: RobotSoftwareSuite, "Sources" :: Array SourceConfig } -> RobotApplication
robotApplication required = RobotApplication
  (merge required
    { "CurrentRevisionId" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::RoboMaker::RobotApplication.SourceConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html
-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html#cfn-robomaker-robotapplication-sourceconfig-s3bucket
-- | - `Architecture`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html#cfn-robomaker-robotapplication-sourceconfig-architecture
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-sourceconfig.html#cfn-robomaker-robotapplication-sourceconfig-s3key
type SourceConfig =
  { "S3Bucket" :: String
  , "Architecture" :: String
  , "S3Key" :: String
  }

sourceConfig :: { "S3Bucket" :: String, "Architecture" :: String, "S3Key" :: String } -> SourceConfig
sourceConfig required =
  required

-- | `AWS::RoboMaker::RobotApplication.RobotSoftwareSuite`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-robotsoftwaresuite.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-robotsoftwaresuite.html#cfn-robomaker-robotapplication-robotsoftwaresuite-version
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-robotapplication-robotsoftwaresuite.html#cfn-robomaker-robotapplication-robotsoftwaresuite-name
type RobotSoftwareSuite =
  { "Version" :: String
  , "Name" :: String
  }

robotSoftwareSuite :: { "Version" :: String, "Name" :: String } -> RobotSoftwareSuite
robotSoftwareSuite required =
  required