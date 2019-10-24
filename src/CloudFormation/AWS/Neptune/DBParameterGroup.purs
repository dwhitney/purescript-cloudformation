module CloudFormation.AWS.Neptune.DBParameterGroup where 

import Foreign (Foreign)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Neptune::DBParameterGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-description
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-parameters
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-family
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbparametergroup.html#cfn-neptune-dbparametergroup-name
type DBParameterGroup =
  { "Description" :: String
  , "Parameters" :: Foreign
  , "Family" :: String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

dbpBParameterGroup :: { "Description" :: String, "Parameters" :: Foreign, "Family" :: String } -> DBParameterGroup
dbpBParameterGroup required =
  merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    }