module CloudFormation.AWS.ECR.Repository where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ECR::Repository`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html
-- |
-- | - `LifecyclePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-lifecyclepolicy
-- | - `RepositoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositoryname
-- | - `RepositoryPolicyText`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-repositorypolicytext
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-repository.html#cfn-ecr-repository-tags
newtype Repository = Repository
  { "LifecyclePolicy" :: Maybe (Value LifecyclePolicy)
  , "RepositoryName" :: Maybe (Value String)
  , "RepositoryPolicyText" :: Maybe (Value CF.Json)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeRepository :: Newtype Repository _
derive newtype instance writeRepository :: WriteForeign Repository
instance resourceRepository :: Resource Repository where type_ _ = "AWS::ECR::Repository"

repository :: Repository
repository = Repository
  { "LifecyclePolicy" : Nothing
  , "RepositoryName" : Nothing
  , "RepositoryPolicyText" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::ECR::Repository.LifecyclePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html
-- |
-- | - `LifecyclePolicyText`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-lifecyclepolicytext
-- | - `RegistryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repository-lifecyclepolicy.html#cfn-ecr-repository-lifecyclepolicy-registryid
type LifecyclePolicy =
  { "LifecyclePolicyText" :: Maybe (Value String)
  , "RegistryId" :: Maybe (Value String)
  }

lifecyclePolicy :: LifecyclePolicy
lifecyclePolicy =
  { "LifecyclePolicyText" : Nothing
  , "RegistryId" : Nothing
  }