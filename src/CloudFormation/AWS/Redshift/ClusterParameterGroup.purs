module CloudFormation.AWS.Redshift.ClusterParameterGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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
type ClusterParameterGroup =
  { "Description" :: String
  , "ParameterGroupFamily" :: String
  , "Parameters" :: Maybe (Array Parameter)
  , "Tags" :: Maybe (Array Tag)
  }

clusterParameterGroup :: { "Description" :: String, "ParameterGroupFamily" :: String } -> ClusterParameterGroup
clusterParameterGroup required =
  merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::Redshift::ClusterParameterGroup.Parameter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html
-- |
-- | - `ParameterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html#cfn-redshift-clusterparametergroup-parameter-parametername
-- | - `ParameterValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-property-redshift-clusterparametergroup-parameter.html#cfn-redshift-clusterparametergroup-parameter-parametervalue
type Parameter =
  { "ParameterName" :: String
  , "ParameterValue" :: String
  }

parameter :: { "ParameterName" :: String, "ParameterValue" :: String } -> Parameter
parameter required =
  required