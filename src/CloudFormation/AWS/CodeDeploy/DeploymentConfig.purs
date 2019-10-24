module CloudFormation.AWS.CodeDeploy.DeploymentConfig where 

import Data.Maybe (Maybe(..))


-- | `AWS::CodeDeploy::DeploymentConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html-- |
-- | - `DeploymentConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-deploymentconfigname
-- | - `MinimumHealthyHosts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts
type DeploymentConfig =
  { "DeploymentConfigName" :: Maybe String
  , "MinimumHealthyHosts" :: Maybe MinimumHealthyHosts
  }

deploymentConfig :: DeploymentConfig
deploymentConfig =
  { "DeploymentConfigName" : Nothing
  , "MinimumHealthyHosts" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value
type MinimumHealthyHosts =
  { "Type" :: String
  , "Value" :: Int
  }

minimumHealthyHosts :: { "Type" :: String, "Value" :: Int } -> MinimumHealthyHosts
minimumHealthyHosts required =
  required