module AWS.ApiGateway.UsagePlan where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)


type UsagePlan =
  { "ApiStages" :: Maybe (Array ApiStage)
  , "Description" :: Maybe String
  , "Quota" :: Maybe QuotaSettings
  , "Throttle" :: Maybe ThrottleSettings
  , "UsagePlanName" :: Maybe String
  }

usagePlan :: UsagePlan
usagePlan =
  { "ApiStages" : Nothing
  , "Description" : Nothing
  , "Quota" : Nothing
  , "Throttle" : Nothing
  , "UsagePlanName" : Nothing
  }

type QuotaSettings =
  { "Limit" :: Maybe Int
  , "Offset" :: Maybe Int
  , "Period" :: Maybe String
  }

quotaSettings :: QuotaSettings
quotaSettings =
  { "Limit" : Nothing
  , "Offset" : Nothing
  , "Period" : Nothing
  }

type ThrottleSettings =
  { "BurstLimit" :: Maybe Int
  , "RateLimit" :: Maybe Number
  }

throttleSettings :: ThrottleSettings
throttleSettings =
  { "BurstLimit" : Nothing
  , "RateLimit" : Nothing
  }

type ApiStage =
  { "ApiId" :: Maybe String
  , "Stage" :: Maybe String
  , "Throttle" :: Maybe (Object ThrottleSettings)
  }

apiStage :: ApiStage
apiStage =
  { "ApiId" : Nothing
  , "Stage" : Nothing
  , "Throttle" : Nothing
  }