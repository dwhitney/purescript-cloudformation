module CloudFormation.AWS.OpsWorks.App where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::OpsWorks::App`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html
-- |
-- | - `AppSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-appsource
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-attributes
-- | - `DataSources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-datasources
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-description
-- | - `Domains`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-domains
-- | - `EnableSsl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-enablessl
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-environment
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-name
-- | - `Shortname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-shortname
-- | - `SslConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-sslconfiguration
-- | - `StackId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-stackid
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-app.html#cfn-opsworks-app-type
newtype App = App
  { "Name" :: Value String
  , "StackId" :: Value String
  , "Type" :: Value String
  , "AppSource" :: Maybe (Value Source)
  , "Attributes" :: Maybe (Value (Object String))
  , "DataSources" :: Maybe (Value (Array DataSource))
  , "Description" :: Maybe (Value String)
  , "Domains" :: Maybe (Value (Array String))
  , "EnableSsl" :: Maybe (Value Boolean)
  , "Environment" :: Maybe (Value (Array EnvironmentVariable))
  , "Shortname" :: Maybe (Value String)
  , "SslConfiguration" :: Maybe (Value SslConfiguration)
  }

derive instance newtypeApp :: Newtype App _
derive newtype instance writeApp :: WriteForeign App
instance resourceApp :: Resource App where type_ _ = "AWS::OpsWorks::App"

app :: { "Name" :: Value String, "StackId" :: Value String, "Type" :: Value String } -> App
app required = App
  (merge required
    { "AppSource" : Nothing
    , "Attributes" : Nothing
    , "DataSources" : Nothing
    , "Description" : Nothing
    , "Domains" : Nothing
    , "EnableSsl" : Nothing
    , "Environment" : Nothing
    , "Shortname" : Nothing
    , "SslConfiguration" : Nothing
    })

-- | `AWS::OpsWorks::App.Source`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html
-- |
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-pw
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-revision
-- | - `SshKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-sshkey
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-type
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-url
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-source.html#cfn-opsworks-custcookbooksource-username
type Source =
  { "Password" :: Maybe (Value String)
  , "Revision" :: Maybe (Value String)
  , "SshKey" :: Maybe (Value String)
  , "Type" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
  , "Username" :: Maybe (Value String)
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

-- | `AWS::OpsWorks::App.SslConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html
-- |
-- | - `Certificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-certificate
-- | - `Chain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-chain
-- | - `PrivateKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-privatekey
type SslConfiguration =
  { "Certificate" :: Maybe (Value String)
  , "Chain" :: Maybe (Value String)
  , "PrivateKey" :: Maybe (Value String)
  }

sslConfiguration :: SslConfiguration
sslConfiguration =
  { "Certificate" : Nothing
  , "Chain" : Nothing
  , "PrivateKey" : Nothing
  }

-- | `AWS::OpsWorks::App.EnvironmentVariable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-key
-- | - `Secure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#cfn-opsworks-app-environment-secure
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-environment.html#value
type EnvironmentVariable =
  { "Key" :: Value String
  , "Value" :: Value String
  , "Secure" :: Maybe (Value Boolean)
  }

environmentVariable :: { "Key" :: Value String, "Value" :: Value String } -> EnvironmentVariable
environmentVariable required =
  (merge required
    { "Secure" : Nothing
    })

-- | `AWS::OpsWorks::App.DataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-arn
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-databasename
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-datasource.html#cfn-opsworks-app-datasource-type
type DataSource =
  { "Arn" :: Maybe (Value String)
  , "DatabaseName" :: Maybe (Value String)
  , "Type" :: Maybe (Value String)
  }

dataSource :: DataSource
dataSource =
  { "Arn" : Nothing
  , "DatabaseName" : Nothing
  , "Type" : Nothing
  }