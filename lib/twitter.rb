require "rubygems"
require "twitter/model"
require "twitter/constants"

module Twitter
  class << self
    
    def twitterTest
      return "this is the twitter gem speaking..."
    end
    
    def getAccount
      return Twitter::Model::TwitterModel.all
    end
    
  end
end
