module CloudFormation.AWS.Cloud9.EnvironmentEC2 where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Cloud9::EnvironmentEC2`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html
-- |
-- | - `Repositories`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-repositories
-- | - `OwnerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-ownerarn
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-description
-- | - `AutomaticStopTimeMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-automaticstoptimeminutes
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-subnetid
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-instancetype
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloud9-environmentec2.html#cfn-cloud9-environmentec2-name
newtype EnvironmentEC2 = EnvironmentEC2
  { "InstanceType" :: Value String
  , "Repositories" :: Maybe (Value (Array Repository))
  , "OwnerArn" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "AutomaticStopTimeMinutes" :: Maybe (Value Int)
  , "SubnetId" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeEnvironmentEC2 :: Newtype EnvironmentEC2 _
derive newtype instance writeEnvironmentEC2 :: WriteForeign EnvironmentEC2
instance resourceEnvironmentEC2 :: Resource EnvironmentEC2 where type_ _ = "AWS::Cloud9::EnvironmentEC2"

environmentEC2 :: { "InstanceType" :: Value String } -> EnvironmentEC2
environmentEC2 required = EnvironmentEC2
  (merge required
    { "Repositories" : Nothing
    , "OwnerArn" : Nothing
    , "Description" : Nothing
    , "AutomaticStopTimeMinutes" : Nothing
    , "SubnetId" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::Cloud9::EnvironmentEC2.Repository`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html
-- |
-- | - `PathComponent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html#cfn-cloud9-environmentec2-repository-pathcomponent
-- | - `RepositoryUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html#cfn-cloud9-environmentec2-repository-repositoryurl
type Repository =
  { "PathComponent" :: Value String
  , "RepositoryUrl" :: Value String
  }

repository :: { "PathComponent" :: Value String, "RepositoryUrl" :: Value String } -> Repository
repository required =
  required