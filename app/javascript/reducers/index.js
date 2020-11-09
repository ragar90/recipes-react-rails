import {FETCH_RECIPES, FETCH_RECIPE} from '../action_types'
import _ from 'lodash'
const initialState = {
  loadedRecipe: null,
  recipes: [],
  page: 0
}

function reducer(state = initialState, action) {
  switch(action.type) {
    case FETCH_RECIPES:
      const {loadedRecipes, requestPage} = action.payload
      console.log(`state.recipes=>`, state.recipes)
      const recipies = loadedRecipes === null || loadedRecipes.length === 0 ? state.recipes : _.concat(state.recipes, loadedRecipes)
      console.log(`recipies=> `, recipies)
      return {
        ...state,
        recipes: recipies,
        page: requestPage
      };
    case FETCH_RECIPE:
      const {loadedRecipe} = action.payload
      return  {
        ...state,
        loadedRecipe: loadedRecipe
      };
    default:
      return state;
    }
  }
  export default reducer;