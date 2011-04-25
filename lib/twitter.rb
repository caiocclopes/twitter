require "rubygems"
require "twitter/model"
require "twitter/constants"

##
#Twitter module
##
module Twitter
  class << self
  
  ##
  # Test method, does not do anything usefull
  ##  
    def twitterTest
      return "this is the twitter gem speaking..."
    end
  
  ##
  # Returns the twitter config for a given area
  ##
    def getTwitter (area)
      if(area.is_a? Numeric)
        return Twitter::Model::TwitterModel.where(area_id: area)
      else
        return nil
      end
    end
    
  ##
  # Returns the twitter config when no area is defined
  ##
  # def getTwitter
  #   return Twitter::Model::TwitterModel.first
  # end
    
  #end
end
