module AWS.AmazonMQ.ConfigurationAssociation where 




type ConfigurationAssociation =
  { "Broker" :: String
  , "Configuration" :: ConfigurationId
  }

configurationAssociation :: { "Broker" :: String, "Configuration" :: ConfigurationId } -> ConfigurationAssociation
configurationAssociation required =
  required

type ConfigurationId =
  { "Revision" :: Int
  , "Id" :: String
  }

configurationId :: { "Revision" :: Int, "Id" :: String } -> ConfigurationId
configurationId required =
  required