module CloudFormation.AWS.SES.ConfigurationSet where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SES::ConfigurationSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationset.html#cfn-ses-configurationset-name
newtype ConfigurationSet = ConfigurationSet
  { "Name" :: Maybe String
  }

derive instance newtypeConfigurationSet :: Newtype ConfigurationSet _
instance resourceConfigurationSet :: Resource ConfigurationSet where type_ _ = "AWS::SES::ConfigurationSet"

configurationSet :: ConfigurationSet
configurationSet = ConfigurationSet
  { "Name" : Nothing
  }