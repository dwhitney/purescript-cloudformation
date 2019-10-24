module CloudFormation.AWS.SSM.PatchBaseline where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SSM::PatchBaseline`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html
-- |
-- | - `OperatingSystem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-operatingsystem
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-description
-- | - `ApprovalRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvalrules
-- | - `Sources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-sources
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-name
-- | - `RejectedPatches`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-rejectedpatches
-- | - `ApprovedPatches`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvedpatches
-- | - `RejectedPatchesAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-rejectedpatchesaction
-- | - `PatchGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-patchgroups
-- | - `ApprovedPatchesComplianceLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvedpatchescompliancelevel
-- | - `ApprovedPatchesEnableNonSecurity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-approvedpatchesenablenonsecurity
-- | - `GlobalFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-globalfilters
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-patchbaseline.html#cfn-ssm-patchbaseline-tags
newtype PatchBaseline = PatchBaseline
  { "Name" :: String
  , "OperatingSystem" :: Maybe String
  , "Description" :: Maybe String
  , "ApprovalRules" :: Maybe RuleGroup
  , "Sources" :: Maybe (Array PatchSource)
  , "RejectedPatches" :: Maybe (Array String)
  , "ApprovedPatches" :: Maybe (Array String)
  , "RejectedPatchesAction" :: Maybe String
  , "PatchGroups" :: Maybe (Array String)
  , "ApprovedPatchesComplianceLevel" :: Maybe String
  , "ApprovedPatchesEnableNonSecurity" :: Maybe Boolean
  , "GlobalFilters" :: Maybe PatchFilterGroup
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypePatchBaseline :: Newtype PatchBaseline _
instance resourcePatchBaseline :: Resource PatchBaseline where type_ _ = "AWS::SSM::PatchBaseline"

patchBaseline :: { "Name" :: String } -> PatchBaseline
patchBaseline required = PatchBaseline
  (merge required
    { "OperatingSystem" : Nothing
    , "Description" : Nothing
    , "ApprovalRules" : Nothing
    , "Sources" : Nothing
    , "RejectedPatches" : Nothing
    , "ApprovedPatches" : Nothing
    , "RejectedPatchesAction" : Nothing
    , "PatchGroups" : Nothing
    , "ApprovedPatchesComplianceLevel" : Nothing
    , "ApprovedPatchesEnableNonSecurity" : Nothing
    , "GlobalFilters" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::SSM::PatchBaseline.PatchSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html
-- |
-- | - `Products`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html#cfn-ssm-patchbaseline-patchsource-products
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html#cfn-ssm-patchbaseline-patchsource-configuration
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchsource.html#cfn-ssm-patchbaseline-patchsource-name
type PatchSource =
  { "Products" :: Maybe (Array String)
  , "Configuration" :: Maybe String
  , "Name" :: Maybe String
  }

patchSource :: PatchSource
patchSource =
  { "Products" : Nothing
  , "Configuration" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::SSM::PatchBaseline.PatchFilterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html
-- |
-- | - `PatchFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfiltergroup.html#cfn-ssm-patchbaseline-patchfiltergroup-patchfilters
type PatchFilterGroup =
  { "PatchFilters" :: Maybe (Array PatchFilter)
  }

patchFilterGroup :: PatchFilterGroup
patchFilterGroup =
  { "PatchFilters" : Nothing
  }

-- | `AWS::SSM::PatchBaseline.Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html
-- |
-- | - `EnableNonSecurity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-enablenonsecurity
-- | - `PatchFilterGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-patchfiltergroup
-- | - `ApproveAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-approveafterdays
-- | - `ComplianceLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rule.html#cfn-ssm-patchbaseline-rule-compliancelevel
type Rule =
  { "EnableNonSecurity" :: Maybe Boolean
  , "PatchFilterGroup" :: Maybe PatchFilterGroup
  , "ApproveAfterDays" :: Maybe Int
  , "ComplianceLevel" :: Maybe String
  }

rule :: Rule
rule =
  { "EnableNonSecurity" : Nothing
  , "PatchFilterGroup" : Nothing
  , "ApproveAfterDays" : Nothing
  , "ComplianceLevel" : Nothing
  }

-- | `AWS::SSM::PatchBaseline.PatchFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-values
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchfilter.html#cfn-ssm-patchbaseline-patchfilter-key
type PatchFilter =
  { "Values" :: Maybe (Array String)
  , "Key" :: Maybe String
  }

patchFilter :: PatchFilter
patchFilter =
  { "Values" : Nothing
  , "Key" : Nothing
  }

-- | `AWS::SSM::PatchBaseline.RuleGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html
-- |
-- | - `PatchRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-rulegroup.html#cfn-ssm-patchbaseline-rulegroup-patchrules
type RuleGroup =
  { "PatchRules" :: Maybe (Array Rule)
  }

ruleGroup :: RuleGroup
ruleGroup =
  { "PatchRules" : Nothing
  }