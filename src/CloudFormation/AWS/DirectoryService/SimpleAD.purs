module CloudFormation.AWS.DirectoryService.SimpleAD where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SimpleAD =
  { "Name" :: String
  , "Password" :: String
  , "Size" :: String
  , "VpcSettings" :: VpcSettings
  , "CreateAlias" :: Maybe Boolean
  , "Description" :: Maybe String
  , "EnableSso" :: Maybe Boolean
  , "ShortName" :: Maybe String
  }

simpleAD :: { "Name" :: String, "Password" :: String, "Size" :: String, "VpcSettings" :: VpcSettings } -> SimpleAD
simpleAD required =
  merge required
    { "CreateAlias" : Nothing
    , "Description" : Nothing
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