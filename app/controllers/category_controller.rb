class CategoryController < ApplicationController

  def index
    @category = Category.all
    @result = @category.each{ |e| e.post.title }.group_by(&:category)
  end

  
end
