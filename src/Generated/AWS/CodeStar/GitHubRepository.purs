module CloudFormation.AWS.CodeStar.GitHubRepository where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodeStar::GitHubRepository`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html
-- |
-- | - `EnableIssues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-enableissues
-- | - `RepositoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryname
-- | - `RepositoryAccessToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryaccesstoken
-- | - `RepositoryOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositoryowner
-- | - `IsPrivate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-isprivate
-- | - `Code`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-code
-- | - `RepositoryDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html#cfn-codestar-githubrepository-repositorydescription
newtype GitHubRepository = GitHubRepository
  { "RepositoryName" :: Value String
  , "RepositoryAccessToken" :: Value String
  , "RepositoryOwner" :: Value String
  , "EnableIssues" :: Maybe (Value Boolean)
  , "IsPrivate" :: Maybe (Value Boolean)
  , "Code" :: Maybe (Value Code)
  , "RepositoryDescription" :: Maybe (Value String)
  }

derive instance newtypeGitHubRepository :: Newtype GitHubRepository _
derive newtype instance writeGitHubRepository :: WriteForeign GitHubRepository
instance resourceGitHubRepository :: Resource GitHubRepository where type_ _ = "AWS::CodeStar::GitHubRepository"

gitHubRepository :: { "RepositoryName" :: Value String, "RepositoryAccessToken" :: Value String, "RepositoryOwner" :: Value String } -> GitHubRepository
gitHubRepository required = GitHubRepository
  (merge required
    { "EnableIssues" : Nothing
    , "IsPrivate" : Nothing
    , "Code" : Nothing
    , "RepositoryDescription" : Nothing
    })

-- | `AWS::CodeStar::GitHubRepository.S3`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html
-- |
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-objectversion
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-key
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

-- | `AWS::CodeStar::GitHubRepository.Code`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-code.html
-- |
-- | - `S3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-code.html#cfn-codestar-githubrepository-code-s3
type Code =
  { "S3" :: Value S3
  }

code :: { "S3" :: Value S3 } -> Code
code required =
  required