# Use this generator like this:
# rails g twitter_config

class TwitterConfigGenerator < Rails::Generators::Base

  def generate_scaffold
    generate("scaffold", "twitter_config search_term:string account_name:string priority:integer area_id:integer")
  end

end