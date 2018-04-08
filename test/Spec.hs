module Main where

import Test.Tasty (defaultMain, testGroup, TestTree)
import Test.Tasty.HUnit (testCase, (@?=))

import Server (myFunction)

main :: IO ()
main = defaultMain $ testGroup "App Tests"
  [ appTests
  ]

appTests :: TestTree
appTests = testGroup "countFromGreeting Tests"
  [ testCase "App 1" $ myFunction 2 5 9 @?= 19
  , testCase "App 2" $ myFunction 7 (-3) 13 @?= (-8)
  ]
