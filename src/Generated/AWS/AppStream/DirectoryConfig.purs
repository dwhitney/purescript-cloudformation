module CloudFormation.AWS.AppStream.DirectoryConfig where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "OrganizationalUnitDistinguishedNames" :: Value (Array String)
  , "ServiceAccountCredentials" :: Value ServiceAccountCredentials
  , "DirectoryName" :: Value String
  }

derive instance newtypeDirectoryConfig :: Newtype DirectoryConfig _
derive newtype instance writeDirectoryConfig :: WriteForeign DirectoryConfig
instance resourceDirectoryConfig :: Resource DirectoryConfig where type_ _ = "AWS::AppStream::DirectoryConfig"

directoryConfig :: { "OrganizationalUnitDistinguishedNames" :: Value (Array String), "ServiceAccountCredentials" :: Value ServiceAccountCredentials, "DirectoryName" :: Value String } -> DirectoryConfig
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
  { "AccountName" :: Value String
  , "AccountPassword" :: Value String
  }

serviceAccountCredentials :: { "AccountName" :: Value String, "AccountPassword" :: Value String } -> ServiceAccountCredentials
serviceAccountCredentials required =
  required