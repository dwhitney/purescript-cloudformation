module CloudFormation.AWS.CodeDeploy.Application where 

import Data.Maybe (Maybe(..))


type Application =
  { "ApplicationName" :: Maybe String
  , "ComputePlatform" :: Maybe String
  }

application :: Application
application =
  { "ApplicationName" : Nothing
  , "ComputePlatform" : Nothing
  }