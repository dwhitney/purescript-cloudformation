module CloudFormation.AWS.MediaLive.InputSecurityGroup where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


-- | `AWS::MediaLive::InputSecurityGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html
-- |
-- | - `WhitelistRules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-whitelistrules
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-inputsecuritygroup.html#cfn-medialive-inputsecuritygroup-tags
type InputSecurityGroup =
  { "WhitelistRules" :: Maybe (Array InputWhitelistRuleCidr)
  , "Tags" :: Maybe Foreign
  }

inputSecurityGroup :: InputSecurityGroup
inputSecurityGroup =
  { "WhitelistRules" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::MediaLive::InputSecurityGroup.InputWhitelistRuleCidr`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html
-- |
-- | - `Cidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html#cfn-medialive-inputsecuritygroup-inputwhitelistrulecidr-cidr
type InputWhitelistRuleCidr =
  { "Cidr" :: Maybe String
  }

inputWhitelistRuleCidr :: InputWhitelistRuleCidr
inputWhitelistRuleCidr =
  { "Cidr" : Nothing
  }