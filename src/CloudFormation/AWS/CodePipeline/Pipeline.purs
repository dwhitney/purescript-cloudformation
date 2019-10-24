module CloudFormation.AWS.CodePipeline.Pipeline where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


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

type ActionTypeId =
  { "Category" :: String
  , "Owner" :: String
  , "Provider" :: String
  , "Version" :: String
  }

actionTypeId :: { "Category" :: String, "Owner" :: String, "Provider" :: String, "Version" :: String } -> ActionTypeId
actionTypeId required =
  required

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

type StageTransition =
  { "Reason" :: String
  , "StageName" :: String
  }

stageTransition :: { "Reason" :: String, "StageName" :: String } -> StageTransition
stageTransition required =
  required

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

type EncryptionKey =
  { "Id" :: String
  , "Type" :: String
  }

encryptionKey :: { "Id" :: String, "Type" :: String } -> EncryptionKey
encryptionKey required =
  required

type OutputArtifact =
  { "Name" :: String
  }

outputArtifact :: { "Name" :: String } -> OutputArtifact
outputArtifact required =
  required

type ArtifactStoreMap =
  { "ArtifactStore" :: ArtifactStore
  , "Region" :: String
  }

artifactStoreMap :: { "ArtifactStore" :: ArtifactStore, "Region" :: String } -> ArtifactStoreMap
artifactStoreMap required =
  required

type BlockerDeclaration =
  { "Name" :: String
  , "Type" :: String
  }

blockerDeclaration :: { "Name" :: String, "Type" :: String } -> BlockerDeclaration
blockerDeclaration required =
  required

type InputArtifact =
  { "Name" :: String
  }

inputArtifact :: { "Name" :: String } -> InputArtifact
inputArtifact required =
  required