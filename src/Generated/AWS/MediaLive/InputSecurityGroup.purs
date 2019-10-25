module CloudFormation.AWS.MediaLive.InputSecurityGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::MediaLive::InputSecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html
-- |
-- | - `WhitelistRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-whitelistrules
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-tags
newtype InputSecurityGroup = InputSecurityGroup
  { "WhitelistRules" :: Maybe (Value (Array InputWhitelistRuleCidr))
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeInputSecurityGroup :: Newtype InputSecurityGroup _
derive newtype instance writeInputSecurityGroup :: WriteForeign InputSecurityGroup
instance resourceInputSecurityGroup :: Resource InputSecurityGroup where type_ _ = "AWS::MediaLive::InputSecurityGroup"

inputSecurityGroup :: InputSecurityGroup
inputSecurityGroup = InputSecurityGroup
  { "WhitelistRules" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::MediaLive::InputSecurityGroup.InputWhitelistRuleCidr`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html
-- |
-- | - `Cidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html#cfn-medialive-inputsecuritygroup-inputwhitelistrulecidr-cidr
type InputWhitelistRuleCidr =
  { "Cidr" :: Maybe (Value String)
  }

inputWhitelistRuleCidr :: InputWhitelistRuleCidr
inputWhitelistRuleCidr =
  { "Cidr" : Nothing
  }