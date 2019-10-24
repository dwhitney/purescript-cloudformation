module CloudFormation.AWS.LakeFormation.Permissions where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::LakeFormation::Permissions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html
-- |
-- | - `DataLakePrincipal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-datalakeprincipal
-- | - `Resource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-resource
-- | - `Permissions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-permissions
-- | - `PermissionsWithGrantOption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-permissionswithgrantoption
type Permissions =
  { "DataLakePrincipal" :: DataLakePrincipal
  , "Resource" :: Resource
  , "Permissions" :: Maybe (Array String)
  , "PermissionsWithGrantOption" :: Maybe (Array String)
  }

permissions :: { "DataLakePrincipal" :: DataLakePrincipal, "Resource" :: Resource } -> Permissions
permissions required =
  merge required
    { "Permissions" : Nothing
    , "PermissionsWithGrantOption" : Nothing
    }

-- | `AWS::LakeFormation::Permissions.Resource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html
-- |
-- | - `TableResource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tableresource
-- | - `DatabaseResource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-databaseresource
type Resource =
  { "TableResource" :: Maybe TableResource
  , "DatabaseResource" :: Maybe DatabaseResource
  }

resource :: Resource
resource =
  { "TableResource" : Nothing
  , "DatabaseResource" : Nothing
  }

-- | `AWS::LakeFormation::Permissions.TableResource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html
-- |
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-databasename
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-name
type TableResource =
  { "DatabaseName" :: Maybe String
  , "Name" :: Maybe String
  }

tableResource :: TableResource
tableResource =
  { "DatabaseName" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::LakeFormation::Permissions.DataLakePrincipal`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalakeprincipal.html
-- |
-- | - `DataLakePrincipalIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalakeprincipal.html#cfn-lakeformation-permissions-datalakeprincipal-datalakeprincipalidentifier
type DataLakePrincipal =
  { "DataLakePrincipalIdentifier" :: Maybe String
  }

dataLakePrincipal :: DataLakePrincipal
dataLakePrincipal =
  { "DataLakePrincipalIdentifier" : Nothing
  }

-- | `AWS::LakeFormation::Permissions.DatabaseResource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html#cfn-lakeformation-permissions-databaseresource-name
type DatabaseResource =
  { "Name" :: Maybe String
  }

databaseResource :: DatabaseResource
databaseResource =
  { "Name" : Nothing
  }