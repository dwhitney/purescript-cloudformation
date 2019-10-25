module CloudFormation.AWS.Glue.Database where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF


-- | `AWS::Glue::Database`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html
-- |
-- | - `DatabaseInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-databaseinput
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-catalogid
newtype Database = Database
  { "DatabaseInput" :: Value DatabaseInput
  , "CatalogId" :: Value String
  }

derive instance newtypeDatabase :: Newtype Database _
derive newtype instance writeDatabase :: WriteForeign Database
instance resourceDatabase :: Resource Database where type_ _ = "AWS::Glue::Database"

database :: { "DatabaseInput" :: Value DatabaseInput, "CatalogId" :: Value String } -> Database
database required = Database
  required

-- | `AWS::Glue::Database.DatabaseInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html
-- |
-- | - `LocationUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-locationuri
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-description
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-parameters
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-name
type DatabaseInput =
  { "LocationUri" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Parameters" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

databaseInput :: DatabaseInput
databaseInput =
  { "LocationUri" : Nothing
  , "Description" : Nothing
  , "Parameters" : Nothing
  , "Name" : Nothing
  }