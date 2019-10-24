module CloudFormation where

import Data.Newtype (class Newtype)

newtype Json = Json String
derive instance ntJSON :: Newtype Json _
