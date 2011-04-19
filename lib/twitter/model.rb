module Twitter
  module Model
    
    class TwitterModel
      include Mongoid::Document
      field :search_term
      field :account_name
      field :priority, type :Integer
      field :area_id, type :Integer
      
      validates_numericality_of :area_id, only_integer :true
      validates_numericality_of :priority, only_integer :true
    end
  
  end
end