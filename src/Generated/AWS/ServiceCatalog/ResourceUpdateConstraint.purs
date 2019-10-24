module CloudFormation.AWS.ServiceCatalog.ResourceUpdateConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "TagUpdateOnProvisionedProduct" :: String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypeResourceUpdateConstraint :: Newtype ResourceUpdateConstraint _
instance resourceResourceUpdateConstraint :: Resource ResourceUpdateConstraint where type_ _ = "AWS::ServiceCatalog::ResourceUpdateConstraint"

resourceUpdateConstraint :: { "TagUpdateOnProvisionedProduct" :: String, "PortfolioId" :: String, "ProductId" :: String } -> ResourceUpdateConstraint
resourceUpdateConstraint required = ResourceUpdateConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })