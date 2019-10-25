module CloudFormation.AWS.SDB.Domain where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SDB::Domain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html#cfn-sdb-domain-description
newtype Domain = Domain
  { "Description" :: Maybe (Value String)
  }

derive instance newtypeDomain :: Newtype Domain _
derive newtype instance writeDomain :: WriteForeign Domain
instance resourceDomain :: Resource Domain where type_ _ = "AWS::SDB::Domain"

domain :: Domain
domain = Domain
  { "Description" : Nothing
  }