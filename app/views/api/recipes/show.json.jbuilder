json.recipe do
  if @recipe.present?
    json.title @recipe.title
    json.image @recipe.image
    json.description @recipe.description
    json.tags @recipe.tags do |tag|
      json.name tag.name
    end
    json.chef do
      json.name @recipe.chef.name
    end
  end
end