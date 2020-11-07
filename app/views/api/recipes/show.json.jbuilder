json.recipe do
  json.title @recipe.title
  json.image @recipe.image
  json.tags @recipe.tags do |tag|
    json.name tag.name
  end
  json.chef do
    json.name @recipe.chef.name
  end
end