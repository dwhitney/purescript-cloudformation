module CloudFormation.AWS.Redshift.ClusterParameterGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Redshift::ClusterParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-description
-- | - `ParameterGroupFamily`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-parametergroupfamily
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-parameters
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-clusterparametergroup.html#cfn-redshift-clusterparametergroup-tags
newtype ClusterParameterGroup = ClusterParameterGroup
  { "Description" :: Value String
  , "ParameterGroupFamily" :: Value String
  , "Parameters" :: Maybe (Value (Array Parameter))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeClusterParameterGroup :: Newtype ClusterParameterGroup _
derive newtype instance writeClusterParameterGroup :: WriteForeign ClusterParameterGroup
instance resourceClusterParameterGroup :: Resource ClusterParameterGroup where type_ _ = "AWS::Redshift::ClusterParameterGroup"

clusterParameterGroup :: { "Description" :: Value String, "ParameterGroupFamily" :: Value String } -> ClusterParameterGroup
clusterParameterGroup required = ClusterParameterGroup
  (merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Redshift::ClusterParameterGroup.Parameter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html
-- |
-- | - `ParameterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html#cfn-redshift-clusterparametergroup-parameter-parametername
-- | - `ParameterValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html#cfn-redshift-clusterparametergroup-parameter-parametervalue
type Parameter =
  { "ParameterName" :: Value String
  , "ParameterValue" :: Value String
  }

parameter :: { "ParameterName" :: Value String, "ParameterValue" :: Value String } -> Parameter
parameter required =
  required