module CloudFormation.AWS.SDB.Domain where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SDB::Domain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html#cfn-sdb-domain-description
newtype Domain = Domain
  { "Description" :: Maybe String
  }

derive instance newtypeDomain :: Newtype Domain _
instance resourceDomain :: Resource Domain where type_ _ = "AWS::SDB::Domain"

domain :: Domain
domain = Domain
  { "Description" : Nothing
  }