module CloudFormation.AWS.ServiceCatalog.StackSetConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ServiceCatalog::StackSetConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-description
-- | - `StackInstanceControl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-stackinstancecontrol
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-productid
-- | - `RegionList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-regionlist
-- | - `AdminRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-adminrole
-- | - `AccountList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-accountlist
-- | - `ExecutionRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-stacksetconstraint.html#cfn-servicecatalog-stacksetconstraint-executionrole
newtype StackSetConstraint = StackSetConstraint
  { "Description" :: String
  , "StackInstanceControl" :: String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "RegionList" :: Array String
  , "AdminRole" :: String
  , "AccountList" :: Array String
  , "ExecutionRole" :: String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypeStackSetConstraint :: Newtype StackSetConstraint _
instance resourceStackSetConstraint :: Resource StackSetConstraint where type_ _ = "AWS::ServiceCatalog::StackSetConstraint"

stackSetConstraint :: { "Description" :: String, "StackInstanceControl" :: String, "PortfolioId" :: String, "ProductId" :: String, "RegionList" :: Array String, "AdminRole" :: String, "AccountList" :: Array String, "ExecutionRole" :: String } -> StackSetConstraint
stackSetConstraint required = StackSetConstraint
  (merge required
    { "AcceptLanguage" : Nothing
    })