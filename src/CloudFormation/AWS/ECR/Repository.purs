module CloudFormation.AWS.ECR.Repository where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import CloudFormation.Tag (Tag)


-- | `AWS::ECR::Repository`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html-- |
-- | - `LifecyclePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-lifecyclepolicy
-- | - `RepositoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositoryname
-- | - `RepositoryPolicyText`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositorypolicytext
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-tags
type Repository =
  { "LifecyclePolicy" :: Maybe LifecyclePolicy
  , "RepositoryName" :: Maybe String
  , "RepositoryPolicyText" :: Maybe Foreign
  , "Tags" :: Maybe (Array Tag)
  }

repository :: Repository
repository =
  { "LifecyclePolicy" : Nothing
  , "RepositoryName" : Nothing
  , "RepositoryPolicyText" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::ECR::Repository.LifecyclePolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html-- |
-- | - `LifecyclePolicyText`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-lifecyclepolicytext
-- | - `RegistryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-registryid
type LifecyclePolicy =
  { "LifecyclePolicyText" :: Maybe String
  , "RegistryId" :: Maybe String
  }

lifecyclePolicy :: LifecyclePolicy
lifecyclePolicy =
  { "LifecyclePolicyText" : Nothing
  , "RegistryId" : Nothing
  }