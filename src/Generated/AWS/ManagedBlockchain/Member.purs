module CloudFormation.AWS.ManagedBlockchain.Member where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ManagedBlockchain::Member`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html
-- |
-- | - `MemberConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-memberconfiguration
-- | - `NetworkConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-networkconfiguration
-- | - `NetworkId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-networkid
-- | - `InvitationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-invitationid
newtype Member = Member
  { "MemberConfiguration" :: Value MemberConfiguration
  , "NetworkConfiguration" :: Maybe (Value NetworkConfiguration)
  , "NetworkId" :: Maybe (Value String)
  , "InvitationId" :: Maybe (Value String)
  }

derive instance newtypeMember :: Newtype Member _
derive newtype instance writeMember :: WriteForeign Member
instance resourceMember :: Resource Member where type_ _ = "AWS::ManagedBlockchain::Member"

member :: { "MemberConfiguration" :: Value MemberConfiguration } -> Member
member required = Member
  (merge required
    { "NetworkConfiguration" : Nothing
    , "NetworkId" : Nothing
    , "InvitationId" : Nothing
    })

-- | `AWS::ManagedBlockchain::Member.MemberFabricConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html
-- |
-- | - `AdminUsername`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminusername
-- | - `AdminPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminpassword
type MemberFabricConfiguration =
  { "AdminUsername" :: Value String
  , "AdminPassword" :: Value String
  }

memberFabricConfiguration :: { "AdminUsername" :: Value String, "AdminPassword" :: Value String } -> MemberFabricConfiguration
memberFabricConfiguration required =
  required

-- | `AWS::ManagedBlockchain::Member.VotingPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html
-- |
-- | - `ApprovalThresholdPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-votingpolicy.html#cfn-managedblockchain-member-votingpolicy-approvalthresholdpolicy
type VotingPolicy =
  { "ApprovalThresholdPolicy" :: Maybe (Value ApprovalThresholdPolicy)
  }

votingPolicy :: VotingPolicy
votingPolicy =
  { "ApprovalThresholdPolicy" : Nothing
  }

-- | `AWS::ManagedBlockchain::Member.NetworkFabricConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkfabricconfiguration.html
-- |
-- | - `Edition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkfabricconfiguration.html#cfn-managedblockchain-member-networkfabricconfiguration-edition
type NetworkFabricConfiguration =
  { "Edition" :: Value String
  }

networkFabricConfiguration :: { "Edition" :: Value String } -> NetworkFabricConfiguration
networkFabricConfiguration required =
  required

-- | `AWS::ManagedBlockchain::Member.MemberFrameworkConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberframeworkconfiguration.html
-- |
-- | - `MemberFabricConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberframeworkconfiguration.html#cfn-managedblockchain-member-memberframeworkconfiguration-memberfabricconfiguration
type MemberFrameworkConfiguration =
  { "MemberFabricConfiguration" :: Maybe (Value MemberFabricConfiguration)
  }

memberFrameworkConfiguration :: MemberFrameworkConfiguration
memberFrameworkConfiguration =
  { "MemberFabricConfiguration" : Nothing
  }

-- | `AWS::ManagedBlockchain::Member.NetworkConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-description
-- | - `FrameworkVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-frameworkversion
-- | - `VotingPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-votingpolicy
-- | - `Framework`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-framework
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-name
-- | - `NetworkFrameworkConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-networkframeworkconfiguration
type NetworkConfiguration =
  { "FrameworkVersion" :: Value String
  , "VotingPolicy" :: Value VotingPolicy
  , "Framework" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "NetworkFrameworkConfiguration" :: Maybe (Value NetworkFrameworkConfiguration)
  }

networkConfiguration :: { "FrameworkVersion" :: Value String, "VotingPolicy" :: Value VotingPolicy, "Framework" :: Value String, "Name" :: Value String } -> NetworkConfiguration
networkConfiguration required =
  (merge required
    { "Description" : Nothing
    , "NetworkFrameworkConfiguration" : Nothing
    })

-- | `AWS::ManagedBlockchain::Member.NetworkFrameworkConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkframeworkconfiguration.html
-- |
-- | - `NetworkFabricConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkframeworkconfiguration.html#cfn-managedblockchain-member-networkframeworkconfiguration-networkfabricconfiguration
type NetworkFrameworkConfiguration =
  { "NetworkFabricConfiguration" :: Maybe (Value NetworkFabricConfiguration)
  }

networkFrameworkConfiguration :: NetworkFrameworkConfiguration
networkFrameworkConfiguration =
  { "NetworkFabricConfiguration" : Nothing
  }

-- | `AWS::ManagedBlockchain::Member.ApprovalThresholdPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html
-- |
-- | - `ThresholdComparator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdcomparator
-- | - `ThresholdPercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-thresholdpercentage
-- | - `ProposalDurationInHours`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-approvalthresholdpolicy.html#cfn-managedblockchain-member-approvalthresholdpolicy-proposaldurationinhours
type ApprovalThresholdPolicy =
  { "ThresholdComparator" :: Maybe (Value String)
  , "ThresholdPercentage" :: Maybe (Value Int)
  , "ProposalDurationInHours" :: Maybe (Value Int)
  }

approvalThresholdPolicy :: ApprovalThresholdPolicy
approvalThresholdPolicy =
  { "ThresholdComparator" : Nothing
  , "ThresholdPercentage" : Nothing
  , "ProposalDurationInHours" : Nothing
  }

-- | `AWS::ManagedBlockchain::Member.MemberConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-description
-- | - `MemberFrameworkConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-memberframeworkconfiguration
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-name
type MemberConfiguration =
  { "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "MemberFrameworkConfiguration" :: Maybe (Value MemberFrameworkConfiguration)
  }

memberConfiguration :: { "Name" :: Value String } -> MemberConfiguration
memberConfiguration required =
  (merge required
    { "Description" : Nothing
    , "MemberFrameworkConfiguration" : Nothing
    })