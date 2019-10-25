module CloudFormation.AWS.LakeFormation.DataLakeSettings where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::LakeFormation::DataLakeSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html
-- |
-- | - `Admins`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-admins
newtype DataLakeSettings = DataLakeSettings
  { "Admins" :: Maybe (Value Admins)
  }

derive instance newtypeDataLakeSettings :: Newtype DataLakeSettings _
derive newtype instance writeDataLakeSettings :: WriteForeign DataLakeSettings
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
  { "DataLakePrincipalIdentifier" :: Maybe (Value String)
  }

dataLakePrincipal :: DataLakePrincipal
dataLakePrincipal =
  { "DataLakePrincipalIdentifier" : Nothing
  }