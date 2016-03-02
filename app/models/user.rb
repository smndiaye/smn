class User < ActiveRecord::Base
  has_many :microposts
  def self.search(search)
    #where("name LIKE ?", "%#{search}%") #safe
    #find(:all, :conditions => ['name LIKE ?', "%#{search}%"])#safe
    #where("name LIKE '%#{search}%'")  #not safe
    #delete_all("name = #{search}")
    #query = params[:search]
    #find(:all, :conditions => "name LIKE '%#{search}%'")  #not safe
  end
end
