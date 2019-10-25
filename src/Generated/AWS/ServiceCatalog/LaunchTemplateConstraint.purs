module CloudFormation.AWS.ServiceCatalog.LaunchTemplateConstraint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::LaunchTemplateConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-description
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-productid
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchtemplateconstraint.html#cfn-servicecatalog-launchtemplateconstraint-rules
newtype LaunchTemplateConstraint = LaunchTemplateConstraint
  { "PortfolioId" :: Value String
  , "ProductId" :: Value String
  , "Rules" :: Value String
  , "Description" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypeLaunchTemplateConstraint :: Newtype LaunchTemplateConstraint _
derive newtype instance writeLaunchTemplateConstraint :: WriteForeign LaunchTemplateConstraint
instance resourceLaunchTemplateConstraint :: Resource LaunchTemplateConstraint where type_ _ = "AWS::ServiceCatalog::LaunchTemplateConstraint"

launchTemplateConstraint :: { "PortfolioId" :: Value String, "ProductId" :: Value String, "Rules" :: Value String } -> LaunchTemplateConstraint
launchTemplateConstraint required = LaunchTemplateConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })