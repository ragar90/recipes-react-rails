import React, { Component } from 'react';
import List from './List'
class Recipes extends Component {
  constructor(){
    super()
    this.state = {
      recipes: [
        { name: "Recipe 1", image: "http://blog.heyfoodapp.com/wp-content/uploads/2017/11/slow-cooker-slow-cooking-recipes.jpg"},
        { name: "Recipe 2", image: "https://s-i.huffpost.com/gen/1260013/images/o-EGGPLANT-RECIPES-facebook.jpg"},
        { name: "Recipe 3", image: "https://cookieandkate.com/images/2016/09/20-simple-vegetarian-dinner-recipes.jpg"},
        { name: "Recipe 4", image: "https://www.deliciousmagazine.co.uk/wp-content/uploads/2015/04/513716-1-eng-GB_lamb-shank-recipes.jpg"},
        { name: "Recipe 5", image: "http://i.huffpost.com/gen/1311532/images/o-NECTARINE-RECIPES-facebook.jpg"},
        { name: "Recipe 6", image: "https://www.seriouseats.com/recipes/images/2017/06/20170627-summer-nachos-matt-clifton-1-1500x1125.jpg"},
        { name: "Recipe 7", image: "https://www.everydayhealthyrecipes.com/wp-content/uploads/2018/07/easy-turkey-stuffed-eggplant-recipe-2.jpg"},
        { name: "Recipe 8", image: "https://www.101cookbooks.com/mt-static/images/food/recipes/wfpb-kale-recipes/kale-salad-carrottop-pesto.jpg"},
        { name: "Recipe 9", image: "http://www.simplyrecipes.com/wp-content/uploads/2017/09/2017-10-03-Stromboli-8.jpg"},
        { name: "Recipe 10", image: "https://www.tasteofhome.com/wp-content/uploads/2017/09/Hamburger-Casserole_exps4441_5ING133188C04_18_3bC_RMS.jpg"},
      ]
    }
  }
  render(){
    return (
      <div>
        <List recipes={this.state.recipes} />
      </div>
    )
  }
}
export default Recipes