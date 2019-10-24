module CloudFormation.AWS.DirectoryService.MicrosoftAD where 

import Data.Maybe (Maybe(..))
import Record (merge)


type MicrosoftAD =
  { "Name" :: String
  , "Password" :: String
  , "VpcSettings" :: VpcSettings
  , "CreateAlias" :: Maybe Boolean
  , "Edition" :: Maybe String
  , "EnableSso" :: Maybe Boolean
  , "ShortName" :: Maybe String
  }

microsoftAD :: { "Name" :: String, "Password" :: String, "VpcSettings" :: VpcSettings } -> MicrosoftAD
microsoftAD required =
  merge required
    { "CreateAlias" : Nothing
    , "Edition" : Nothing
    , "EnableSso" : Nothing
    , "ShortName" : Nothing
    }

type VpcSettings =
  { "SubnetIds" :: Array String
  , "VpcId" :: String
  }

vpcSettings :: { "SubnetIds" :: Array String, "VpcId" :: String } -> VpcSettings
vpcSettings required =
  required