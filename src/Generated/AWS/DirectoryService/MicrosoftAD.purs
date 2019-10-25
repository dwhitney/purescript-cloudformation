module CloudFormation.AWS.DirectoryService.MicrosoftAD where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Name" :: Value String
  , "Password" :: Value String
  , "VpcSettings" :: Value VpcSettings
  , "CreateAlias" :: Maybe (Value Boolean)
  , "Edition" :: Maybe (Value String)
  , "EnableSso" :: Maybe (Value Boolean)
  , "ShortName" :: Maybe (Value String)
  }

derive instance newtypeMicrosoftAD :: Newtype MicrosoftAD _
derive newtype instance writeMicrosoftAD :: WriteForeign MicrosoftAD
instance resourceMicrosoftAD :: Resource MicrosoftAD where type_ _ = "AWS::DirectoryService::MicrosoftAD"

microsoftAD :: { "Name" :: Value String, "Password" :: Value String, "VpcSettings" :: Value VpcSettings } -> MicrosoftAD
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
  { "SubnetIds" :: Value (Array String)
  , "VpcId" :: Value String
  }

vpcSettings :: { "SubnetIds" :: Value (Array String), "VpcId" :: Value String } -> VpcSettings
vpcSettings required =
  required