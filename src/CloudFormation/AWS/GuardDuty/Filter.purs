module CloudFormation.AWS.GuardDuty.Filter where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


-- | `AWS::GuardDuty::Filter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html-- |
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
type Filter =
  { "Action" :: String
  , "Description" :: String
  , "DetectorId" :: String
  , "FindingCriteria" :: FindingCriteria
  , "Rank" :: Int
  , "Name" :: Maybe String
  }

filter :: { "Action" :: String, "Description" :: String, "DetectorId" :: String, "FindingCriteria" :: FindingCriteria, "Rank" :: Int } -> Filter
filter required =
  merge required
    { "Name" : Nothing
    }

-- | `AWS::GuardDuty::Filter.Condition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html-- |
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
  { "Lt" :: Maybe Int
  , "Gte" :: Maybe Int
  , "Neq" :: Maybe (Array String)
  , "Eq" :: Maybe (Array String)
  , "Lte" :: Maybe Int
  }

condition :: Condition
condition =
  { "Lt" : Nothing
  , "Gte" : Nothing
  , "Neq" : Nothing
  , "Eq" : Nothing
  , "Lte" : Nothing
  }

-- | `AWS::GuardDuty::Filter.FindingCriteria`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html-- |
-- | - `Criterion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-criterion
-- | - `ItemType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-itemtype
type FindingCriteria =
  { "Criterion" :: Maybe Foreign
  , "ItemType" :: Maybe Condition
  }

findingCriteria :: FindingCriteria
findingCriteria =
  { "Criterion" : Nothing
  , "ItemType" : Nothing
  }