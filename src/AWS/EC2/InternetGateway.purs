module AWS.EC2.InternetGateway where 

import Tag
import Data.Maybe (Maybe(..))


type InternetGateway =
  { "Tags" :: Maybe (Array Tag)
  }

internetGateway :: InternetGateway
internetGateway =
  { "Tags" : Nothing
  }