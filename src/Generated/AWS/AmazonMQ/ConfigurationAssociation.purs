module CloudFormation.AWS.AmazonMQ.ConfigurationAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AmazonMQ::ConfigurationAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html
-- |
-- | - `Broker`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-broker
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-configuration
newtype ConfigurationAssociation = ConfigurationAssociation
  { "Broker" :: Value String
  , "Configuration" :: Value ConfigurationId
  }

derive instance newtypeConfigurationAssociation :: Newtype ConfigurationAssociation _
derive newtype instance writeConfigurationAssociation :: WriteForeign ConfigurationAssociation
instance resourceConfigurationAssociation :: Resource ConfigurationAssociation where type_ _ = "AWS::AmazonMQ::ConfigurationAssociation"

configurationAssociation :: { "Broker" :: Value String, "Configuration" :: Value ConfigurationId } -> ConfigurationAssociation
configurationAssociation required = ConfigurationAssociation
  required

-- | `AWS::AmazonMQ::ConfigurationAssociation.ConfigurationId`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html
-- |
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-revision
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-id
type ConfigurationId =
  { "Revision" :: Value Int
  , "Id" :: Value String
  }

configurationId :: { "Revision" :: Value Int, "Id" :: Value String } -> ConfigurationId
configurationId required =
  required