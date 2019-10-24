module CloudFormation.AWS.SDB.Domain where 

import Data.Maybe (Maybe(..))


-- | `AWS::SDB::Domain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simpledb.html#cfn-sdb-domain-description
type Domain =
  { "Description" :: Maybe String
  }

domain :: Domain
domain =
  { "Description" : Nothing
  }