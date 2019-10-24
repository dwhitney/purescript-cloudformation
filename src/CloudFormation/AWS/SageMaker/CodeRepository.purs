module CloudFormation.AWS.SageMaker.CodeRepository where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SageMaker::CodeRepository`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html-- |
-- | - `CodeRepositoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html#cfn-sagemaker-coderepository-coderepositoryname
-- | - `GitConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html#cfn-sagemaker-coderepository-gitconfig
type CodeRepository =
  { "GitConfig" :: GitConfig
  , "CodeRepositoryName" :: Maybe String
  }

codeRepository :: { "GitConfig" :: GitConfig } -> CodeRepository
codeRepository required =
  merge required
    { "CodeRepositoryName" : Nothing
    }

-- | `AWS::SageMaker::CodeRepository.GitConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html-- |
-- | - `SecretArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-secretarn
-- | - `Branch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-branch
-- | - `RepositoryUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-repositoryurl
type GitConfig =
  { "RepositoryUrl" :: String
  , "SecretArn" :: Maybe String
  , "Branch" :: Maybe String
  }

gitConfig :: { "RepositoryUrl" :: String } -> GitConfig
gitConfig required =
  merge required
    { "SecretArn" : Nothing
    , "Branch" : Nothing
    }