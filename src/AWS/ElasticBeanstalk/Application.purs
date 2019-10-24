module AWS.ElasticBeanstalk.Application where 

import Data.Maybe (Maybe(..))


type Application =
  { "ApplicationName" :: Maybe String
  , "Description" :: Maybe String
  , "ResourceLifecycleConfig" :: Maybe ApplicationResourceLifecycleConfig
  }

application :: Application
application =
  { "ApplicationName" : Nothing
  , "Description" : Nothing
  , "ResourceLifecycleConfig" : Nothing
  }

type MaxCountRule =
  { "DeleteSourceFromS3" :: Maybe Boolean
  , "Enabled" :: Maybe Boolean
  , "MaxCount" :: Maybe Int
  }

maxCountRule :: MaxCountRule
maxCountRule =
  { "DeleteSourceFromS3" : Nothing
  , "Enabled" : Nothing
  , "MaxCount" : Nothing
  }

type MaxAgeRule =
  { "DeleteSourceFromS3" :: Maybe Boolean
  , "Enabled" :: Maybe Boolean
  , "MaxAgeInDays" :: Maybe Int
  }

maxAgeRule :: MaxAgeRule
maxAgeRule =
  { "DeleteSourceFromS3" : Nothing
  , "Enabled" : Nothing
  , "MaxAgeInDays" : Nothing
  }

type ApplicationVersionLifecycleConfig =
  { "MaxAgeRule" :: Maybe MaxAgeRule
  , "MaxCountRule" :: Maybe MaxCountRule
  }

applicationVersionLifecycleConfig :: ApplicationVersionLifecycleConfig
applicationVersionLifecycleConfig =
  { "MaxAgeRule" : Nothing
  , "MaxCountRule" : Nothing
  }

type ApplicationResourceLifecycleConfig =
  { "ServiceRole" :: Maybe String
  , "VersionLifecycleConfig" :: Maybe ApplicationVersionLifecycleConfig
  }

applicationResourceLifecycleConfig :: ApplicationResourceLifecycleConfig
applicationResourceLifecycleConfig =
  { "ServiceRole" : Nothing
  , "VersionLifecycleConfig" : Nothing
  }