module CloudFormation.AWS.ElasticBeanstalk.Application where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ElasticBeanstalk::Application`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-name
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-description
-- | - `ResourceLifecycleConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk.html#cfn-elasticbeanstalk-application-resourcelifecycleconfig
newtype Application = Application
  { "ApplicationName" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "ResourceLifecycleConfig" :: Maybe (Value ApplicationResourceLifecycleConfig)
  }

derive instance newtypeApplication :: Newtype Application _
derive newtype instance writeApplication :: WriteForeign Application
instance resourceApplication :: Resource Application where type_ _ = "AWS::ElasticBeanstalk::Application"

application :: Application
application = Application
  { "ApplicationName" : Nothing
  , "Description" : Nothing
  , "ResourceLifecycleConfig" : Nothing
  }

-- | `AWS::ElasticBeanstalk::Application.MaxCountRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html
-- |
-- | - `DeleteSourceFromS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-deletesourcefroms3
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-enabled
-- | - `MaxCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxcountrule.html#cfn-elasticbeanstalk-application-maxcountrule-maxcount
type MaxCountRule =
  { "DeleteSourceFromS3" :: Maybe (Value Boolean)
  , "Enabled" :: Maybe (Value Boolean)
  , "MaxCount" :: Maybe (Value Int)
  }

maxCountRule :: MaxCountRule
maxCountRule =
  { "DeleteSourceFromS3" : Nothing
  , "Enabled" : Nothing
  , "MaxCount" : Nothing
  }

-- | `AWS::ElasticBeanstalk::Application.MaxAgeRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html
-- |
-- | - `DeleteSourceFromS3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-deletesourcefroms3
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-enabled
-- | - `MaxAgeInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-maxagerule.html#cfn-elasticbeanstalk-application-maxagerule-maxageindays
type MaxAgeRule =
  { "DeleteSourceFromS3" :: Maybe (Value Boolean)
  , "Enabled" :: Maybe (Value Boolean)
  , "MaxAgeInDays" :: Maybe (Value Int)
  }

maxAgeRule :: MaxAgeRule
maxAgeRule =
  { "DeleteSourceFromS3" : Nothing
  , "Enabled" : Nothing
  , "MaxAgeInDays" : Nothing
  }

-- | `AWS::ElasticBeanstalk::Application.ApplicationVersionLifecycleConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html
-- |
-- | - `MaxAgeRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxagerule
-- | - `MaxCountRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationversionlifecycleconfig.html#cfn-elasticbeanstalk-application-applicationversionlifecycleconfig-maxcountrule
type ApplicationVersionLifecycleConfig =
  { "MaxAgeRule" :: Maybe (Value MaxAgeRule)
  , "MaxCountRule" :: Maybe (Value MaxCountRule)
  }

applicationVersionLifecycleConfig :: ApplicationVersionLifecycleConfig
applicationVersionLifecycleConfig =
  { "MaxAgeRule" : Nothing
  , "MaxCountRule" : Nothing
  }

-- | `AWS::ElasticBeanstalk::Application.ApplicationResourceLifecycleConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html
-- |
-- | - `ServiceRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-servicerole
-- | - `VersionLifecycleConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-application-applicationresourcelifecycleconfig.html#cfn-elasticbeanstalk-application-applicationresourcelifecycleconfig-versionlifecycleconfig
type ApplicationResourceLifecycleConfig =
  { "ServiceRole" :: Maybe (Value String)
  , "VersionLifecycleConfig" :: Maybe (Value ApplicationVersionLifecycleConfig)
  }

applicationResourceLifecycleConfig :: ApplicationResourceLifecycleConfig
applicationResourceLifecycleConfig =
  { "ServiceRole" : Nothing
  , "VersionLifecycleConfig" : Nothing
  }