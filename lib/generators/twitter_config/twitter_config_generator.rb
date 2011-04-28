# Use this generator like this:
# rails g twitter_config

class TwitterConfigGenerator < Rails::Generators::Base

  def generate_scaffold
    generate("scaffold", "twitter_config search_term:string account_name:string priority:integer area_id:integer")
    remove_file "/app/models/twitter_config.rb"
    create_file "/app/models/twitter_config.rb", "class TwitterConfig < Twitter::Model::TwitterModel
                ##Place any application specific fields in here
                #example: field :name, type: String
                end"
  end

end