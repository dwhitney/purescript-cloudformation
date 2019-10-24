module CloudFormation.AWS.LakeFormation.DataLakeSettings where 

import Data.Maybe (Maybe(..))


-- | `AWS::LakeFormation::DataLakeSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html
-- |
-- | - `Admins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-admins
type DataLakeSettings =
  { "Admins" :: Maybe Admins
  }

dataLakeSettings :: DataLakeSettings
dataLakeSettings =
  { "Admins" : Nothing
  }

type Admins = Array DataLakePrincipal

-- | `AWS::LakeFormation::DataLakeSettings.DataLakePrincipal`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-datalakeprincipal.html
-- |
-- | - `DataLakePrincipalIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-datalakeprincipal.html#cfn-lakeformation-datalakesettings-datalakeprincipal-datalakeprincipalidentifier
type DataLakePrincipal =
  { "DataLakePrincipalIdentifier" :: Maybe String
  }

dataLakePrincipal :: DataLakePrincipal
dataLakePrincipal =
  { "DataLakePrincipalIdentifier" : Nothing
  }