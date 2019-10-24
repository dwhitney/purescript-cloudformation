module CloudFormation.AWS.CodeStar.GitHubRepository where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CodeStar::GitHubRepository`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestar-githubrepository.html-- |
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
type GitHubRepository =
  { "RepositoryName" :: String
  , "RepositoryAccessToken" :: String
  , "RepositoryOwner" :: String
  , "EnableIssues" :: Maybe Boolean
  , "IsPrivate" :: Maybe Boolean
  , "Code" :: Maybe Code
  , "RepositoryDescription" :: Maybe String
  }

gitHubRepository :: { "RepositoryName" :: String, "RepositoryAccessToken" :: String, "RepositoryOwner" :: String } -> GitHubRepository
gitHubRepository required =
  merge required
    { "EnableIssues" : Nothing
    , "IsPrivate" : Nothing
    , "Code" : Nothing
    , "RepositoryDescription" : Nothing
    }

-- | `AWS::CodeStar::GitHubRepository.S3`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html-- |
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-objectversion
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-s3.html#cfn-codestar-githubrepository-s3-key
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

-- | `AWS::CodeStar::GitHubRepository.Code`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-code.html-- |
-- | - `S3`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestar-githubrepository-code.html#cfn-codestar-githubrepository-code-s3
type Code =
  { "S3" :: S3
  }

code :: { "S3" :: S3 } -> Code
code required =
  required