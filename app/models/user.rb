class User < ActiveRecord::Base
  has_many :microposts
  def self.search(query)
    where("email like ?", "%#{query}%") 
  end
end
