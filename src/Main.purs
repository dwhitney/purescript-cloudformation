module Main where

import Prelude

import CloudFormation (Value(..))
import CloudFormation.AWS.S3.Bucket (Bucket(..), bucket)
import CloudFormation.Resource (writeTemplate)
import Data.Maybe (Maybe(..))
import Data.Newtype (over)
import Effect (Effect)
import Effect.Console as Console

main :: Effect Unit
main = do 
  Console.log $ writeTemplate resources
  where
    resources :: { "MyTestBucket" :: Bucket }
    resources = 
      { "MyTestBucket" : testBucket
      }
    testBucket :: Bucket
    testBucket = bucket #
      over Bucket _ { "BucketName" = Just $ Value "neda-dustin-sloane-vivian-test-bucket" }
     