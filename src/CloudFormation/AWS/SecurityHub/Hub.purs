module CloudFormation.AWS.SecurityHub.Hub where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


type Hub =
  { "Tags" :: Maybe Foreign
  }

hub :: Hub
hub =
  { "Tags" : Nothing
  }