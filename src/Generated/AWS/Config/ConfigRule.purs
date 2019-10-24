module CloudFormation.AWS.Config.ConfigRule where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Source" :: Source
  , "ConfigRuleName" :: Maybe String
  , "Description" :: Maybe String
  , "InputParameters" :: Maybe CF.Json
  , "MaximumExecutionFrequency" :: Maybe String
  , "Scope" :: Maybe Scope
  }

derive instance newtypeConfigRule :: Newtype ConfigRule _
instance resourceConfigRule :: Resource ConfigRule where type_ _ = "AWS::Config::ConfigRule"

configRule :: { "Source" :: Source } -> ConfigRule
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
  { "EventSource" :: String
  , "MessageType" :: String
  , "MaximumExecutionFrequency" :: Maybe String
  }

sourceDetail :: { "EventSource" :: String, "MessageType" :: String } -> SourceDetail
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
  { "Owner" :: String
  , "SourceIdentifier" :: String
  , "SourceDetails" :: Maybe (Array SourceDetail)
  }

source :: { "Owner" :: String, "SourceIdentifier" :: String } -> Source
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
  { "ComplianceResourceId" :: Maybe String
  , "ComplianceResourceTypes" :: Maybe (Array String)
  , "TagKey" :: Maybe String
  , "TagValue" :: Maybe String
  }

scope :: Scope
scope =
  { "ComplianceResourceId" : Nothing
  , "ComplianceResourceTypes" : Nothing
  , "TagKey" : Nothing
  , "TagValue" : Nothing
  }