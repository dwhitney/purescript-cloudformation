module CloudFormation.AWS.GuardDuty.Filter where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::GuardDuty::Filter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html
-- |
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-action
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-description
-- | - `DetectorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-detectorid
-- | - `FindingCriteria`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-findingcriteria
-- | - `Rank`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-rank
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-name
newtype Filter = Filter
  { "Action" :: Value String
  , "Description" :: Value String
  , "DetectorId" :: Value String
  , "FindingCriteria" :: Value FindingCriteria
  , "Rank" :: Value Int
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeFilter :: Newtype Filter _
derive newtype instance writeFilter :: WriteForeign Filter
instance resourceFilter :: Resource Filter where type_ _ = "AWS::GuardDuty::Filter"

filter :: { "Action" :: Value String, "Description" :: Value String, "DetectorId" :: Value String, "FindingCriteria" :: Value FindingCriteria, "Rank" :: Value Int } -> Filter
filter required = Filter
  (merge required
    { "Name" : Nothing
    })

-- | `AWS::GuardDuty::Filter.Condition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html
-- |
-- | - `Lt`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-lt
-- | - `Gte`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-gte
-- | - `Neq`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-neq
-- | - `Eq`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-eq
-- | - `Lte`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-lte
type Condition =
  { "Lt" :: Maybe (Value Int)
  , "Gte" :: Maybe (Value Int)
  , "Neq" :: Maybe (Value (Array String))
  , "Eq" :: Maybe (Value (Array String))
  , "Lte" :: Maybe (Value Int)
  }

condition :: Condition
condition =
  { "Lt" : Nothing
  , "Gte" : Nothing
  , "Neq" : Nothing
  , "Eq" : Nothing
  , "Lte" : Nothing
  }

-- | `AWS::GuardDuty::Filter.FindingCriteria`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html
-- |
-- | - `Criterion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-criterion
-- | - `ItemType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-itemtype
type FindingCriteria =
  { "Criterion" :: Maybe (Value CF.Json)
  , "ItemType" :: Maybe (Value Condition)
  }

findingCriteria :: FindingCriteria
findingCriteria =
  { "Criterion" : Nothing
  , "ItemType" : Nothing
  }