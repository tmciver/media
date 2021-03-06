module Main where
 
import Test.Hspec
import Domain.Media
 
main :: IO ()
main = hspec $ do

  describe "Test 'addMediaHandler'" $ do
    it "should return a list containing a single event: MediaWasAdded" $ do
      addMediaHandler path `shouldBe` [MediaWasAdded id path mediaClass]
        where path = "/home/user/media/photo1.jpg"
              id = "d6432bddab5d2ef255a1922ee45f85ac89636ec8"
              mediaClass = Photo
              
