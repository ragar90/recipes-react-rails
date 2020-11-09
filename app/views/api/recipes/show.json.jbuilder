json.recipe do
  if @recipe.present?
    json.title @recipe.title
    json.image @recipe.image
    json.description @recipe.description
    json.tags @recipe.tags do |tag|
      json.name tag.name
    end
    if @recipe.chef.present?
      json.chef do
        json.name @recipe.chef.name
      end
    else
      json.chef nil
    end
  end
end