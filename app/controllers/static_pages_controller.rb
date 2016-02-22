class StaticPagesController < ApplicationController
  def home
    @time = Time.now.inspect
  end

  def help
  end
  
  def about
  end
end
