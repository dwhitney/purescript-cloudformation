module CloudFormation.AWS.CodePipeline.Pipeline where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


-- | `AWS::CodePipeline::Pipeline`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html-- |
-- | - `ArtifactStore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-artifactstore
-- | - `ArtifactStores`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-artifactstores
-- | - `DisableInboundStageTransitions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-disableinboundstagetransitions
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-name
-- | - `RestartExecutionOnUpdate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-restartexecutiononupdate
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-rolearn
-- | - `Stages`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html#cfn-codepipeline-pipeline-stages
type Pipeline =
  { "RoleArn" :: String
  , "Stages" :: Array StageDeclaration
  , "ArtifactStore" :: Maybe ArtifactStore
  , "ArtifactStores" :: Maybe (Array ArtifactStoreMap)
  , "DisableInboundStageTransitions" :: Maybe (Array StageTransition)
  , "Name" :: Maybe String
  , "RestartExecutionOnUpdate" :: Maybe Boolean
  }

pipeline :: { "RoleArn" :: String, "Stages" :: Array StageDeclaration } -> Pipeline
pipeline required =
  merge required
    { "ArtifactStore" : Nothing
    , "ArtifactStores" : Nothing
    , "DisableInboundStageTransitions" : Nothing
    , "Name" : Nothing
    , "RestartExecutionOnUpdate" : Nothing
    }

-- | `AWS::CodePipeline::Pipeline.ActionTypeId`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html-- |
-- | - `Category`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-category
-- | - `Owner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-owner
-- | - `Provider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-provider
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-version
type ActionTypeId =
  { "Category" :: String
  , "Owner" :: String
  , "Provider" :: String
  , "Version" :: String
  }

actionTypeId :: { "Category" :: String, "Owner" :: String, "Provider" :: String, "Version" :: String } -> ActionTypeId
actionTypeId required =
  required

-- | `AWS::CodePipeline::Pipeline.ArtifactStore`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html-- |
-- | - `EncryptionKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-location
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-type
type ArtifactStore =
  { "Location" :: String
  , "Type" :: String
  , "EncryptionKey" :: Maybe EncryptionKey
  }

artifactStore :: { "Location" :: String, "Type" :: String } -> ArtifactStore
artifactStore required =
  merge required
    { "EncryptionKey" : Nothing
    }

-- | `AWS::CodePipeline::Pipeline.StageTransition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html-- |
-- | - `Reason`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html#cfn-codepipeline-pipeline-disableinboundstagetransitions-reason
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html#cfn-codepipeline-pipeline-disableinboundstagetransitions-stagename
type StageTransition =
  { "Reason" :: String
  , "StageName" :: String
  }

stageTransition :: { "Reason" :: String, "StageName" :: String } -> StageTransition
stageTransition required =
  required

-- | `AWS::CodePipeline::Pipeline.StageDeclaration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-actions
-- | - `Blockers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-blockers
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-name
type StageDeclaration =
  { "Actions" :: Array ActionDeclaration
  , "Name" :: String
  , "Blockers" :: Maybe (Array BlockerDeclaration)
  }

stageDeclaration :: { "Actions" :: Array ActionDeclaration, "Name" :: String } -> StageDeclaration
stageDeclaration required =
  merge required
    { "Blockers" : Nothing
    }

-- | `AWS::CodePipeline::Pipeline.ActionDeclaration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html-- |
-- | - `ActionTypeId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-configuration
-- | - `InputArtifacts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-name
-- | - `OutputArtifacts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-region
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-rolearn
-- | - `RunOrder`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-runorder
type ActionDeclaration =
  { "ActionTypeId" :: ActionTypeId
  , "Name" :: String
  , "Configuration" :: Maybe Foreign
  , "InputArtifacts" :: Maybe (Array InputArtifact)
  , "OutputArtifacts" :: Maybe (Array OutputArtifact)
  , "Region" :: Maybe String
  , "RoleArn" :: Maybe String
  , "RunOrder" :: Maybe Int
  }

actionDeclaration :: { "ActionTypeId" :: ActionTypeId, "Name" :: String } -> ActionDeclaration
actionDeclaration required =
  merge required
    { "Configuration" : Nothing
    , "InputArtifacts" : Nothing
    , "OutputArtifacts" : Nothing
    , "Region" : Nothing
    , "RoleArn" : Nothing
    , "RunOrder" : Nothing
    }

-- | `AWS::CodePipeline::Pipeline.EncryptionKey`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html-- |
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-id
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-type
type EncryptionKey =
  { "Id" :: String
  , "Type" :: String
  }

encryptionKey :: { "Id" :: String, "Type" :: String } -> EncryptionKey
encryptionKey required =
  required

-- | `AWS::CodePipeline::Pipeline.OutputArtifact`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts-name
type OutputArtifact =
  { "Name" :: String
  }

outputArtifact :: { "Name" :: String } -> OutputArtifact
outputArtifact required =
  required

-- | `AWS::CodePipeline::Pipeline.ArtifactStoreMap`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html-- |
-- | - `ArtifactStore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-artifactstore
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-region
type ArtifactStoreMap =
  { "ArtifactStore" :: ArtifactStore
  , "Region" :: String
  }

artifactStoreMap :: { "ArtifactStore" :: ArtifactStore, "Region" :: String } -> ArtifactStoreMap
artifactStoreMap required =
  required

-- | `AWS::CodePipeline::Pipeline.BlockerDeclaration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html#cfn-codepipeline-pipeline-stages-blockers-name
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html#cfn-codepipeline-pipeline-stages-blockers-type
type BlockerDeclaration =
  { "Name" :: String
  , "Type" :: String
  }

blockerDeclaration :: { "Name" :: String, "Type" :: String } -> BlockerDeclaration
blockerDeclaration required =
  required

-- | `AWS::CodePipeline::Pipeline.InputArtifact`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts-name
type InputArtifact =
  { "Name" :: String
  }

inputArtifact :: { "Name" :: String } -> InputArtifact
inputArtifact required =
  required