module CloudFormation.AWS.CodeCommit.Repository where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::CodeCommit::Repository`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html-- |
-- | - `RepositoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositoryname
-- | - `Triggers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-triggers
-- | - `Code`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-code
-- | - `RepositoryDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositorydescription
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-tags
type Repository =
  { "RepositoryName" :: String
  , "Triggers" :: Maybe (Array RepositoryTrigger)
  , "Code" :: Maybe Code
  , "RepositoryDescription" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

repository :: { "RepositoryName" :: String } -> Repository
repository required =
  merge required
    { "Triggers" : Nothing
    , "Code" : Nothing
    , "RepositoryDescription" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::CodeCommit::Repository.RepositoryTrigger`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html-- |
-- | - `Events`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events
-- | - `Branches`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-branches
-- | - `CustomData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata
-- | - `DestinationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name
type RepositoryTrigger =
  { "Events" :: Array String
  , "DestinationArn" :: String
  , "Name" :: String
  , "Branches" :: Maybe (Array String)
  , "CustomData" :: Maybe String
  }

repositoryTrigger :: { "Events" :: Array String, "DestinationArn" :: String, "Name" :: String } -> RepositoryTrigger
repositoryTrigger required =
  merge required
    { "Branches" : Nothing
    , "CustomData" : Nothing
    }

-- | `AWS::CodeCommit::Repository.S3`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html-- |
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-objectversion
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-key
type S3 =
  { "Bucket" :: String
  , "Key" :: String
  , "ObjectVersion" :: Maybe String
  }

s3 :: { "Bucket" :: String, "Key" :: String } -> S3
s3 required =
  merge required
    { "ObjectVersion" : Nothing
    }

-- | `AWS::CodeCommit::Repository.Code`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html-- |
-- | - `S3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-s3
type Code =
  { "S3" :: S3
  }

code :: { "S3" :: S3 } -> Code
code required =
  required