module CloudFormation.AWS.Config.ConfigRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Config::ConfigRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html
-- |
-- | - `ConfigRuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-configrulename
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-description
-- | - `InputParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-inputparameters
-- | - `MaximumExecutionFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-maximumexecutionfrequency
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-scope
-- | - `Source`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configrule.html#cfn-config-configrule-source
newtype ConfigRule = ConfigRule
  { "Source" :: Value Source
  , "ConfigRuleName" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "InputParameters" :: Maybe (Value CF.Json)
  , "MaximumExecutionFrequency" :: Maybe (Value String)
  , "Scope" :: Maybe (Value Scope)
  }

derive instance newtypeConfigRule :: Newtype ConfigRule _
derive newtype instance writeConfigRule :: WriteForeign ConfigRule
instance resourceConfigRule :: Resource ConfigRule where type_ _ = "AWS::Config::ConfigRule"

configRule :: { "Source" :: Value Source } -> ConfigRule
configRule required = ConfigRule
  (merge required
    { "ConfigRuleName" : Nothing
    , "Description" : Nothing
    , "InputParameters" : Nothing
    , "MaximumExecutionFrequency" : Nothing
    , "Scope" : Nothing
    })

-- | `AWS::Config::ConfigRule.SourceDetail`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html
-- |
-- | - `EventSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-eventsource
-- | - `MaximumExecutionFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-sourcedetail-maximumexecutionfrequency
-- | - `MessageType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-messagetype
type SourceDetail =
  { "EventSource" :: Value String
  , "MessageType" :: Value String
  , "MaximumExecutionFrequency" :: Maybe (Value String)
  }

sourceDetail :: { "EventSource" :: Value String, "MessageType" :: Value String } -> SourceDetail
sourceDetail required =
  (merge required
    { "MaximumExecutionFrequency" : Nothing
    })

-- | `AWS::Config::ConfigRule.Source`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html
-- |
-- | - `Owner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-owner
-- | - `SourceDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourcedetails
-- | - `SourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source.html#cfn-config-configrule-source-sourceidentifier
type Source =
  { "Owner" :: Value String
  , "SourceIdentifier" :: Value String
  , "SourceDetails" :: Maybe (Value (Array SourceDetail))
  }

source :: { "Owner" :: Value String, "SourceIdentifier" :: Value String } -> Source
source required =
  (merge required
    { "SourceDetails" : Nothing
    })

-- | `AWS::Config::ConfigRule.Scope`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html
-- |
-- | - `ComplianceResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-complianceresourceid
-- | - `ComplianceResourceTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-complianceresourcetypes
-- | - `TagKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-tagkey
-- | - `TagValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-scope.html#cfn-config-configrule-scope-tagvalue
type Scope =
  { "ComplianceResourceId" :: Maybe (Value String)
  , "ComplianceResourceTypes" :: Maybe (Value (Array String))
  , "TagKey" :: Maybe (Value String)
  , "TagValue" :: Maybe (Value String)
  }

scope :: Scope
scope =
  { "ComplianceResourceId" : Nothing
  , "ComplianceResourceTypes" : Nothing
  , "TagKey" : Nothing
  , "TagValue" : Nothing
  }