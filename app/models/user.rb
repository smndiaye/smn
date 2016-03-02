class User < ActiveRecord::Base
  has_many :microposts
  def self.search(search)
    #where("name LIKE '%#{search}%'")  #not safe
  end
  has_secure_password
end
