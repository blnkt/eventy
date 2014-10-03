class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.email = auth['info']['email']
        user.image = auth['info']['image']
        user.token = auth['credentials']['token']
        user.expires_at = Time.at(auth['credentials']['expires_at'])
        user.name = auth['info']['name'] || ""
      end
    end
  end

  def facebook
    @facebook ||= Koala::Facebook::API.new(self.token)
  end

end
