module CloudFormation.AWS.ServiceCatalog.LaunchRoleConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::LaunchRoleConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-description
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-productid
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html#cfn-servicecatalog-launchroleconstraint-rolearn
newtype LaunchRoleConstraint = LaunchRoleConstraint
  { "PortfolioId" :: String
  , "ProductId" :: String
  , "RoleArn" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypeLaunchRoleConstraint :: Newtype LaunchRoleConstraint _
instance resourceLaunchRoleConstraint :: Resource LaunchRoleConstraint where type_ _ = "AWS::ServiceCatalog::LaunchRoleConstraint"

launchRoleConstraint :: { "PortfolioId" :: String, "ProductId" :: String, "RoleArn" :: String } -> LaunchRoleConstraint
launchRoleConstraint required = LaunchRoleConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })