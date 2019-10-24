module AWS.MediaLive.Input where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


type Input =
  { "Type" :: Maybe String
  , "Destinations" :: Maybe (Array InputDestinationRequest)
  , "Vpc" :: Maybe InputVpcRequest
  , "MediaConnectFlows" :: Maybe (Array MediaConnectFlowRequest)
  , "InputSecurityGroups" :: Maybe (Array String)
  , "Sources" :: Maybe (Array InputSourceRequest)
  , "RoleArn" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

input :: Input
input =
  { "Type" : Nothing
  , "Destinations" : Nothing
  , "Vpc" : Nothing
  , "MediaConnectFlows" : Nothing
  , "InputSecurityGroups" : Nothing
  , "Sources" : Nothing
  , "RoleArn" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }

type MediaConnectFlowRequest =
  { "FlowArn" :: Maybe String
  }

mediaConnectFlowRequest :: MediaConnectFlowRequest
mediaConnectFlowRequest =
  { "FlowArn" : Nothing
  }

type InputDestinationRequest =
  { "StreamName" :: Maybe String
  }

inputDestinationRequest :: InputDestinationRequest
inputDestinationRequest =
  { "StreamName" : Nothing
  }

type InputSourceRequest =
  { "Username" :: Maybe String
  , "PasswordParam" :: Maybe String
  , "Url" :: Maybe String
  }

inputSourceRequest :: InputSourceRequest
inputSourceRequest =
  { "Username" : Nothing
  , "PasswordParam" : Nothing
  , "Url" : Nothing
  }

type InputVpcRequest =
  { "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  }

inputVpcRequest :: InputVpcRequest
inputVpcRequest =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }