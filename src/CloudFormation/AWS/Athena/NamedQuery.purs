module CloudFormation.AWS.Athena.NamedQuery where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Athena::NamedQuery`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-description
-- | - `QueryString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-querystring
-- | - `Database`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-database
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-athena-namedquery.html#cfn-athena-namedquery-name
type NamedQuery =
  { "QueryString" :: String
  , "Database" :: String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  }

namedQuery :: { "QueryString" :: String, "Database" :: String } -> NamedQuery
namedQuery required =
  merge required
    { "Description" : Nothing
    , "Name" : Nothing
    }