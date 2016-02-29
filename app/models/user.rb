class User < ActiveRecord::Base
  has_many :microposts
  def self.search(search)
    where("name ILIKE ?", "%#{search}%") 
  end
end
