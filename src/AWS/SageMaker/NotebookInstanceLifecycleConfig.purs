module AWS.SageMaker.NotebookInstanceLifecycleConfig where 

import Data.Maybe (Maybe(..))


type NotebookInstanceLifecycleConfig =
  { "OnStart" :: Maybe (Array NotebookInstanceLifecycleHook)
  , "NotebookInstanceLifecycleConfigName" :: Maybe String
  , "OnCreate" :: Maybe (Array NotebookInstanceLifecycleHook)
  }

notebookInstanceLifecycleConfig :: NotebookInstanceLifecycleConfig
notebookInstanceLifecycleConfig =
  { "OnStart" : Nothing
  , "NotebookInstanceLifecycleConfigName" : Nothing
  , "OnCreate" : Nothing
  }

type NotebookInstanceLifecycleHook =
  { "Content" :: Maybe String
  }

notebookInstanceLifecycleHook :: NotebookInstanceLifecycleHook
notebookInstanceLifecycleHook =
  { "Content" : Nothing
  }