module CloudFormation.AWS.Amplify.Domain where 




type Domain =
  { "SubDomainSettings" :: Array SubDomainSetting
  , "AppId" :: String
  , "DomainName" :: String
  }

domain :: { "SubDomainSettings" :: Array SubDomainSetting, "AppId" :: String, "DomainName" :: String } -> Domain
domain required =
  required

type SubDomainSetting =
  { "Prefix" :: String
  , "BranchName" :: String
  }

subDomainSetting :: { "Prefix" :: String, "BranchName" :: String } -> SubDomainSetting
subDomainSetting required =
  required