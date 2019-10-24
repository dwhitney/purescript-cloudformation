module AWS.ApiGateway.Account where 

import Data.Maybe (Maybe(..))


type Account =
  { "CloudWatchRoleArn" :: Maybe String
  }

account :: Account
account =
  { "CloudWatchRoleArn" : Nothing
  }