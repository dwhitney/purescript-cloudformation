module CloudFormation.AWS.AppStream.DirectoryConfig where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppStream::DirectoryConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html
-- |
-- | - `OrganizationalUnitDistinguishedNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-organizationalunitdistinguishednames
-- | - `ServiceAccountCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-serviceaccountcredentials
-- | - `DirectoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-directoryname
newtype DirectoryConfig = DirectoryConfig
  { "OrganizationalUnitDistinguishedNames" :: Array String
  , "ServiceAccountCredentials" :: ServiceAccountCredentials
  , "DirectoryName" :: String
  }

derive instance newtypeDirectoryConfig :: Newtype DirectoryConfig _
instance resourceDirectoryConfig :: Resource DirectoryConfig where type_ _ = "AWS::AppStream::DirectoryConfig"

directoryConfig :: { "OrganizationalUnitDistinguishedNames" :: Array String, "ServiceAccountCredentials" :: ServiceAccountCredentials, "DirectoryName" :: String } -> DirectoryConfig
directoryConfig required = DirectoryConfig
  required

-- | `AWS::AppStream::DirectoryConfig.ServiceAccountCredentials`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html
-- |
-- | - `AccountName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html#cfn-appstream-directoryconfig-serviceaccountcredentials-accountname
-- | - `AccountPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-directoryconfig-serviceaccountcredentials.html#cfn-appstream-directoryconfig-serviceaccountcredentials-accountpassword
type ServiceAccountCredentials =
  { "AccountName" :: String
  , "AccountPassword" :: String
  }

serviceAccountCredentials :: { "AccountName" :: String, "AccountPassword" :: String } -> ServiceAccountCredentials
serviceAccountCredentials required =
  required