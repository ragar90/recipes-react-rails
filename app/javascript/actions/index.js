import * as t from './actionTypes';

// export const fetchRecipes = () => async (dispatch, getState) => {
//   try {
//     const URL = '/api/recipes'
//     const response = await fetch(URL, {
//       method: 'POST',
//       headers: {
//         Accept: 'application/json',
//         'Content-Type': 'application/json'
//       }
//     });
//     if(response.ok){
//       dispatch({ type: t.FETCH_RECIPES, payload: response.recipes });
//     }
//   } catch (error) {
    
//   }
// }
export const fetchRecipes = () => {
  console.log("Fetching Recipes....")
}
