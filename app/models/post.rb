class Post < ActiveRecord::Base
  has_one :tag
  has_one :category
end
