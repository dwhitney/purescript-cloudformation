module CloudFormation.AWS.AmazonMQ.ConfigurationAssociation where 




-- | `AWS::AmazonMQ::ConfigurationAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html
-- |
-- | - `Broker`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-broker
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-configuration
type ConfigurationAssociation =
  { "Broker" :: String
  , "Configuration" :: ConfigurationId
  }

configurationAssociation :: { "Broker" :: String, "Configuration" :: ConfigurationId } -> ConfigurationAssociation
configurationAssociation required =
  required

-- | `AWS::AmazonMQ::ConfigurationAssociation.ConfigurationId`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html
-- |
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-revision
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-id
type ConfigurationId =
  { "Revision" :: Int
  , "Id" :: String
  }

configurationId :: { "Revision" :: Int, "Id" :: String } -> ConfigurationId
configurationId required =
  required