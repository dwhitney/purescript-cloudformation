module AWS.SSM.PatchBaseline where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type PatchBaseline =
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

patchBaseline :: { "Name" :: String } -> PatchBaseline
patchBaseline required =
  merge required
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
    }

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

type PatchFilterGroup =
  { "PatchFilters" :: Maybe (Array PatchFilter)
  }

patchFilterGroup :: PatchFilterGroup
patchFilterGroup =
  { "PatchFilters" : Nothing
  }

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

type PatchFilter =
  { "Values" :: Maybe (Array String)
  , "Key" :: Maybe String
  }

patchFilter :: PatchFilter
patchFilter =
  { "Values" : Nothing
  , "Key" : Nothing
  }

type RuleGroup =
  { "PatchRules" :: Maybe (Array Rule)
  }

ruleGroup :: RuleGroup
ruleGroup =
  { "PatchRules" : Nothing
  }