module AWS.SecretsManager.ResourcePolicy where 

import Foreign (Foreign)


type ResourcePolicy =
  { "SecretId" :: String
  , "ResourcePolicy" :: Foreign
  }

resourcePolicy :: { "SecretId" :: String, "ResourcePolicy" :: Foreign } -> ResourcePolicy
resourcePolicy required =
  required