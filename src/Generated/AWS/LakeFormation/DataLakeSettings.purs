module CloudFormation.AWS.LakeFormation.DataLakeSettings where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::LakeFormation::DataLakeSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html
-- |
-- | - `Admins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-admins
newtype DataLakeSettings = DataLakeSettings
  { "Admins" :: Maybe Admins
  }

derive instance newtypeDataLakeSettings :: Newtype DataLakeSettings _
instance resourceDataLakeSettings :: Resource DataLakeSettings where type_ _ = "AWS::LakeFormation::DataLakeSettings"

dataLakeSettings :: DataLakeSettings
dataLakeSettings = DataLakeSettings
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