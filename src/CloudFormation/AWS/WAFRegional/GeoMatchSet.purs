module CloudFormation.AWS.WAFRegional.GeoMatchSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::WAFRegional::GeoMatchSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html
-- |
-- | - `GeoMatchConstraints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html#cfn-wafregional-geomatchset-geomatchconstraints
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html#cfn-wafregional-geomatchset-name
type GeoMatchSet =
  { "Name" :: String
  , "GeoMatchConstraints" :: Maybe (Array GeoMatchConstraint)
  }

geoMatchSet :: { "Name" :: String } -> GeoMatchSet
geoMatchSet required =
  merge required
    { "GeoMatchConstraints" : Nothing
    }

-- | `AWS::WAFRegional::GeoMatchSet.GeoMatchConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html#cfn-wafregional-geomatchset-geomatchconstraint-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-geomatchset-geomatchconstraint.html#cfn-wafregional-geomatchset-geomatchconstraint-value
type GeoMatchConstraint =
  { "Type" :: String
  , "Value" :: String
  }

geoMatchConstraint :: { "Type" :: String, "Value" :: String } -> GeoMatchConstraint
geoMatchConstraint required =
  required