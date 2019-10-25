module CloudFormation.AWS.ServiceCatalog.StackSetConstraint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Value String
  , "StackInstanceControl" :: Value String
  , "PortfolioId" :: Value String
  , "ProductId" :: Value String
  , "RegionList" :: Value (Array String)
  , "AdminRole" :: Value String
  , "AccountList" :: Value (Array String)
  , "ExecutionRole" :: Value String
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypeStackSetConstraint :: Newtype StackSetConstraint _
derive newtype instance writeStackSetConstraint :: WriteForeign StackSetConstraint
instance resourceStackSetConstraint :: Resource StackSetConstraint where type_ _ = "AWS::ServiceCatalog::StackSetConstraint"

stackSetConstraint :: { "Description" :: Value String, "StackInstanceControl" :: Value String, "PortfolioId" :: Value String, "ProductId" :: Value String, "RegionList" :: Value (Array String), "AdminRole" :: Value String, "AccountList" :: Value (Array String), "ExecutionRole" :: Value String } -> StackSetConstraint
stackSetConstraint required = StackSetConstraint
  (merge required
    { "AcceptLanguage" : Nothing
    })