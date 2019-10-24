module CloudFormation.AWS.ElasticBeanstalk.ApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ElasticBeanstalk::ApplicationVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-applicationname
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-description
-- | - `SourceBundle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-sourcebundle
type ApplicationVersion =
  { "ApplicationName" :: String
  , "SourceBundle" :: SourceBundle
  , "Description" :: Maybe String
  }

applicationVersion :: { "ApplicationName" :: String, "SourceBundle" :: SourceBundle } -> ApplicationVersion
applicationVersion required =
  merge required
    { "Description" : Nothing
    }

-- | `AWS::ElasticBeanstalk::ApplicationVersion.SourceBundle`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3bucket
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3key
type SourceBundle =
  { "S3Bucket" :: String
  , "S3Key" :: String
  }

sourceBundle :: { "S3Bucket" :: String, "S3Key" :: String } -> SourceBundle
sourceBundle required =
  required