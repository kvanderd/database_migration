

namespace :db do
  desc "move data form article table to post, category and tag table"
  task :move => :environment do
    puts "moving data from article table in sweet_articles-master_development to tables in post, category and tag"
    #establish a connection 
    
    Article.find_each do | article_attribute |
      Post.new do | post_attribute |
       post_attribute.title = article_attribute.title
       post_attribute.description = article_attribute.description
       post_attribute.url = article_attribute.url
       post_attribute.save
     end
     Tag.new do |tag_attribute|
      tag_attribute.tag = article_attribute.tags
      tag_attribute.post_id = article_attribute.id
      tag_attribute.save
    end
    Category.new do |category_attribute|
      category_attribute.category = article_attribute.category
      category_attribute.post_id = article_attribute.id
      category_attribute.save
    end
  end
end
end








