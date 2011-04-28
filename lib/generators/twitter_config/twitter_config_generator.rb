# Use this generator like this:
# rails g twitter_config

class TwitterConfigGenerator < Rails::Generators::Base

  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def generate_scaffold
    generate("scaffold", "twitter_config search_term:string account_name:string priority:integer area_id:integer")
    remove_file "./app/models/twitter_config.rb"
    template "twitter_config_model.rb", "./app/models/twitter_config.rb"
    template "twitter_config_iPhone.rb", "./app/controllers/twitter_controller.rb"
  end

end