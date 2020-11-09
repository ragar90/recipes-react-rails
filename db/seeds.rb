# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



if Recipe.count == 0
  puts "Generating Recipes data"
  creds = {
    space: 'kk2bw5ojx476',
    access_token: '7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c',
    environment: 'master'
  }
  client = Contentful::Client.new(creds)
  recipes = client.entries(content_type: 'recipe')
  puts "Processing #{recipes.size}"
  failed_recipes = []
  recipes.each do |recipe|
    fields = recipe.fields
    chef = if(fields[:chef].present?)
      chef_fields = fields[:chef].fields
      existent_chef = Chef.where(name: chef_fields[:name]).first
      existent_chef.present? ? existent_chef : Chef.create(chef_fields)
    else
      nil
    end
  
    tags = if(fields[:tags].present?)
      fields[:tags].map do |tag_content|
        tag_fields = tag_content.fields
        existent_tag = Tag.where(name: tag_fields[:name]).first
        existent_tag.present? ? existent_tag : Tag.new(tag_fields)
      end
    else
      []
    end
    fields.delete(:chef)
    fields.delete(:tags)
    fields[:image] = fields[:photo].url
    fields.delete(:photo)
    recipe = Recipe.new(fields)
    recipe.chef = chef if chef.present?
    recipe.tags << tags
    unless recipe.save
      failed_recipes.push(recipe)
    end
  end
  error_messages = failed_recipes.map{|failed| "#{failed.title} =>\n #{failed.errors.messages.map { |k, v| "#{k.to_s.titleize}: #{v[0].humanize}"}.join("\n")}"}.join("\n")
  puts error_messages
else
  puts "Tags already generated"
end
