{-# LANGUAGE OverloadedStrings #-}
module TestHttpSpec (specHttp) where

import Test.Hspec 
import TestContainers.Docker qualified as TC
import TestContainers.Hspec qualified as TC
import Network.HTTP.Simple


containers :: TC.TestContainer Int
containers = do
  tc <-
    TC.run
      ( TC.containerRequest
          (TC.fromBuildContext "./test-integration" (Just "./test-integration/test-server/Dockerfile"))
          TC.& TC.setExpose [8080]
          TC.& TC.setWaitingFor (TC.waitUntilMappedPortReachable 8080)
      )
  pure (TC.containerPort tc 8080)

specHttp :: Spec
specHttp =
  around (TC.withContainers containers) $
    describe "integration test using a mock API" $ do
      it "can successfully HTTP GET the root of the test server" $ \port ->
        do
          request <- parseRequest "GET http://localhost/"
          let request' = setRequestPort port request
          response <- httpBS request'
          getResponseStatusCode response `shouldBe` 200




