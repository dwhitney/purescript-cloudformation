module CloudFormation.AWS.CodeDeploy.DeploymentConfig where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodeDeploy::DeploymentConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html
-- |
-- | - `DeploymentConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-deploymentconfigname
-- | - `MinimumHealthyHosts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts
newtype DeploymentConfig = DeploymentConfig
  { "DeploymentConfigName" :: Maybe (Value String)
  , "MinimumHealthyHosts" :: Maybe (Value MinimumHealthyHosts)
  }

derive instance newtypeDeploymentConfig :: Newtype DeploymentConfig _
derive newtype instance writeDeploymentConfig :: WriteForeign DeploymentConfig
instance resourceDeploymentConfig :: Resource DeploymentConfig where type_ _ = "AWS::CodeDeploy::DeploymentConfig"

deploymentConfig :: DeploymentConfig
deploymentConfig = DeploymentConfig
  { "DeploymentConfigName" : Nothing
  , "MinimumHealthyHosts" : Nothing
  }

-- | `AWS::CodeDeploy::DeploymentConfig.MinimumHealthyHosts`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value
type MinimumHealthyHosts =
  { "Type" :: Value String
  , "Value" :: Value Int
  }

minimumHealthyHosts :: { "Type" :: Value String, "Value" :: Value Int } -> MinimumHealthyHosts
minimumHealthyHosts required =
  required