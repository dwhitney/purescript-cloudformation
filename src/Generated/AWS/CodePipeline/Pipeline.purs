module CloudFormation.AWS.CodePipeline.Pipeline where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::CodePipeline::Pipeline`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-pipeline.html
-- |
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
newtype Pipeline = Pipeline
  { "RoleArn" :: Value String
  , "Stages" :: Value (Array StageDeclaration)
  , "ArtifactStore" :: Maybe (Value ArtifactStore)
  , "ArtifactStores" :: Maybe (Value (Array ArtifactStoreMap))
  , "DisableInboundStageTransitions" :: Maybe (Value (Array StageTransition))
  , "Name" :: Maybe (Value String)
  , "RestartExecutionOnUpdate" :: Maybe (Value Boolean)
  }

derive instance newtypePipeline :: Newtype Pipeline _
derive newtype instance writePipeline :: WriteForeign Pipeline
instance resourcePipeline :: Resource Pipeline where type_ _ = "AWS::CodePipeline::Pipeline"

pipeline :: { "RoleArn" :: Value String, "Stages" :: Value (Array StageDeclaration) } -> Pipeline
pipeline required = Pipeline
  (merge required
    { "ArtifactStore" : Nothing
    , "ArtifactStores" : Nothing
    , "DisableInboundStageTransitions" : Nothing
    , "Name" : Nothing
    , "RestartExecutionOnUpdate" : Nothing
    })

-- | `AWS::CodePipeline::Pipeline.ActionTypeId`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html
-- |
-- | - `Category`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-category
-- | - `Owner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-owner
-- | - `Provider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-provider
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-actiontypeid.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid-version
type ActionTypeId =
  { "Category" :: Value String
  , "Owner" :: Value String
  , "Provider" :: Value String
  , "Version" :: Value String
  }

actionTypeId :: { "Category" :: Value String, "Owner" :: Value String, "Provider" :: Value String, "Version" :: Value String } -> ActionTypeId
actionTypeId required =
  required

-- | `AWS::CodePipeline::Pipeline.ArtifactStore`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html
-- |
-- | - `EncryptionKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-location
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-type
type ArtifactStore =
  { "Location" :: Value String
  , "Type" :: Value String
  , "EncryptionKey" :: Maybe (Value EncryptionKey)
  }

artifactStore :: { "Location" :: Value String, "Type" :: Value String } -> ArtifactStore
artifactStore required =
  (merge required
    { "EncryptionKey" : Nothing
    })

-- | `AWS::CodePipeline::Pipeline.StageTransition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html
-- |
-- | - `Reason`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html#cfn-codepipeline-pipeline-disableinboundstagetransitions-reason
-- | - `StageName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html#cfn-codepipeline-pipeline-disableinboundstagetransitions-stagename
type StageTransition =
  { "Reason" :: Value String
  , "StageName" :: Value String
  }

stageTransition :: { "Reason" :: Value String, "StageName" :: Value String } -> StageTransition
stageTransition required =
  required

-- | `AWS::CodePipeline::Pipeline.StageDeclaration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html
-- |
-- | - `Actions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-actions
-- | - `Blockers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-blockers
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-name
type StageDeclaration =
  { "Actions" :: Value (Array ActionDeclaration)
  , "Name" :: Value String
  , "Blockers" :: Maybe (Value (Array BlockerDeclaration))
  }

stageDeclaration :: { "Actions" :: Value (Array ActionDeclaration), "Name" :: Value String } -> StageDeclaration
stageDeclaration required =
  (merge required
    { "Blockers" : Nothing
    })

-- | `AWS::CodePipeline::Pipeline.ActionDeclaration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html
-- |
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
  { "ActionTypeId" :: Value ActionTypeId
  , "Name" :: Value String
  , "Configuration" :: Maybe (Value CF.Json)
  , "InputArtifacts" :: Maybe (Value (Array InputArtifact))
  , "OutputArtifacts" :: Maybe (Value (Array OutputArtifact))
  , "Region" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "RunOrder" :: Maybe (Value Int)
  }

actionDeclaration :: { "ActionTypeId" :: Value ActionTypeId, "Name" :: Value String } -> ActionDeclaration
actionDeclaration required =
  (merge required
    { "Configuration" : Nothing
    , "InputArtifacts" : Nothing
    , "OutputArtifacts" : Nothing
    , "Region" : Nothing
    , "RoleArn" : Nothing
    , "RunOrder" : Nothing
    })

-- | `AWS::CodePipeline::Pipeline.EncryptionKey`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html
-- |
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-id
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-type
type EncryptionKey =
  { "Id" :: Value String
  , "Type" :: Value String
  }

encryptionKey :: { "Id" :: Value String, "Type" :: Value String } -> EncryptionKey
encryptionKey required =
  required

-- | `AWS::CodePipeline::Pipeline.OutputArtifact`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts-name
type OutputArtifact =
  { "Name" :: Value String
  }

outputArtifact :: { "Name" :: Value String } -> OutputArtifact
outputArtifact required =
  required

-- | `AWS::CodePipeline::Pipeline.ArtifactStoreMap`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html
-- |
-- | - `ArtifactStore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-artifactstore
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstoremap.html#cfn-codepipeline-pipeline-artifactstoremap-region
type ArtifactStoreMap =
  { "ArtifactStore" :: Value ArtifactStore
  , "Region" :: Value String
  }

artifactStoreMap :: { "ArtifactStore" :: Value ArtifactStore, "Region" :: Value String } -> ArtifactStoreMap
artifactStoreMap required =
  required

-- | `AWS::CodePipeline::Pipeline.BlockerDeclaration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html#cfn-codepipeline-pipeline-stages-blockers-name
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-blockers.html#cfn-codepipeline-pipeline-stages-blockers-type
type BlockerDeclaration =
  { "Name" :: Value String
  , "Type" :: Value String
  }

blockerDeclaration :: { "Name" :: Value String, "Type" :: Value String } -> BlockerDeclaration
blockerDeclaration required =
  required

-- | `AWS::CodePipeline::Pipeline.InputArtifact`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-inputartifacts.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts-name
type InputArtifact =
  { "Name" :: Value String
  }

inputArtifact :: { "Name" :: Value String } -> InputArtifact
inputArtifact required =
  required