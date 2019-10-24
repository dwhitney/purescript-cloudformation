module CloudFormation.AWS.MediaLive.InputSecurityGroup where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


type InputSecurityGroup =
  { "WhitelistRules" :: Maybe (Array InputWhitelistRuleCidr)
  , "Tags" :: Maybe Foreign
  }

inputSecurityGroup :: InputSecurityGroup
inputSecurityGroup =
  { "WhitelistRules" : Nothing
  , "Tags" : Nothing
  }

type InputWhitelistRuleCidr =
  { "Cidr" :: Maybe String
  }

inputWhitelistRuleCidr :: InputWhitelistRuleCidr
inputWhitelistRuleCidr =
  { "Cidr" : Nothing
  }