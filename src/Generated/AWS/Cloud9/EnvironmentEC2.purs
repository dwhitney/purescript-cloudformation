module CloudFormation.AWS.Cloud9.EnvironmentEC2 where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "InstanceType" :: String
  , "Repositories" :: Maybe (Array Repository)
  , "OwnerArn" :: Maybe String
  , "Description" :: Maybe String
  , "AutomaticStopTimeMinutes" :: Maybe Int
  , "SubnetId" :: Maybe String
  , "Name" :: Maybe String
  }

derive instance newtypeEnvironmentEC2 :: Newtype EnvironmentEC2 _
instance resourceEnvironmentEC2 :: Resource EnvironmentEC2 where type_ _ = "AWS::Cloud9::EnvironmentEC2"

environmentEC2 :: { "InstanceType" :: String } -> EnvironmentEC2
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
  { "PathComponent" :: String
  , "RepositoryUrl" :: String
  }

repository :: { "PathComponent" :: String, "RepositoryUrl" :: String } -> Repository
repository required =
  required