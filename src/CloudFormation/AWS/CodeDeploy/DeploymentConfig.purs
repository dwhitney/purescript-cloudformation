module CloudFormation.AWS.CodeDeploy.DeploymentConfig where 

import Data.Maybe (Maybe(..))


type DeploymentConfig =
  { "DeploymentConfigName" :: Maybe String
  , "MinimumHealthyHosts" :: Maybe MinimumHealthyHosts
  }

deploymentConfig :: DeploymentConfig
deploymentConfig =
  { "DeploymentConfigName" : Nothing
  , "MinimumHealthyHosts" : Nothing
  }

type MinimumHealthyHosts =
  { "Type" :: String
  , "Value" :: Int
  }

minimumHealthyHosts :: { "Type" :: String, "Value" :: Int } -> MinimumHealthyHosts
minimumHealthyHosts required =
  required