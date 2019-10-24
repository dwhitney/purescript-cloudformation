module CloudFormation.AWS.Athena.NamedQuery where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype NamedQuery = NamedQuery
  { "QueryString" :: String
  , "Database" :: String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  }

derive instance newtypeNamedQuery :: Newtype NamedQuery _
instance resourceNamedQuery :: Resource NamedQuery where type_ _ = "AWS::Athena::NamedQuery"

namedQuery :: { "QueryString" :: String, "Database" :: String } -> NamedQuery
namedQuery required = NamedQuery
  (merge required
    { "Description" : Nothing
    , "Name" : Nothing
    })