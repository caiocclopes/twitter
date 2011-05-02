class TwitterController < ApplicationController
  def getTwitter
    if(params[:area_id] == nil)
      twitter = Twitter.getAll
    else
      twitter = Twitter.getTwitter(params[:area_id].to_i)
    end

    if(twitter != nil)
      if(twitter.entries.count == 1)
        render :text => twitter.entries.first.to_json
      else
        render :text => twitter.entries.to_json
      end
    else
      render :text => {:success => false}.to_json
    end
  end

  def create
    twitter_config = TwitterModel.new
    twitter_config.account_name = params[:account]
    twitter_config.search_term = params[:serach]
    twitter_config.priority = params[:priority].to_i
    twitter_config.area_id = params[:area_id].to_i

    if twitter_config.save
      render :text => {:success => true}.to_json
    else
      render :text => {:success => false}.to_json
    end
  end
end
