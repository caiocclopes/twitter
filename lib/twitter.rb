require 'rubygems'
require 'mongoid'

module Twitter
  
  def PluginTest
    puts "this is the twitter gem!"
  end
  
  class TwitterModel
    include Mongoid::Document
    field :search_term
    field :account
  end
  
end
