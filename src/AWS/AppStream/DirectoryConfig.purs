module AWS.AppStream.DirectoryConfig where 




type DirectoryConfig =
  { "OrganizationalUnitDistinguishedNames" :: Array String
  , "ServiceAccountCredentials" :: ServiceAccountCredentials
  , "DirectoryName" :: String
  }

directoryConfig :: { "OrganizationalUnitDistinguishedNames" :: Array String, "ServiceAccountCredentials" :: ServiceAccountCredentials, "DirectoryName" :: String } -> DirectoryConfig
directoryConfig required =
  required

type ServiceAccountCredentials =
  { "AccountName" :: String
  , "AccountPassword" :: String
  }

serviceAccountCredentials :: { "AccountName" :: String, "AccountPassword" :: String } -> ServiceAccountCredentials
serviceAccountCredentials required =
  required