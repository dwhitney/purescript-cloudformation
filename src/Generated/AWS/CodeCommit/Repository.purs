module CloudFormation.AWS.CodeCommit.Repository where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodeCommit::Repository`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html
-- |
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
newtype Repository = Repository
  { "RepositoryName" :: Value String
  , "Triggers" :: Maybe (Value (Array RepositoryTrigger))
  , "Code" :: Maybe (Value Code)
  , "RepositoryDescription" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeRepository :: Newtype Repository _
derive newtype instance writeRepository :: WriteForeign Repository
instance resourceRepository :: Resource Repository where type_ _ = "AWS::CodeCommit::Repository"

repository :: { "RepositoryName" :: Value String } -> Repository
repository required = Repository
  (merge required
    { "Triggers" : Nothing
    , "Code" : Nothing
    , "RepositoryDescription" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::CodeCommit::Repository.RepositoryTrigger`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html
-- |
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
  { "Events" :: Value (Array String)
  , "DestinationArn" :: Value String
  , "Name" :: Value String
  , "Branches" :: Maybe (Value (Array String))
  , "CustomData" :: Maybe (Value String)
  }

repositoryTrigger :: { "Events" :: Value (Array String), "DestinationArn" :: Value String, "Name" :: Value String } -> RepositoryTrigger
repositoryTrigger required =
  (merge required
    { "Branches" : Nothing
    , "CustomData" : Nothing
    })

-- | `AWS::CodeCommit::Repository.S3`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html
-- |
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-objectversion
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-s3.html#cfn-codecommit-repository-s3-key
type S3 =
  { "Bucket" :: Value String
  , "Key" :: Value String
  , "ObjectVersion" :: Maybe (Value String)
  }

s3 :: { "Bucket" :: Value String, "Key" :: Value String } -> S3
s3 required =
  (merge required
    { "ObjectVersion" : Nothing
    })

-- | `AWS::CodeCommit::Repository.Code`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html
-- |
-- | - `S3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-code.html#cfn-codecommit-repository-code-s3
type Code =
  { "S3" :: Value S3
  }

code :: { "S3" :: Value S3 } -> Code
code required =
  required