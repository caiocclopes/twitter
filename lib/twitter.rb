require "rubygems"
require "twitter/model"
require "twitter/constants"

##
#Twitter module
##
module Twitter
  class << self
  
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
  # Returns all the twitter configurations stored in the database
  ##
    def getAll
      return Twitter::Model::TwitterModel.all.entries
    end
    
  end
end
