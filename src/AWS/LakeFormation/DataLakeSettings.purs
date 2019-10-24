module AWS.LakeFormation.DataLakeSettings where 

import Data.Maybe (Maybe(..))


type DataLakeSettings =
  { "Admins" :: Maybe Admins
  }

dataLakeSettings :: DataLakeSettings
dataLakeSettings =
  { "Admins" : Nothing
  }

type Admins = Array DataLakePrincipal

type DataLakePrincipal =
  { "DataLakePrincipalIdentifier" :: Maybe String
  }

dataLakePrincipal :: DataLakePrincipal
dataLakePrincipal =
  { "DataLakePrincipalIdentifier" : Nothing
  }