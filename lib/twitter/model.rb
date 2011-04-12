module Twitter
  module Model
    
    class TwitterModel
      include Mongoid::Document
      field :search_term
      field :account_name
    end
  
  end
end