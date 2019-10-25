module CloudFormation.AWS.Athena.NamedQuery where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "QueryString" :: Value String
  , "Database" :: Value String
  , "Description" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeNamedQuery :: Newtype NamedQuery _
derive newtype instance writeNamedQuery :: WriteForeign NamedQuery
instance resourceNamedQuery :: Resource NamedQuery where type_ _ = "AWS::Athena::NamedQuery"

namedQuery :: { "QueryString" :: Value String, "Database" :: Value String } -> NamedQuery
namedQuery required = NamedQuery
  (merge required
    { "Description" : Nothing
    , "Name" : Nothing
    })