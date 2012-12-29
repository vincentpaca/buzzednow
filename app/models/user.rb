class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :image_url, :last_name, :link, :provider, :uid, :verified

  has_many :reservations

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.image_url = auth["info"]["image"]
      user.link = "http://www.facebook.com/#{auth['uid']}"
      user.verified = auth["info"]["verified"]
    end
  end
end
