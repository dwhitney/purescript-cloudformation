module CloudFormation.AWS.DirectoryService.MicrosoftAD where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DirectoryService::MicrosoftAD`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html
-- |
-- | - `CreateAlias`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-createalias
-- | - `Edition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-edition
-- | - `EnableSso`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-enablesso
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-name
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-password
-- | - `ShortName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-shortname
-- | - `VpcSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-directoryservice-microsoftad.html#cfn-directoryservice-microsoftad-vpcsettings
newtype MicrosoftAD = MicrosoftAD
  { "Name" :: String
  , "Password" :: String
  , "VpcSettings" :: VpcSettings
  , "CreateAlias" :: Maybe Boolean
  , "Edition" :: Maybe String
  , "EnableSso" :: Maybe Boolean
  , "ShortName" :: Maybe String
  }

derive instance newtypeMicrosoftAD :: Newtype MicrosoftAD _
instance resourceMicrosoftAD :: Resource MicrosoftAD where type_ _ = "AWS::DirectoryService::MicrosoftAD"

microsoftAD :: { "Name" :: String, "Password" :: String, "VpcSettings" :: VpcSettings } -> MicrosoftAD
microsoftAD required = MicrosoftAD
  (merge required
    { "CreateAlias" : Nothing
    , "Edition" : Nothing
    , "EnableSso" : Nothing
    , "ShortName" : Nothing
    })

-- | `AWS::DirectoryService::MicrosoftAD.VpcSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html
-- |
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-subnetids
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-microsoftad-vpcsettings.html#cfn-directoryservice-microsoftad-vpcsettings-vpcid
type VpcSettings =
  { "SubnetIds" :: Array String
  , "VpcId" :: String
  }

vpcSettings :: { "SubnetIds" :: Array String, "VpcId" :: String } -> VpcSettings
vpcSettings required =
  required