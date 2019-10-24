module AWS.ECR.Repository where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Tag


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

type LifecyclePolicy =
  { "LifecyclePolicyText" :: Maybe String
  , "RegistryId" :: Maybe String
  }

lifecyclePolicy :: LifecyclePolicy
lifecyclePolicy =
  { "LifecyclePolicyText" : Nothing
  , "RegistryId" : Nothing
  }