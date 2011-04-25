module Twitter
  module Model
    
    class TwitterModel
      include Mongoid::Document
      field :search_term
      field :account_name
      field :priority, type: Integer
      field :area_id, type: Integer
    end
  
  end
end