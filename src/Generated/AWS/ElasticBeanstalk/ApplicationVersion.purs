module CloudFormation.AWS.ElasticBeanstalk.ApplicationVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ElasticBeanstalk::ApplicationVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-applicationname
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-description
-- | - `SourceBundle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-version.html#cfn-elasticbeanstalk-applicationversion-sourcebundle
newtype ApplicationVersion = ApplicationVersion
  { "ApplicationName" :: Value String
  , "SourceBundle" :: Value SourceBundle
  , "Description" :: Maybe (Value String)
  }

derive instance newtypeApplicationVersion :: Newtype ApplicationVersion _
derive newtype instance writeApplicationVersion :: WriteForeign ApplicationVersion
instance resourceApplicationVersion :: Resource ApplicationVersion where type_ _ = "AWS::ElasticBeanstalk::ApplicationVersion"

applicationVersion :: { "ApplicationName" :: Value String, "SourceBundle" :: Value SourceBundle } -> ApplicationVersion
applicationVersion required = ApplicationVersion
  (merge required
    { "Description" : Nothing
    })

-- | `AWS::ElasticBeanstalk::ApplicationVersion.SourceBundle`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html
-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3bucket
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3key
type SourceBundle =
  { "S3Bucket" :: Value String
  , "S3Key" :: Value String
  }

sourceBundle :: { "S3Bucket" :: Value String, "S3Key" :: Value String } -> SourceBundle
sourceBundle required =
  required