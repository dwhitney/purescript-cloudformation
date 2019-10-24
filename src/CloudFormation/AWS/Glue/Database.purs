module CloudFormation.AWS.Glue.Database where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


-- | `AWS::Glue::Database`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html-- |
-- | - `DatabaseInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-databaseinput
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-catalogid
type Database =
  { "DatabaseInput" :: DatabaseInput
  , "CatalogId" :: String
  }

database :: { "DatabaseInput" :: DatabaseInput, "CatalogId" :: String } -> Database
database required =
  required

-- | `AWS::Glue::Database.DatabaseInput`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html-- |
-- | - `LocationUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-locationuri
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-description
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-parameters
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-databaseinput.html#cfn-glue-database-databaseinput-name
type DatabaseInput =
  { "LocationUri" :: Maybe String
  , "Description" :: Maybe String
  , "Parameters" :: Maybe Foreign
  , "Name" :: Maybe String
  }

databaseInput :: DatabaseInput
databaseInput =
  { "LocationUri" : Nothing
  , "Description" : Nothing
  , "Parameters" : Nothing
  , "Name" : Nothing
  }