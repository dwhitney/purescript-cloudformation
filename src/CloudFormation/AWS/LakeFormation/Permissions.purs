module CloudFormation.AWS.LakeFormation.Permissions where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type Resource =
  { "TableResource" :: Maybe TableResource
  , "DatabaseResource" :: Maybe DatabaseResource
  }

resource :: Resource
resource =
  { "TableResource" : Nothing
  , "DatabaseResource" : Nothing
  }

type TableResource =
  { "DatabaseName" :: Maybe String
  , "Name" :: Maybe String
  }

tableResource :: TableResource
tableResource =
  { "DatabaseName" : Nothing
  , "Name" : Nothing
  }

type DataLakePrincipal =
  { "DataLakePrincipalIdentifier" :: Maybe String
  }

dataLakePrincipal :: DataLakePrincipal
dataLakePrincipal =
  { "DataLakePrincipalIdentifier" : Nothing
  }

type DatabaseResource =
  { "Name" :: Maybe String
  }

databaseResource :: DatabaseResource
databaseResource =
  { "Name" : Nothing
  }