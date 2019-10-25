module CloudFormation.AWS.ServiceCatalog.ResourceUpdateConstraint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::ResourceUpdateConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-description
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-acceptlanguage
-- | - `TagUpdateOnProvisionedProduct`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-tagupdateonprovisionedproduct
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-resourceupdateconstraint.html#cfn-servicecatalog-resourceupdateconstraint-productid
newtype ResourceUpdateConstraint = ResourceUpdateConstraint
  { "TagUpdateOnProvisionedProduct" :: Value String
  , "PortfolioId" :: Value String
  , "ProductId" :: Value String
  , "Description" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypeResourceUpdateConstraint :: Newtype ResourceUpdateConstraint _
derive newtype instance writeResourceUpdateConstraint :: WriteForeign ResourceUpdateConstraint
instance resourceResourceUpdateConstraint :: Resource ResourceUpdateConstraint where type_ _ = "AWS::ServiceCatalog::ResourceUpdateConstraint"

resourceUpdateConstraint :: { "TagUpdateOnProvisionedProduct" :: Value String, "PortfolioId" :: Value String, "ProductId" :: Value String } -> ResourceUpdateConstraint
resourceUpdateConstraint required = ResourceUpdateConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })