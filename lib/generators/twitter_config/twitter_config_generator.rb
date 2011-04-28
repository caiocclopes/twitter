# Use this generator like this:
# rails g twitter_config

class TwitterConfigGenerator < Rails::Generators::Base

  def generate_scaffold
    generate("scaffold", "twitter_config search_term:string account_name:string priority:integer area_id:integer")
    remove_file "/app/models/twitter_config.rb"
    copy_file "twitter_config_model", "/app/models/twitter_config.rb"
    copy_file "twitter_config_iPhone", "/app/controllers/twitter_controller.rb"
  end

end