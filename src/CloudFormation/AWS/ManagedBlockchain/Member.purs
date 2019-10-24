module CloudFormation.AWS.ManagedBlockchain.Member where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Member =
  { "MemberConfiguration" :: MemberConfiguration
  , "NetworkConfiguration" :: Maybe NetworkConfiguration
  , "NetworkId" :: Maybe String
  , "InvitationId" :: Maybe String
  }

member :: { "MemberConfiguration" :: MemberConfiguration } -> Member
member required =
  merge required
    { "NetworkConfiguration" : Nothing
    , "NetworkId" : Nothing
    , "InvitationId" : Nothing
    }

type MemberFabricConfiguration =
  { "AdminUsername" :: String
  , "AdminPassword" :: String
  }

memberFabricConfiguration :: { "AdminUsername" :: String, "AdminPassword" :: String } -> MemberFabricConfiguration
memberFabricConfiguration required =
  required

type VotingPolicy =
  { "ApprovalThresholdPolicy" :: Maybe ApprovalThresholdPolicy
  }

votingPolicy :: VotingPolicy
votingPolicy =
  { "ApprovalThresholdPolicy" : Nothing
  }

type NetworkFabricConfiguration =
  { "Edition" :: String
  }

networkFabricConfiguration :: { "Edition" :: String } -> NetworkFabricConfiguration
networkFabricConfiguration required =
  required

type MemberFrameworkConfiguration =
  { "MemberFabricConfiguration" :: Maybe MemberFabricConfiguration
  }

memberFrameworkConfiguration :: MemberFrameworkConfiguration
memberFrameworkConfiguration =
  { "MemberFabricConfiguration" : Nothing
  }

type NetworkConfiguration =
  { "FrameworkVersion" :: String
  , "VotingPolicy" :: VotingPolicy
  , "Framework" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "NetworkFrameworkConfiguration" :: Maybe NetworkFrameworkConfiguration
  }

networkConfiguration :: { "FrameworkVersion" :: String, "VotingPolicy" :: VotingPolicy, "Framework" :: String, "Name" :: String } -> NetworkConfiguration
networkConfiguration required =
  merge required
    { "Description" : Nothing
    , "NetworkFrameworkConfiguration" : Nothing
    }

type NetworkFrameworkConfiguration =
  { "NetworkFabricConfiguration" :: Maybe NetworkFabricConfiguration
  }

networkFrameworkConfiguration :: NetworkFrameworkConfiguration
networkFrameworkConfiguration =
  { "NetworkFabricConfiguration" : Nothing
  }

type ApprovalThresholdPolicy =
  { "ThresholdComparator" :: Maybe String
  , "ThresholdPercentage" :: Maybe Int
  , "ProposalDurationInHours" :: Maybe Int
  }

approvalThresholdPolicy :: ApprovalThresholdPolicy
approvalThresholdPolicy =
  { "ThresholdComparator" : Nothing
  , "ThresholdPercentage" : Nothing
  , "ProposalDurationInHours" : Nothing
  }

type MemberConfiguration =
  { "Name" :: String
  , "Description" :: Maybe String
  , "MemberFrameworkConfiguration" :: Maybe MemberFrameworkConfiguration
  }

memberConfiguration :: { "Name" :: String } -> MemberConfiguration
memberConfiguration required =
  merge required
    { "Description" : Nothing
    , "MemberFrameworkConfiguration" : Nothing
    }