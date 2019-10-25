module CloudFormation.AWS.SageMaker.CodeRepository where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SageMaker::CodeRepository`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html
-- |
-- | - `CodeRepositoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html#cfn-sagemaker-coderepository-coderepositoryname
-- | - `GitConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-coderepository.html#cfn-sagemaker-coderepository-gitconfig
newtype CodeRepository = CodeRepository
  { "GitConfig" :: Value GitConfig
  , "CodeRepositoryName" :: Maybe (Value String)
  }

derive instance newtypeCodeRepository :: Newtype CodeRepository _
derive newtype instance writeCodeRepository :: WriteForeign CodeRepository
instance resourceCodeRepository :: Resource CodeRepository where type_ _ = "AWS::SageMaker::CodeRepository"

codeRepository :: { "GitConfig" :: Value GitConfig } -> CodeRepository
codeRepository required = CodeRepository
  (merge required
    { "CodeRepositoryName" : Nothing
    })

-- | `AWS::SageMaker::CodeRepository.GitConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html
-- |
-- | - `SecretArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-secretarn
-- | - `Branch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-branch
-- | - `RepositoryUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-coderepository-gitconfig.html#cfn-sagemaker-coderepository-gitconfig-repositoryurl
type GitConfig =
  { "RepositoryUrl" :: Value String
  , "SecretArn" :: Maybe (Value String)
  , "Branch" :: Maybe (Value String)
  }

gitConfig :: { "RepositoryUrl" :: Value String } -> GitConfig
gitConfig required =
  (merge required
    { "SecretArn" : Nothing
    , "Branch" : Nothing
    })