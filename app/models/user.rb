class User < ActiveRecord::Base
  has_many :projects

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.image = auth["info"]["image"]
      user.nickname = auth["info"]["nickname"]
    end
  end
  
  def large_image
    self.image+("&s=240")
  end
  
  
end
