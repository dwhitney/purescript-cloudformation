module CloudFormation.Alexa.ASK.Skill where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type Skill =
  { "AuthenticationConfiguration" :: AuthenticationConfiguration
  , "VendorId" :: String
  , "SkillPackage" :: SkillPackage
  }

skill :: { "AuthenticationConfiguration" :: AuthenticationConfiguration, "VendorId" :: String, "SkillPackage" :: SkillPackage } -> Skill
skill required =
  required

type Overrides =
  { "Manifest" :: Maybe Foreign
  }

overrides :: Overrides
overrides =
  { "Manifest" : Nothing
  }

type AuthenticationConfiguration =
  { "RefreshToken" :: String
  , "ClientSecret" :: String
  , "ClientId" :: String
  }

authenticationConfiguration :: { "RefreshToken" :: String, "ClientSecret" :: String, "ClientId" :: String } -> AuthenticationConfiguration
authenticationConfiguration required =
  required

type SkillPackage =
  { "S3Bucket" :: String
  , "S3Key" :: String
  , "S3BucketRole" :: Maybe String
  , "S3ObjectVersion" :: Maybe String
  , "Overrides" :: Maybe Overrides
  }

skillPackage :: { "S3Bucket" :: String, "S3Key" :: String } -> SkillPackage
skillPackage required =
  merge required
    { "S3BucketRole" : Nothing
    , "S3ObjectVersion" : Nothing
    , "Overrides" : Nothing
    }