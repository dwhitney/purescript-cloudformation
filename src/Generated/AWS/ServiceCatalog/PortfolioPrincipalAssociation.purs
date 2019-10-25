module CloudFormation.AWS.ServiceCatalog.PortfolioPrincipalAssociation where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::PortfolioPrincipalAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html
-- |
-- | - `PrincipalARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principalarn
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-portfolioid
-- | - `PrincipalType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-portfolioprincipalassociation.html#cfn-servicecatalog-portfolioprincipalassociation-principaltype
newtype PortfolioPrincipalAssociation = PortfolioPrincipalAssociation
  { "PrincipalARN" :: Value String
  , "PortfolioId" :: Value String
  , "PrincipalType" :: Value String
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypePortfolioPrincipalAssociation :: Newtype PortfolioPrincipalAssociation _
derive newtype instance writePortfolioPrincipalAssociation :: WriteForeign PortfolioPrincipalAssociation
instance resourcePortfolioPrincipalAssociation :: Resource PortfolioPrincipalAssociation where type_ _ = "AWS::ServiceCatalog::PortfolioPrincipalAssociation"

portfolioPrincipalAssociation :: { "PrincipalARN" :: Value String, "PortfolioId" :: Value String, "PrincipalType" :: Value String } -> PortfolioPrincipalAssociation
portfolioPrincipalAssociation required = PortfolioPrincipalAssociation
  (merge required
    { "AcceptLanguage" : Nothing
    })