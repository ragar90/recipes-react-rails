# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = {
  chefs: ["Chef One", "Chef Two", "Chef Three", "Chef Four", "Chef Five", "Chef Six", "Chef Seven","Chef Eight", "Chef Nine", "Chef Ten"],
  tags: ["Tag 1", "Tag 3", "Tag 4", "Tag 5", "Tag 6", "Tag 7", "Tag 8", "Tag 9", "Tag 10", "Tag 11"],
  recipes: [
    { 
      title: "Recipe 1",
      image: "http://blog.heyfoodapp.com/wparamettersmap-content/uploads/2017/11/slow-cooker-slow-cooking-recipes.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 2",
      image: "https://s-i.huffpost.com/gen/1260013/images/o-EGGPLANT-RECIPES-facebook.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 3",
      image: "https://cookieandkate.com/images/2016/09/20-simple-vegetarian-dinner-recipes.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 4",
      image: "https://www.deliciousmagazine.co.uk/wp-content/uploads/2015/04/513716-1-eng-GB_lamb-shank-recipes.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 5",
      image: "http://i.huffpost.com/gen/1311532/images/o-NECTARINE-RECIPES-facebook.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 6",
      image: "https://www.seriouseats.com/recipes/images/2017/06/20170627-summer-nachos-matt-clifton-1-1500x1125.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 7",
      image: "https://www.everydayhealthyrecipes.com/wp-content/uploads/2018/07/easy-turkey-stuffed-eggplant-recipe-2.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 8",
      image: "https://www.101cookbooks.com/mt-static/images/food/recipes/wfpb-kale-recipes/kale-salad-carrottop-pesto.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 9",
      image: "http://www.simplyrecipes.com/wp-content/uploads/2017/09/2017-10-03-Stromboli-8.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    },
    { 
      title: "Recipe 10",
      image: "https://www.tasteofhome.com/wp-content/uploads/2017/09/Hamburger-Casserole_exps4441_5ING133188C04_18_3bC_RMS.jpg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu. Urna nec tincidunt praesent semper feugiat. Luctus venenatis lectus magna fringilla. Varius morbi enim nunc faucibus a pellentesque sit amet porttitor. Feugiat sed lectus vestibulum mattis ullamcorper. Tincidunt vitae semper quis lectus nulla at volutpat. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Cursus eget nunc scelerisque viverra. Enim ut sem viverra aliquet eget. Duis at tellus at urna condimentum mattis. Faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Nibh tortor id aliquet lectus proin nibh nisl. Massa massa ultricies mi quis hendrerit dolor. Lectus arcu bibendum at varius vel pharetra vel turpis. Elementum integer enim neque volutpat ac tincidunt."
    }
  ]
}

if Chef.count == 0
  puts "Generating Chefs data"
  data[:chefs].each do |chef_name|
    Chef.create(name: chef_name)
  end
else
  puts "Chefs already generated"
end

if Tag.count == 0
  puts "Generating Tags data"
  data[:tags].each do |tag_name|
    Tag.create(name: tag_name)
  end
else
  puts "Tags already generated"
end



if Recipe.count == 0
  puts "Generating Recipes data"
  data[:recipes].each do |recipe_attr|
    r = Recipe.new(recipe_attr)
    tags = Tag.all.order("RANDOM()").limit 2
    chef = Chef.all.order("RANDOM()").limit(1).first
    r.tags << tags
    r.chef = chef
    r.save
  end
else
  puts "Tags already generated"
end
