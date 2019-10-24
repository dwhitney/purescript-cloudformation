module AWS.OpsWorks.App where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)


type App =
  { "Name" :: String
  , "StackId" :: String
  , "Type" :: String
  , "AppSource" :: Maybe Source
  , "Attributes" :: Maybe (Object String)
  , "DataSources" :: Maybe (Array DataSource)
  , "Description" :: Maybe String
  , "Domains" :: Maybe (Array String)
  , "EnableSsl" :: Maybe Boolean
  , "Environment" :: Maybe (Array EnvironmentVariable)
  , "Shortname" :: Maybe String
  , "SslConfiguration" :: Maybe SslConfiguration
  }

app :: { "Name" :: String, "StackId" :: String, "Type" :: String } -> App
app required =
  merge required
    { "AppSource" : Nothing
    , "Attributes" : Nothing
    , "DataSources" : Nothing
    , "Description" : Nothing
    , "Domains" : Nothing
    , "EnableSsl" : Nothing
    , "Environment" : Nothing
    , "Shortname" : Nothing
    , "SslConfiguration" : Nothing
    }

type Source =
  { "Password" :: Maybe String
  , "Revision" :: Maybe String
  , "SshKey" :: Maybe String
  , "Type" :: Maybe String
  , "Url" :: Maybe String
  , "Username" :: Maybe String
  }

source :: Source
source =
  { "Password" : Nothing
  , "Revision" : Nothing
  , "SshKey" : Nothing
  , "Type" : Nothing
  , "Url" : Nothing
  , "Username" : Nothing
  }

type SslConfiguration =
  { "Certificate" :: Maybe String
  , "Chain" :: Maybe String
  , "PrivateKey" :: Maybe String
  }

sslConfiguration :: SslConfiguration
sslConfiguration =
  { "Certificate" : Nothing
  , "Chain" : Nothing
  , "PrivateKey" : Nothing
  }

type EnvironmentVariable =
  { "Key" :: String
  , "Value" :: String
  , "Secure" :: Maybe Boolean
  }

environmentVariable :: { "Key" :: String, "Value" :: String } -> EnvironmentVariable
environmentVariable required =
  merge required
    { "Secure" : Nothing
    }

type DataSource =
  { "Arn" :: Maybe String
  , "DatabaseName" :: Maybe String
  , "Type" :: Maybe String
  }

dataSource :: DataSource
dataSource =
  { "Arn" : Nothing
  , "DatabaseName" : Nothing
  , "Type" : Nothing
  }