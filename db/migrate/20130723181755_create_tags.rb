class CreateTags < ActiveRecord::Migration
 def change 
   create_table :tags do |t|
      t.string :tag
      t.belongs_to :post
    end
  end
end
