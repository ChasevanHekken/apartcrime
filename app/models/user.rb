class User < ActiveRecord::Base

  def self.find_or_create_by_auth(auth_data)
    user = User.where(provider: auth_data['provider'], twitter_id: auth_data['uid']).first_or_create
    if user.first_name != auth_data["info"]["name"]
      user.first_name = auth_data["info"]["name"]
      user.save
    end
    user
  end

end
