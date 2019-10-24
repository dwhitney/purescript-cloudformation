module CloudFormation.AWS.AppStream.DirectoryConfig where 




-- | `AWS::AppStream::DirectoryConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html
-- |
-- | - `OrganizationalUnitDistinguishedNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-organizationalunitdistinguishednames
-- | - `ServiceAccountCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-serviceaccountcredentials
-- | - `DirectoryName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-directoryconfig.html#cfn-appstream-directoryconfig-directoryname
type DirectoryConfig =
  { "OrganizationalUnitDistinguishedNames" :: Array String
  , "ServiceAccountCredentials" :: ServiceAccountCredentials
  , "DirectoryName" :: String
  }

directoryConfig :: { "OrganizationalUnitDistinguishedNames" :: Array String, "ServiceAccountCredentials" :: ServiceAccountCredentials, "DirectoryName" :: String } -> DirectoryConfig
directoryConfig required =
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